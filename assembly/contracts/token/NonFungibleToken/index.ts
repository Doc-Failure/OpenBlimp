import { NFTContractMetadata } from "./utils";
import { NonFungibleTokenContract } from "./preset/NonFungibleTokenContract";
import { storage, u128 } from "near-sdk-as";

// TODO - insert some init check
export function ft_initialize_impl(name: string, symbol: string, icon: string|null, base_uri: string|null, reference: string|null, reference_hash: string|null): void {
  const NFT:NonFungibleTokenContract= new NonFungibleTokenContract(name, symbol, icon, base_uri, reference, reference_hash);
  storage.set("FT", NFT);
}
/* 
export function ft_mint_impl(account: string, amount: u128):void{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_mint(account,amount);
  storage.set("FT", FT);
} */
/* 
export function ft_burn_impl(account: string, amount: u128):void{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_burn(account,amount);
  storage.set("FT", FT);
}

// CORE NEP-141
export function ft_transfer_impl(receiver_id: string, amount: u128, memo: string): void {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_transfer(receiver_id, amount, memo);
  storage.set("FT", FT);
}

export function ft_transfer_call_impl(receiver_id: string, amount: u128, msg: string, memo: string): void {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  FT.ft_transfer_call(receiver_id, amount, memo, msg);
  storage.set("FT", FT);
} */

/* export function ft_on_transfer_impl(sender_id: string, amount: string, msg: string): string {
  return "OK";
}

export function ft_resolve_transfer_impl(sender_id: string, receiver_id: string, amount: string): string {
  return "OK";
}

export function ft_total_supply_impl(): u128 {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_total_supply();
}

export function ft_balance_of_impl(account_id: string): u128 {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_balance_of(account_id);
} */

// METADATA NEP-148
export function nft_metadata_impl(): NFTContractMetadata {
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("FT");
  return NFT.nft_metadata();
}
/* 
export function storage_deposit_impl( account_id: string, registration_only: boolean ): FungibleTokenStorageBalance{
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  const res:FungibleTokenStorageBalance=FT.storage_deposit(account_id, registration_only);
  storage.set("FT", FT);
  return res;
}

export function storage_withdraw_impl(amount: u128|null): FungibleTokenStorageBalance{
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
} */