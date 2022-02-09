import { INEP141 } from "./INEP141";
import { u256 } from "near-sdk-as";

export class NEP141 implements INEP141{
    totalSupply():u256{
        return u256.Zero;
    };
    balanceOf(account: string): (u256){
        return u256.Zero;
    };
    transfer(to: string, amount: u256, memo: string|null): void{
    };
    allowance(owner:string, spender:string): u256{
        return u256.Zero;
    };
    approve(spender:string , amount: u256): bool{
        return false
    };
    transferFrom( from:string, to:string, amount:u256 ): bool{
        return false
    };
}