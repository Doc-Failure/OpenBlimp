import { u128 } from "near-sdk-as";

export class FtStorageBalance{
  total: u128;
  available: u128;
}

export class FtStorageBalanceBounds{
  min: u128;
  max: u128;
}

@nearBindgen
export class FtMetadata{
  name: string;
  symbol: string;
  decimals: u8;
  spec: string;
  icon: string;
  reference: string;
  reference_hash: string;
}

export type FungibleTokenStorageBalance = FtStorageBalance;
export type FungibleTokenStorageBalanceBounds = FtStorageBalanceBounds;
export type FungibleTokenMetadata = FtMetadata;


export const XCC_GAS: u64 = 35_000_000_000_000;
export const XCC_RESOLVE_GAS: u64 = 10_000_000_000_000;