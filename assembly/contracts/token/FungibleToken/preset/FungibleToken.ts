import { ContractPromise, PersistentMap, u128 } from "near-sdk-as";
import { AccountId, Balance } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import { INEP141 } from "../Interfaces/INEP141";
import { INEP148 } from "../Interfaces/INEP148";
import { FungibleTokenMetadata } from "../utils";

@nearBindgen
export abstract class FungibleToken extends Context implements INEP141, INEP148{
    private _balances:PersistentMap<string, Balance>  = new PersistentMap<string, Balance>("balancesMap"); 

    //TODO - DOES IT WORK???
    private _allowances:PersistentMap<string, PersistentMap<string, u128>>  = new PersistentMap<string, PersistentMap<string, u128>> ("allowancesMap"); 

    /* public accounts:PersistentMap<AccountId, Balance> = new PersistentMap<string, u128>("accountMap"); */
    public total_supply:u128;
    public owner_id:string;
    metadata: FungibleTokenMetadata;

    //, icon: string|null, reference: string|null, reference_hash:string|null
    constructor(name:string, symbol: string, decimals: u8){
        super();
        this.metadata={ name:name, symbol:symbol, decimals:decimals, spec:"vt1.0.0", icon:"", reference:"", reference_hash:"" }
    }

    private _saveClass(): void{
        /* storage.set("metadata", this) */
    }

    public ft_metadata(): FungibleTokenMetadata {
        return this.metadata;
    }

    public ft_total_supply():u128{
        return this.total_supply;
    };

    public ft_balance_of(account: string): u128{
        const balance : u128 | null = this._balances.get(account);
        const res:u128 = balance ? balance : u128.Zero
        return res;
    };

    private balanceOf(account: string): u128{
        const res : u128 | null = this._balances.get(account);
        return res ? res : u128.Zero;
    };

    //TODO
    public ft_transfer_call(receiver_id: string, amount: string, memo: string|null, msg: string):ContractPromise{  
        /* oneYocto(); */
       /*  const sender_id = context.predecessor;
        ft_transfer_internal_impl(sender_id, receiver_id, amount, memo);
    
        ContractPromise.create<FTT_CALL>(
            receiver_id,
            "ft_on_transfer",
            { sender_id, amount, msg },
            XCC_GAS
        ).then<FTT_CALLBACK>(
            context.contractName,
            "ft_resolve_transfer",
            {
                sender_id, receiver_id, amount
            },
            XCC_RESOLVE_GAS
        ).returnAsResult(); */
        return new ContractPromise()
    }


    public ft_transfer_internal_impl(sender_id: string, receiver_id: string, amount: string, memo: string | null): void {
      /*   oneYocto();
        assert(env.isValidAccountID(receiver_id), ERR_INVALID_ACCOUNT);

        const convertedAmount = u128.from(amount); //TODO Check if amount is a valid number

        assert(sender_id != receiver_id, "Sender and receiver should be different");
        assert(convertedAmount > u128.Zero, ERR_INVALID_AMOUNT);

        const balanceOfSender = tokenRegistry.getSome(sender_id);
        assert(balanceOfSender >= convertedAmount, ERR_INSUFFICIENT_BALANCE)
        const balanceOfReceiver = tokenRegistry.get(receiver_id, u128.Zero)!;

        const new_balanceOfSender = u128.sub(balanceOfSender, convertedAmount)
        const new_balanceOfReceiver = u128.add(balanceOfReceiver, convertedAmount)

        tokenRegistry.set(sender_id, new_balanceOfSender);
        tokenRegistry.set(receiver_id, new_balanceOfReceiver);

        logging.log("Transfer " + amount + " from " + sender_id + " to " + receiver_id);

        if (memo) {
            logging.log("Memo: " + memo);
        } */
    }

    public ft_transfer(to: string, amount: string, memo: string|null): bool{
        const _amount:u128=u128.fromString(amount)
        const owner: string = super._msgSender();
        this._transfer(owner, to, _amount);
        return true;
    };
    
    public allowance(owner:string, spender:string): u128{
        return u128.Zero;
    };

    public approve(spender:string , amount: u128): bool{
        return false;
    };

    public transferFrom( from:string, to:string, amount:u128 ): bool{
        return false;
    };

    protected ft_mint(account: string, amount: u128): void {
        assert(account.length != 0, "NEP141: mint to the zero address");
        /*  _beforeTokenTransfer(address(0), account, amount); */

        let res : u128 = u128.add(this.total_supply, amount);
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

        const newToBalance:u128=u128.add(toBalance,amount)
        this._balances.set(to, newToBalance);

       /*  emit Transfer(from, to, amount); */
       /*  _afterTokenTransfer(from, to, amount); */
    }

    protected _burn(account:string, amount: u128): void{
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

    public ft_on_transfer( sender_id: string, amount: string,  msg: string ): string {
        return "false"};

    public ft_resolve_transfer( sender_id: string, receiver_id: string, amount: string  ): string {
        return "false"};

    /* private _approve(owner: string, spender: string, amount: u128){
        assert(owner.length>0, "NEP141: approve from the zero address");
        assert(spender.length>0, "NEP141: approve to the zero address");

        const _allowances.get(owner)
        [spender] = amount; */
       /*  emit Approval(owner, spender, amount); */
   /*  } */

}