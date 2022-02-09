import INEP141 from "./INEP141";
import { u256 } from "near-sdk-as";

export class NEP141 implements INEP141{
    public totalSupply():u256{
        return new u256(0);
    };
    public balanceOf(account: string): u256{
        return new u256(0);
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