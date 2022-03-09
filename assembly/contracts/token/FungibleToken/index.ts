import { FungibleTokenMetadata } from "./utils";
/* import { MintableFT } from "./preset/MintableFT"; */
import { FungibleToken } from "./preset/FungibleToken";
import { storage, u128, context } from "near-sdk-as";
import {FungibleTokenStorageBalanceBounds, FungibleTokenStorageBalance} from "./utils";

// initialAccount:AccountId ,initialSupply: u128

// init
export function ft_initialize_impl(name: string, symbol: string, decimals: u8, icon:string, reference:string, reference_hash:string): void {
  const FT:FungibleToken= new FungibleToken(name, symbol, decimals, icon, reference, reference_hash);
  storage.set("FT", FT);

  const initial_storage_usage = context.storageUsage;
  storage.set("account_storage_usage", context.storageUsage - initial_storage_usage);
}


export function ft_mint_impl(account: string, amount: u128):void{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_mint(account,amount);
  storage.set("FT", FT);
}

export function ft_burn_impl(account: string, amount: u128):void{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_burn(account,amount);
  storage.set("FT", FT);
}

// CORE NEP-141
export function ft_transfer_impl(receiver_id: string, amount: u128, memo: string | null): void {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_transfer(receiver_id, amount, memo);
  storage.set("FT", FT);
}

export function ft_transfer_call_impl(receiver_id: string, amount: u128, msg: string, memo: string | null): void {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_transfer_call(receiver_id, amount, memo, msg);
  storage.set("FT", FT);
}

export function ft_on_transfer_impl(sender_id: string, amount: string, msg: string): string {
  /* return ft_on_transfer_impl(sender_id, amount, msg); */
  return "ok";
}

export function ft_resolve_transfer_impl(sender_id: string, receiver_id: string, amount: string): string {
  /* return ft_resolve_transfer_impl(sender_id, receiver_id, amount); */
  return "OK";
}

export function ft_total_supply_impl(): u128 {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_total_supply();
}

export function ft_balance_of_impl(account_id: string): u128 {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_balance_of(account_id);
}

// METADATA NEP-148
export function ft_metadata_impl(): FungibleTokenMetadata {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_metadata();
}

export function storage_deposit_impl( account_id: string, registration_only: boolean ): FungibleTokenStorageBalance{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  const res:FungibleTokenStorageBalance=FT.storage_deposit(account_id, registration_only);
  storage.set("FT", FT);
  return res;
}

export function storage_withdraw_impl(amount: string|null): FungibleTokenStorageBalance{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  const res:FungibleTokenStorageBalance=FT.storage_withdraw(amount);
  storage.set("FT", FT);
  return res;

}

export function storage_unregister_impl(force: boolean): boolean{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  const res:boolean=FT.storage_unregister(force);
  storage.set("FT", FT);
  return res;
}

export function storage_balance_bounds_impl(): FungibleTokenStorageBalanceBounds{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.storage_balance_bounds();
}

export function storage_balance_of_impl(account_id: string): FungibleTokenStorageBalance{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.storage_balance_of(account_id);
}