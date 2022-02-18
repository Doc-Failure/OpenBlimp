import { INEP141 } from "./INEP141";
import { PersistentMap } from "near-sdk-as";
import { u128 } from "near-sdk-as";
import { Context } from "../../utils/Context";
import INEP141Metadata from "./extensions/INEP141Metadata";

//TODO - metadata
//extends INEP141 ???
export abstract class NEP141 extends Context implements INEP141Metadata{
    private _balances:PersistentMap<string, u128>  = new PersistentMap<string, u128>("balancesMap"); 

    //TODO - DOES IT WORK???
    private _allowances:PersistentMap<string, PersistentMap<string, u128>>  = new PersistentMap<string, PersistentMap<string, u128>> ("allowancesMap"); 

    private _totalSupply:u128;
    private _name: string;
    private _symbol: string;

    constructor(name_ : string, symbol_:string) {
        super();
        this._name = name_;
        this._symbol = symbol_;
        this._totalSupply=u128.Zero;
    }

    public name(): string{
        return this._name;
    }

    public symbol(): string{
        return this._symbol;
    }

    //TODO - let's talk about this, I'm not sure about the openzeppelin implementation
    public decimals():u8 {
        return 18;
    }

    public totalSupply():u128{
        return this._totalSupply;
    };

    public balanceOf(account: string): u128{
        const res : u128 | null = this._balances.get(account);
        return res ? res : u128.Zero;
    };

    public transfer(to: string, amount: u128, memo: string|null): bool{
        const owner: string = super._msgSender();
        this._transfer(owner, to, amount);
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

    protected _mint(account: string, amount: u128): void {
        assert(account.length!=0);
        //TODO - implement _beforeTokenTransfer ?
        let res : u128 = u128.add(this._totalSupply,amount);
        this._totalSupply=res;
        this._balances.set(account, u128.add(this.balanceOf(account), amount));

        //TODO - implement emit Transfer(address(0), account, amount); ?
        //TODO - implement _afterTokenTransfer ?

    }

    private _transfer(from: string, to:string, amount: u128): void{
        assert(from != null, "NEP141: transfer from the zero address");
        assert(to != null, "NEP141: transfer to the zero address");

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

  /*   function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) { */

}