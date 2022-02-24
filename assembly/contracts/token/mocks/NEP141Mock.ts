import { NEP141 } from "../NEP141/NEP141";
import { u128 } from "near-sdk-as";

/* Class for test purpose only */

export class NEP141Mock extends NEP141 {
    constructor( name: string, symbol: string, initialAccount: string, initialBalance: u128){
        super(name, symbol)
        super.ft_mint(initialAccount, initialBalance);
    }

    public mint(account: string, amount: u128):void {
        super.ft_mint(account, amount);
    }

    public burn(account: string, amount: u128):void {
        super._burn(account, amount);
    }
} 