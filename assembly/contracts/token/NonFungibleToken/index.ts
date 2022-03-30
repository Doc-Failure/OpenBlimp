import { NonFungibleTokenContract } from "./preset/NonFungibleTokenContract";
import { PersistentVector, storage, u128 } from "near-sdk-as";

import { AccountId, TokenId } from "../../utils/utils";
import { NFTContractMetadata, NFTtokenMetadata, Token } from "./utils";

// TODO - insert some init check
export function nft_initialize_impl(name: string, symbol: string, icon: string="", base_uri: string="", reference: string="", reference_hash: string=""): void {
  const NFT:NonFungibleTokenContract= new NonFungibleTokenContract(name, symbol, icon, base_uri, reference, reference_hash);
  storage.set("NFT", NFT);
}

export function nft_mint_impl( receiver_id: AccountId, token_id: TokenId, metadata: NFTtokenMetadata):void{
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("NFT");
  NFT.nft_mint( receiver_id, token_id, metadata);
  storage.set("NFT", NFT);
}

export function nft_tokens_for_owner_impl( account_id: AccountId, from_index: u128|null=u128.Zero, limit: u128|null=new u128(50) ): Array<Token>{
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("NFT");
  return NFT.nft_tokens_for_owner( account_id, from_index, limit);
}

export function nft_total_supply_impl(): number {
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("NFT");
  return NFT.nft_total_supply();
}



export function nft_supply_for_owner_impl(account_id: AccountId):number{
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("NFT");
  return NFT.nft_supply_for_owner(account_id);
}
/* 

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


export function ft_balance_of_impl(account_id: string): u128 {
  const FT:FungibleToken=storage.getSome<FungibleToken>("FT");
  return FT.ft_balance_of(account_id);
} */

// METADATA NEP-148
export function nft_metadata_impl(): NFTContractMetadata {
  const NFT:NonFungibleTokenContract=storage.getSome<NonFungibleTokenContract>("NFT");
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