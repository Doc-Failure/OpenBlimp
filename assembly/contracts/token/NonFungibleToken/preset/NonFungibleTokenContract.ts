import { ContractPromiseBatch, PersistentMap, u128, context, PersistentSet, PersistentUnorderedMap} from "near-sdk-as";
import { AccountId, TokenId } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import {  INEP177 } from "../Interfaces";
import { NFTContractMetadata, NFTMetadata, Token } from "../utils";


@nearBindgen
export class NonFungibleTokenContract extends Context implements INEP177{

  public owner_id: string;
  public metadata: NFTContractMetadata;

  // keeps track of all the token IDs for a given account
  public tokens_per_owner: PersistentMap<AccountId, PersistentSet<TokenId>>;

  // keeps track of the token struct for a given token ID
  public tokens_by_id: PersistentMap<TokenId, Token>;

  // keeps track of the token metadata for a given token ID
  public token_metadata_by_id: PersistentUnorderedMap<TokenId, NFTMetadata>;

  /*  private metadata: NonFungibleTokenContractMetadata; */

  constructor(name: string, symbol: string, icon: string="", base_uri: string="", reference: string="", reference_hash: string=""){
    super();
    this.tokens_per_owner=new PersistentMap<AccountId, PersistentSet<TokenId>>('o');
    this.tokens_by_id=new PersistentMap<TokenId, Token>('i');
    this.token_metadata_by_id=new  PersistentUnorderedMap<TokenId, NFTMetadata>('m');
    this.owner_id=super._msgSender();
    this.metadata=new NFTContractMetadata("nft-1.0.0", name, symbol, icon, base_uri, reference, reference_hash);
  }

  public nft_metadata(): NFTContractMetadata {
    return this.metadata;
  }

  public nft_mint( token_id: TokenId, metadata: NFTMetadata, receiver_id: AccountId): void{
    const initial_storage_usage:u128 = u128.from(context.storageUsage);
    const token = new Token(receiver_id);
    assert(!this.tokens_by_id.contains(token_id), "Token already exists" );
    this.tokens_by_id.set(token_id, token);
    this.token_metadata_by_id.set(token_id, metadata);
    this._addTokenToOwner(receiver_id, token_id);
    const required_storage:u128 = u128.sub( u128.from(context.storageUsage), initial_storage_usage);
    this.refund_deposit(required_storage);
    return;
  }

  private _addTokenToOwner(receiver_id: AccountId, token_id:TokenId):void{
    const tokenByOwner:PersistentSet<TokenId>|null=this.tokens_per_owner.get(receiver_id);
    let newTokenByOwner:PersistentSet<TokenId>=tokenByOwner?tokenByOwner:new PersistentSet<TokenId>('tbo'+receiver_id);
    newTokenByOwner.add(token_id);
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

  public nft_resolve_transfer(owner_id: string, receiver_id: string, token_id: string, approved_account_ids: Map<string, number> | null): boolean {
    return false;
  }


  protected sendNear(recipient: AccountId, amount: u128): void {
    ContractPromiseBatch.create(recipient).transfer(amount);
  }


  // Query for all the tokens for an owner
  public nft_tokens_for_owner( account_id: AccountId, from_index: u128|null=u128.Zero, limit: u128|null=u128.Max ): Array<string>{
    // get the set of tokens for the passed in owner
    let tokens_for_owner_set = this.tokens_per_owner.get(account_id);
    // if there is some set of tokens, we'll set the tokens variable equal to that set
    let tokens = tokens_for_owner_set?tokens_for_owner_set:[];
    // console.log(tokens.toString());
    // JsonToken
    // iterate through the keys vector
    /*  tokens.iter()
          //skip to the index we specified in the start variable
          .skip(start as usize) 
          //take the first "limit" elements in the vector. If we didn't specify a limit, use 50
          .take(limit.unwrap_or(50) as usize) 
          //we'll map the token IDs which are strings into Json Tokens
          .map(|token_id| self.nft_token(token_id.clone()).unwrap())
          //since we turned the keys into an iterator, we need to turn it back into a vector to return
          .collect() */
    return new Array();
  }

  // ATM we always consider registration_only to be true
  /*   public storage_deposit(account_id: AccountId = context.predecessor, registration_only: boolean = true): FungibleTokenStorageBalance {
    const storange_bound:FungibleTokenStorageBalanceBounds = this.storage_balance_bounds();
    const min_bound:u128 = storange_bound.min;

    assert(u128.from(context.attachedDeposit) >= min_bound, "Deposit too low to pay registration fee");

    const balance:FungibleTokenStorageBalance = this.storage_balance_of(account_id);
    if (balance.total > u128.Zero) {
      logging.log("The account is already registered, refunding the deposit");
      this.sendNear(context.predecessor, context.attachedDeposit);
      return balance;
    } */

  /*  public nft_token(token_id: string): NonFungibleToken | null {
    return this;
  } */
  /* 
  public nft_transfer_call(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null, msg: string): ContractPromise { */
  /* 
    const sender_id = super._msgSender();
    // To define how to use memo inside _transfer
    this._transfer( sender_id, receiver_id, amount);
    
    ContractPromise
      .create<FTT_CALL>( receiver_id, "ft_on_transfer", { sender_id, amount, msg }, XCC_GAS )
      .then<FTT_CALLBACK>( context.contractName, "ft_resolve_transfer", { sender_id, receiver_id, amount }, XCC_RESOLVE_GAS )
      .returnAsResult(); */
  /*    return new ContractPromise();
  } */

  /*   public nft_transfer(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null): void {
    return;
  } */

}