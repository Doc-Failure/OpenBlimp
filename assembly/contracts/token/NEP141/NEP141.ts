import INEP141 from "./INEP141";
import { PersistentMap } from "near-sdk-as";
import { u128 } from "near-sdk-as";

export abstract class NEP141 implements INEP141{
    private _balances:PersistentMap<string, u128>  = new PersistentMap<string, u128>("balancesMap"); 

    //TODO - DOES IT WORK???
    private _allowances:PersistentMap<string, PersistentMap<string, u128>>  = new PersistentMap<string, PersistentMap<string, u128>> ("allowancesMap"); 

    private _totalSupply:u128;
    private _name: string;
    private _symbol: string;

    constructor(name_ : string, symbol_:string) {
        this._name = name_;
        this._symbol = symbol_;
        this._totalSupply=new u128(0)
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
        const res = this._balances.get(account);
        return res ? res : new u128(0);
    };

    public transfer(to: string, amount: u128, memo: string|null): void{
    };
    public allowance(owner:string, spender:string): u128{
        return new u128(0);
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
}