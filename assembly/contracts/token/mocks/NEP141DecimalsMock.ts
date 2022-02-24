//Just for test purpose
import { NEP141 } from "../NEP141/NEP141";

/* Class for test purpose only */
export class NEP141DecimalsMock extends NEP141 {
    readonly _decimals:u8;

    constructor( name_:string, symbol_:string, decimals_: u8 ){
        super(name_, symbol_);
        this._decimals = decimals_;
    }

   /*  public decimals():u8 {
        return this._decimals;
    } */
}