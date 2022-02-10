import INEP141 from "./INEP141";
import { u256, PersistentMap } from "near-sdk-as";

export abstract class NEP141 implements INEP141{
    private _balances:PersistentMap<string, u256>  = new PersistentMap<string, u256>("balancesMap"); 

    //TODO - DOES IT WORK???
    private _allowances:PersistentMap<string, PersistentMap<string, u256>>  = new PersistentMap<string, PersistentMap<string, u256>> ("allowancesMap"); 

    private _totalSupply:u256;
    private _name: string;
    private _symbol: string;

    constructor(name_ : string, symbol_:string) {
        this._name = name_;
        this._symbol = symbol_;
        this._totalSupply=new u256(0)
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

    public totalSupply():u256{
        return this._totalSupply;
    };

    public balanceOf(account: string): u256|null{
        return this._balances.get(account);
    };
    public transfer(to: string, amount: u256, memo: string|null): void{
    };
    public allowance(owner:string, spender:string): u256{
        return new u256(0);
    };
    public approve(spender:string , amount: u256): bool{
        return false
    };
    public transferFrom( from:string, to:string, amount:u256 ): bool{
        return false
    };
}