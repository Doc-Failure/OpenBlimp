import { ContractPromise, ContractPromiseResult, PersistentMap, PromiseStatus } from "near-sdk-as";
import { u128 } from "near-sdk-as";
import { AccountId, Balance } from "../../utils/utils";
import { Context } from "../../utils/Context";
/* import INEP141Metadata from "./extensions/INEP141Metadata"; */
import { INEP141 } from "./INEP141";

//TODO - metadata

class FungibleTokenMetadata{

    public name: string;
    public symbol: string;
    public decimals: number;
    public spec: string;

    public icon: string;
    public reference: string;
    public reference_hash: string;

    constructor(){
        this.name="this._name";
        this.symbol="symbl";
        this.decimals=18;
        this.spec="ft-1.0.0";

        this.icon="";
        this.reference="";
        this.reference_hash="";
    }
}

export abstract class NEP141 extends Context implements INEP141{
    private _balances:PersistentMap<string, u128>  = new PersistentMap<string, u128>("balancesMap"); 

    //TODO - DOES IT WORK???
    private _allowances:PersistentMap<string, PersistentMap<string, u128>>  = new PersistentMap<string, PersistentMap<string, u128>> ("allowancesMap"); 

    public accounts:PersistentMap<AccountId, Balance> = new PersistentMap<string, u128>("accountMap");
    public total_supply:u128;
    public owner_id:string;
    public metadata:FungibleTokenMetadata;
    private _totalSupply:u128;
    private _name: string;
    private _symbol: string;
/* 
    public name:string;

    public symbol: string; */
/* 
    public spec: string;
    public icon: string|null;
    public reference: string|null;
    public reference_hash: string|null; */

    public name: string;
    public symbol: string;

    public spec: string;

    constructor(name_ : string, symbol_:string) {
        super();
        this._name = name_;
        this._symbol = symbol_;
        this._totalSupply=u128.Zero;
        this.metadata=new FungibleTokenMetadata();
        this.total_supply=new u128(10*(10^18));
        this.owner_id="doc_failure.testnet";
        this.name="My Token";
        this.symbol="MTKN";
        this.decimals=18;
        this.spec="ft-1.0.0";
    }

    public ft_metadata(): FungibleTokenMetadata {
        return this.metadata
    }

    //TODO - let's talk about this, I'm not sure about the openzeppelin implementation
    public decimals:u8;

    public ft_total_supply():u128{
        return this._totalSupply;
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
        assert(account.length!=0);
        //TODO - implement _beforeTokenTransfer ?
        let res : u128 = u128.add(this._totalSupply,amount);
        this._totalSupply=res;
        this._balances.set(account, u128.add(this.balanceOf(account), amount));

        this.accounts.set(account, u128.add(this.balanceOf(account), amount));
        //TODO - implement emit Transfer(address(0), account, amount); ?
        //TODO - implement _afterTokenTransfer ?

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
        this._totalSupply=u128.sub(this._totalSupply, amount);

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


  /*   function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) { */
}