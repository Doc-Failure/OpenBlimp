import { u256 } from "near-sdk-as";

export interface INEP141 {
    totalSupply():u256;
    balanceOf(account: string): (u256);
    transfer(to: string, amount: u256, memo: string|null): void;
    allowance(owner:string, spender:string): u256;
    approve(spender:string , amount: u256): bool;
    transferFrom( from:string, to:string, amount:u256 ): bool;
    
    //event Transfer(address indexed from, address indexed to, uint256 value);
    //event Approval(address indexed owner, address indexed spender, uint256 value);

    
 /*    ft_transfer_call(
    receiver_id: string,
    amount: string,
    memo: string|null,
    msg: string
    ): Promise<string>;

    ft_on_transfer(
        sender_id: string,
        amount: string,
        msg: string
    ): string; */
}