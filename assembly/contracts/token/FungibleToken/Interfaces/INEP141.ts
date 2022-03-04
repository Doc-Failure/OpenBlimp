/* import { u128 } from "near-sdk-as"; */

import { ContractPromise, u128 } from "near-sdk-as";

export interface INEP141 {
    ft_total_supply():u128;
    ft_balance_of(account: string):u128;
    ft_transfer(receiver_id: string, amount: string, memo: string|null): void;

    //allowance(owner:string, spender:string): u128;
    //approve(spender:string , amount: u128): bool;
    //transferFrom( from:string, to:string, amount:u128 ): bool;
    //event Approval(address indexed owner, address indexed spender, uint256 value);

    ft_transfer_call( receiver_id: string, amount: string, memo: string|null, msg: string ): ContractPromise;
    ft_on_transfer( sender_id: string, amount: string,  msg: string ): string;
    ft_resolve_transfer( sender_id: string, receiver_id: string, amount: string  ): string;
}