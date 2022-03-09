import { ContractPromise, ContractPromiseBatch, PersistentMap, u128, context, logging, storage} from "near-sdk-as";
import { Balance } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import { INEP141, INEP145, INEP148 } from "../Interfaces";
import { FungibleTokenMetadata, XCC_GAS, XCC_RESOLVE_GAS, FungibleTokenStorageBalance, FungibleTokenStorageBalanceBounds } from "../utils";

// TODO
@nearBindgen
export class FTT_CALL {
  sender_id: string;
  amount: u128;
  msg: string;
}

@nearBindgen
export class FTT_CALLBACK {
  sender_id: string;
  receiver_id: string;
  amount: u128;
}


@nearBindgen
export class FungibleToken extends Context implements INEP141, INEP145, INEP148{
  private _balances:PersistentMap<string, Balance>  = new PersistentMap<string, Balance>("balancesMap"); 

  // TODO - DOES IT WORK???
  private _allowances:PersistentMap<string, PersistentMap<string, u128>>  = new PersistentMap<string, PersistentMap<string, u128>> ("allowancesMap"); 


  private _storageRegistry:PersistentMap<string, FungibleTokenStorageBalance> = new PersistentMap<string, FungibleTokenStorageBalance>('s');
  /* public accounts:PersistentMap<AccountId, Balance> = new PersistentMap<string, u128>("accountMap"); */
  private total_supply:u128;
  private owner_id:string;
  private metadata: FungibleTokenMetadata;

  // , icon: string|null, reference: string|null, reference_hash:string|null
  constructor(name:string, symbol: string, decimals: u8, icon:string, reference:string, reference_hash:string){
    super();
    this.metadata={ name:name, symbol:symbol, decimals:decimals, spec:"vt1.0.0", icon:icon, reference:reference, reference_hash:reference_hash };
    this.total_supply=u128.Zero;
  }

  public ft_metadata(): FungibleTokenMetadata {
    return this.metadata;
  }

  public ft_total_supply():u128{
    return this.total_supply;
  }

  public ft_balance_of(account: string): u128{
    const balance : u128 | null = this._balances.get(account);
    const res:u128 = balance ? balance : u128.Zero;
    return res;
  }

  private balanceOf(account: string): u128{
    const res : u128 | null = this._balances.get(account);
    return res ? res : u128.Zero;
  }

  public ft_transfer(receiver_id: string, amount: u128, memo: string|null): bool{
    this._transfer(super._msgSender(), receiver_id, amount);
    return true;
  }
    
  public allowance(owner:string, spender:string): u128{
    return u128.Zero;
  }

  public approve(spender:string , amount: u128): bool{
    return false;
  }

  public transferFrom( from:string, to:string, amount:u128 ): bool{
    return false;
  }

  public ft_mint(account: string, amount: u128): void {
    assert(account.length != 0, "NEP141: mint to the zero address");
    /*  _beforeTokenTransfer(address(0), account, amount); */

    const res : u128 = u128.add(this.total_supply, amount);
    this.total_supply=res;
        
    this._balances.set(account, u128.add(this.balanceOf(account), amount));
    /* emit Transfer(address(0), account, amount); */
    /*  _afterTokenTransfer(address(0), account, amount); */
  }

  private _transfer(from: string, to:string, amount: u128): void{
    assert(from != null, "NEP141: transfer from the zero address");
    assert(to.length > 0, "NEP141: transfer to the zero address");

    /*  _beforeTokenTransfer(from, to, amount); */
    const fromOldNalance:u128|null=this._balances.get(from);
    const fromBalance: u128 = fromOldNalance ? fromOldNalance : u128.Zero;

    assert(fromBalance >= amount, "NEP141: transfer amount exceeds balance");

    const newFromBalance:u128= u128.sub(fromBalance, amount);
    this._balances.set(from, newFromBalance);

    const toOldBalance:u128|null=this._balances.get(to);
    const toBalance:u128=toOldBalance?toOldBalance:u128.Zero;

    const newToBalance:u128=u128.add(toBalance,amount);
    this._balances.set(to, newToBalance);

    /*  emit Transfer(from, to, amount); */
    /*  _afterTokenTransfer(from, to, amount); */
  }

  public ft_burn(account:string, amount: u128): void{
    assert(account.length > 0, "NEP141: burn from the zero address");

    /*  _beforeTokenTransfer(account, address(0), amount); */

    const oldAccountBalance: u128 | null = this._balances.get(account);
    const accountBalance: u128 = oldAccountBalance?oldAccountBalance:u128.Zero;

    assert(accountBalance >= amount, "NEP141: burn amount exceeds balance");

    this._balances.set(account, u128.sub(accountBalance, amount));
    this.total_supply=u128.sub(this.total_supply, amount);

    /*  emit Transfer(account, address(0), amount); */
    /*  _afterTokenTransfer(account, address(0), amount); */
  }

  // To test
  public ft_on_transfer( sender_id: string, amount: u128,  msg: string ): string {
    return "false";}

  // To test
  public ft_resolve_transfer(sender_id: string, receiver_id: string, amount: u128): u128 {
    const results = ContractPromise.getResults();
    assert(results.length == 1, "Cross contract chain should be 1");
    assert(context.predecessor == context.contractName, "Method ft_resolve_transfer is private");
    assert(!results[0].pending);
    let unusedAmount:u128 = u128.Zero;
    if (results[0].failed) {
      logging.log("Failed transaction, refund all");
      unusedAmount = amount;
    }else {
      unusedAmount = results[0].decode<u128>(); // unused amount provided by on_transfer method
    } 

    const amountConverted = u128.from(amount);
    let unusedAmountConverted = u128.from(unusedAmount);
    
    if (unusedAmountConverted > u128.Zero) {
      // check balance of receiver and get min value
      const receiver_balance = this._balances.get(receiver_id, u128.Zero)!;
      if (u128.gt(unusedAmountConverted, receiver_balance)) {
        unusedAmountConverted = receiver_balance; // can't refund more than total balance
      }
      const usedAmount = u128.sub(amountConverted, unusedAmountConverted);
    
      if (!this._balances.contains(sender_id)) {
        logging.log("Refund not possible, account deleted");
        // todo reduce max supply
      }else {
        logging.log("Attached too much tokens, refund");
        this._transfer(receiver_id, sender_id, unusedAmountConverted);
    
      }
      return usedAmount;
    }
    return amount;
  }
        
  // To test
  public ft_transfer_call(receiver_id: string, amount: u128, memo: string|null, msg: string):ContractPromise{  
    const sender_id = super._msgSender();
    // To define how to use memo inside _transfer
    this._transfer( sender_id, receiver_id, amount);
    
    ContractPromise
      .create<FTT_CALL>( receiver_id, "ft_on_transfer", { sender_id, amount, msg }, XCC_GAS )
      .then<FTT_CALLBACK>( context.contractName, "ft_resolve_transfer", { sender_id, receiver_id, amount }, XCC_RESOLVE_GAS )
      .returnAsResult();
    return new ContractPromise();
  }




  protected sendNear(recipient: string, amount: u128): void {
    ContractPromiseBatch.create(recipient).transfer(amount);
  }

  public storage_deposit(account_id: string = context.predecessor, registration_only: boolean = true): FungibleTokenStorageBalance {
    /*  oneYocto(); */
    const storange_bound = this.storage_balance_bounds();
    const min_bound = u128.from(storange_bound);

    assert(context.attachedDeposit >= min_bound, "Deposit too low to pay registration fee");

    const balance = this.storage_balance_of(account_id);
    if (u128.from(balance.total) > u128.Zero) {
      logging.log("The account is already registered, refunding the deposit");
      this.sendNear(context.predecessor, context.attachedDeposit);
      return balance;
    }
    balance.total = min_bound;
    balance.available = u128.Zero;
    this._storageRegistry.set(account_id, balance);

    if (context.attachedDeposit > min_bound) {
      this.sendNear(context.predecessor, u128.sub(context.attachedDeposit, min_bound));
    }

    return balance;
  }

  public storage_withdraw(amount: string | null): FungibleTokenStorageBalance {
    oneYocto();
    assert(this._storageRegistry.contains(context.predecessor), "The account " + context.predecessor + " is not registered");
    assert(amount == null || u128.from(amount) == u128.Zero, "The amount is greater than the available storage balance");
    return this.storage_balance_of(context.predecessor);
  }

  public storage_unregister(force: boolean = false): boolean {
    /* oneYocto(); */
    if (force) {
      this._balances.delete(context.predecessor);
      this._storageRegistry.delete(context.predecessor);
      return true;
    } else {
      throw "This method can only be called with force = true. Warning: All tokens will be burned and are lost.";
    }
  }

  public storage_balance_bounds(): FungibleTokenStorageBalanceBounds {
    const storage_cost = this.get_account_storage_cost();
    return new FungibleTokenStorageBalanceBounds(storage_cost, storage_cost);
  }

  public storage_balance_of(account_id: string): FungibleTokenStorageBalance {
    return this._storageRegistry.get(account_id, new FungibleTokenStorageBalance(u128.Zero, this.get_account_storage_cost()))!;
  }

  public get_account_storage_cost(): u128 {
    return storage.getSome<u128>("account_storage_usage");
  }
}