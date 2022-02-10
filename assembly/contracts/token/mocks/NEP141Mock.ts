import { NEP141 } from "../NEP141/NEP141";
import { u256 } from "near-sdk-as";

/* Class for test purpose only */
export class NEP141Mock extends NEP141 {
    constructor( name: string, symbol: string, initialAccount: string, initialBalance: u256){
        super(name, symbol)
        /* _mint(initialAccount, initialBalance); */
    }
}