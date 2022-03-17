import { ContractPromise, ContractPromiseBatch, PersistentMap, u128, context, logging, PersistentSet, PersistentUnorderedMap} from "near-sdk-as";
import { AccountId, Balance, TokenId } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import { INEP171, INEP177 } from "../Interfaces";
import { XCC_GAS, XCC_RESOLVE_GAS} from "../../../utils/utils";
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

  constructor(name: string, symbol: string, icon: string|null, base_uri: string|null, reference: string|null, reference_hash: string|null){
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
    const initial_storage_usage:u64 = context.storageUsage;
    const token = new Token(receiver_id);
    assert(!this.tokens_by_id.contains(token_id), "Token already exists" );
    this.tokens_by_id.set(token_id, token);
    this.token_metadata_by_id.set(token_id, metadata);
    const tokenByOwner:PersistentSet<TokenId>|null=this.tokens_per_owner.get(receiver_id);
    let newTokenByOwner:PersistentSet<TokenId>=tokenByOwner?tokenByOwner:new PersistentSet<TokenId>('tbo'+receiver_id);
    newTokenByOwner.add(token_id);
    this.tokens_per_owner.set(receiver_id, newTokenByOwner);
    let required_storage_in_bytes:u64  = context.storageUsage - initial_storage_usage;
    return;
  }

  public nft_resolve_transfer(owner_id: string, receiver_id: string, token_id: string, approved_account_ids: Map<string, number> | null): boolean {
    return false;
  }


  protected sendNear(recipient: AccountId, amount: u128): void {
    ContractPromiseBatch.create(recipient).transfer(amount);
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

/*   public refund_deposit(storage_used: u64) {
    //get how much it would cost to store the information
    let required_cost =  * Balance::from(storage_used);
    //get the attached deposit
    let attached_deposit = env::attached_deposit();

    //make sure that the attached deposit is greater than or equal to the required cost
    assert!(
        required_cost <= attached_deposit,
        "Must attach {} yoctoNEAR to cover storage",
        required_cost,
    );

    //get the refund amount from the attached deposit - required cost
    let refund = attached_deposit - required_cost;

    //if the refund is greater than 1 yocto NEAR, we refund the predecessor that amount
    if refund > 1 {
        Promise::new(env::predecessor_account_id()).transfer(refund);
    }
  } */
}