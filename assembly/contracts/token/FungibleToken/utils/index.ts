/*TODO: insert @nearBindgen without crashing AS compiler */
export class tMetadata{
    name: string;
    symbol: string;
    decimals: u8;
    spec: string;
    icon: string|null;
    reference: string|null;
    reference_hash: string|null;
}

export type FungibleTokenMetadata = tMetadata;