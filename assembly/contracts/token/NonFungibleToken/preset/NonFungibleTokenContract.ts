import { ContractPromiseBatch, PersistentMap, u128, context, PersistentSet, PersistentUnorderedMap, PersistentVector, ContractPromise, logging } from "near-sdk-as";
import { AccountId, TokenId } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import {  INEP171, INEP177, INEP181 } from "../Interfaces";
import { NFTContractMetadata, NFTtokenMetadata, Token } from "../utils";


@nearBindgen
export class NonFungibleTokenContract extends Context implements INEP171, INEP177, INEP181{

  private owner_id: string;
  private metadata: NFTContractMetadata;

  // keeps track of all the token IDs for a given account
  private tokens_per_owner: PersistentUnorderedMap<AccountId, PersistentVector<Token>>=new PersistentUnorderedMap<AccountId, PersistentVector<Token>>('o');

  // keeps track of the token struct for a given token ID
  private tokens_by_id: PersistentUnorderedMap<TokenId, Token>=new PersistentUnorderedMap<TokenId, Token>('i');

  constructor(name: string, symbol: string, icon: string="", base_uri: string="", reference: string="", reference_hash: string=""){
    super();
    this.owner_id=super._msgSender();
    this.metadata=new NFTContractMetadata("nft-1.0.0", name, symbol, icon, base_uri, reference, reference_hash);
  }
  
  public nft_transfer(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null): void {
    // this._transfer(receiver_id, token_id, approval_id, memo);
  }

  /* 
// Internal functions extracted from "NEAR/core-contracts/nft-simple/src/internal.rs"
export function internal_add_token_to_owner(account_id: AccountId, token_id: TokenId): void {
  const token_set = TokensPerOwner.get(account_id, new Set<string>())!;
  // logging.log("else TokensPerOwner.get(account_id)")
  token_set.add(token_id);
  TokensPerOwner.set(account_id, token_set);
}

public internal_remove_token_from_owner(account_id: AccountId, token_id: TokenId): void {
  const token_set = TokensPerOwner.get(account_id);
  if(!(token_set)) {
    TokensPerOwner.delete(account_id);
  } else {
    TokensPerOwner.set(account_id, token_set);
  }
}
 */
  public nft_transfer_call(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null, msg: string): ContractPromise{  
    const sender_id = super._msgSender();
    // To define how to use memo inside _transfer
    /* this._transfer( sender_id, receiver_id, amount);
    
    ContractPromise
      .create<NFTT_CALL>( receiver_id, "ft_on_transfer", { sender_id, amount, msg }, XCC_GAS )
      .then<NFTT_CALLBACK>( context.contractName, "ft_resolve_transfer", { sender_id, receiver_id, amount }, XCC_RESOLVE_GAS )
      .returnAsResult(); */
    return new ContractPromise();
  }

  nft_token(token_id: string): Token | null {
    throw new Error("Method not implemented.");
  }

  public nft_resolve_transfer(owner_id: string, receiver_id: string, token_id: string, approved_account_ids: Map<string, number> | null): boolean {
    return false;
  }

  public nft_tokens(from_index: u128=u128.Zero, pLimit: u128=u128.Zero): Array<Token> {
    const limit:u128=pLimit==u128.Zero?new u128(50):pLimit;
    const res: Token[]=this.tokens_by_id.values(from_index.toI32(), limit.toI32());
    return res;
  }

  public nft_supply_for_owner(account_id: string): number {
    let tokens_for_owner_set: PersistentVector<Token>|null = this.tokens_per_owner.get(account_id);
    return tokens_for_owner_set?tokens_for_owner_set.length:0;
  }

  public nft_metadata(): NFTContractMetadata {
    return this.metadata;
  }
  
  public nft_mint( receiver_id: AccountId, token_id: TokenId, metadata: NFTtokenMetadata ): void{
    // const initial_storage_usage:u128 = u128.from(context.storageUsage);
    const token = new Token(token_id, receiver_id, metadata);
    // assert(!this.tokens_by_id.contains(token_id), "Token already exists" );
    this.tokens_by_id.set(token_id, token);
    this._addTokenToOwner(receiver_id, token);
    // const required_storage:u128 = u128.sub( u128.from(context.storageUsage), initial_storage_usage);
    // this.refund_deposit(required_storage);
  }

  private _addTokenToOwner(receiver_id: AccountId, token:Token):void{
    const tokenByOwner:PersistentVector<Token>|null=this.tokens_per_owner.get(receiver_id);
    let newTokenByOwner:PersistentVector<Token>=tokenByOwner?tokenByOwner:new PersistentVector<Token>('tbo'+receiver_id);
    newTokenByOwner.push(token);
    this.tokens_per_owner.set(receiver_id, newTokenByOwner);
  }

  public refund_deposit(required_storage: u128):void{
    // get how much it would cost to store the information
    // TODO fixare solo questo!
    // get the attached deposit
    let attached_deposit:u128 = context.attachedDeposit;

    // make sure that the attached deposit is greater than or equal to the required cost
    assert( required_storage <= attached_deposit, "Must attach "+required_storage.toString()+" yoctoNEAR to cover storage" );

    // get the refund amount from the attached deposit - required cost
    const refund:u128 = u128.sub( attached_deposit, required_storage);

    // if the refund is greater than 1 yocto NEAR, we refund the predecessor that amount
    if(refund > u128.One){
      this.sendNear(context.predecessor, refund);
    }
  }

  protected sendNear(recipient: AccountId, amount: u128): void {
    ContractPromiseBatch.create(recipient).transfer(amount);
  }

  // Query for all the tokens for an owner
  public nft_tokens_for_owner( account_id: AccountId, from_index: u128|null=u128.Zero, limit: u128|null=new u128(50) ): Array<Token>{
    // get the set of tokens for the passed in owner
    let tokens_for_owner_set: PersistentVector<Token>|null = this.tokens_per_owner.get(account_id);
    // if there is some set of tokens, we'll set the tokens variable equal to that set
    let tokens: PersistentVector<Token> = tokens_for_owner_set?tokens_for_owner_set:new PersistentVector<Token>('');
    // qui manca il limite da....a....
    return this._deserialize_token_array(tokens);
  }

  private _deserialize_token_array(res: PersistentVector<Token>): Array<Token>{
    let result: Array<Token>=new Array<Token>();
    for(let i = 0; i < res.length; i++) {
      result[i] = res[i];
    }
    return result;
  }

  public nft_total_supply(): number {
    return this.tokens_by_id.length;
  }
}