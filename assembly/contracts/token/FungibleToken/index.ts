import { FungibleTokenMetadata } from "./utils";
import { MintableFT } from "./preset/MintableFT";
import { storage, u128 } from "near-sdk-as";
import { AccountId } from "../../utils/utils";

//init
export function ft_initialize(name: string, symbol: string, decimals: u8, initialAccount:AccountId ,initialSupply: u128): void {
    const FT:MintableFT= new MintableFT(name, symbol, decimals, initialAccount, initialSupply);
    storage.set("FT", FT);
}

//CORE NEP-141
export function ft_transfer(receiver_id: string, amount: string, memo: string | null = null): void {
    /* oneYocto(); */
    /* ft_transfer_internal_impl(context.predecessor, receiver_id, amount, memo); */
}

export function ft_transfer_call(receiver_id: string, amount: string, msg: string, memo: string | null = null): void {
    /* ft_transfer_call_impl(receiver_id, amount, msg, memo); */
}

export function ft_on_transfer(sender_id: string, amount: string, msg: string): string {
    /* return ft_on_transfer_impl(sender_id, amount, msg); */
    return "ok"
}

export function ft_resolve_transfer(sender_id: string, receiver_id: string, amount: string): string {
    /* return ft_resolve_transfer_impl(sender_id, receiver_id, amount); */
    return "OK"
}

export function ft_total_supply(): string {
    return "ft_total_supply_impl();"
}

export function ft_balance_of(account_id: string): string {
    return "ft_balance_of_impl(account_id);"
}

// METADATA NEP-148
export function ft_metadata(): FungibleTokenMetadata {
    /* const FT=<MintableFT>storage.get("FT"); */
    /* FT.ft_metadata(); */
    return {
        name: "string",
        symbol: "string",
        decimals: 8,
        spec: "string",
        icon: null,
        reference: null,
        reference_hash: null
    }
}
