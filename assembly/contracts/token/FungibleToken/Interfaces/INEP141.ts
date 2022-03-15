/* import { u128 } from "near-sdk-as"; */

import { ContractPromise, u128 } from "near-sdk-as";

export interface INEP141 {
    ft_total_supply():u128;
    ft_balance_of(account: string):u128;
    ft_transfer(receiver_id: string, amount: u128, memo: string|null): void;

    ft_transfer_call( receiver_id: string, amount: u128,  msg: string, memo: string|null ): ContractPromise;
    ft_resolve_transfer( sender_id: string, receiver_id: string, amount: u128  ): u128;

    ft_on_transfer( sender_id: string, amount: u128,  msg: string ): string;

    // Allowance-approve-transferFrom???
}