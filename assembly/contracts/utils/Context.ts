import { Context as ctx } from "near-sdk-as";

//Technically we don't need this class, but I created it to stick with the OpenZeppelin Implementation
export abstract class Context{
    
    protected _msgSender(): string {
        return ctx.sender;
    }

    /* private _msgData(): bytes{
        return ctx.;
    } */

}