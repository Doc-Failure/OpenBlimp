//Just for test purpose
import { u128 } from "near-sdk-as";
import { FungibleToken } from "../FungibleToken";

/* Class for test purpose only */
export class FungibleTokenDecimalsMock extends FungibleToken {
    constructor( name: string, symbol: string, decimals: u8, initialAccount: string, initialBalance: u128){
        super(name, symbol, decimals)
        super.ft_mint(initialAccount, initialBalance);
    }
}


