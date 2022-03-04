export class FtStorageBalance{
    total: string;
    available: string;
}

export class FtStorageBalanceBounds{
    min: string;
    max: string;
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

export type StorageBalance = FtStorageBalance;
export type StorageBalanceBounds = FtStorageBalanceBounds;
export type FungibleTokenMetadata = FtMetadata;


export const XCC_GAS: u64 = 35_000_000_000_000;
export const XCC_RESOLVE_GAS: u64 = 10_000_000_000_000;