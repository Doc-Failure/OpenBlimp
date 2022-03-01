import { FungibleToken } from "./token/FungibleToken/preset/FungibleToken";
import { u128, storage } from "near-sdk-as";

/* @nearBindgen
export class NEP141Token extends FungibleToken {
    constructor(){
        super("TokenName", "TKN")
        super.ft_mint("doc_failure.testnet", new u128(100000*(10^18))); 
    }
}
 */
/* export function initialize(): void{
    const token:NEP141Token= new NEP141Token()
    storage.set("token", token);
}

// METADATA NEP-148
export function ft_metadata(): FungibleTokenMetadata {
    let res:NEP141Token|null = storage.get<NEP141Token>("token");
    return new FungibleTokenMetadata();
} */

//CORE NEP-141
export function ft_transfer(receiver_id: string, amount: string, memo: string | null = null): void {
    return;
}

export function ft_transfer_call(receiver_id: string, amount: string, msg: string, memo: string | null = null): void {
    return
}

export function ft_on_transfer(sender_id: string, amount: string, msg: string): u128 {
    return new u128(100)
}

export function ft_resolve_transfer(sender_id: string, receiver_id: string, amount: string): u128 {
    return new u128(100)
}

export function ft_total_supply(): u128 {
    return new u128(100)
}

export function ft_balance_of(account_id: string): u128 {
    return new u128(100);
}