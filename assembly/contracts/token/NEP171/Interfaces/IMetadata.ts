export interface IMetadata {
    name: string;
    symbol: string;
    decimals: u8;
    spec: string;
    
    icon: string | null;
    reference: string | null;
    reference_hash: string | null;
}