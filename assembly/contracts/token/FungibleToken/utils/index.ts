import { u128 } from "near-sdk-as";

@nearBindgen
export class FTT_CALL {
  sender_id: string;
  amount: u128;
  msg: string;
}

@nearBindgen
export class FTT_CALLBACK {
  sender_id: string;
  receiver_id: string;
  amount: u128;
}

@nearBindgen
export class FungibleTokenStorageBalance{
  total: u128;
  available: u128;

  constructor(total:u128, available:u128){
    this.total=total;
    this.available=available;
  }
}

@nearBindgen
export class FungibleTokenStorageBalanceBounds{
  min: u128;
  max: u128;
  constructor(min:u128, max:u128){
    this.min=min;
    this.max=max;
  }
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

export type FungibleTokenMetadata = FtMetadata;


export const XCC_GAS: u64 = 35_000_000_000_000;
export const XCC_RESOLVE_GAS: u64 = 10_000_000_000_000;