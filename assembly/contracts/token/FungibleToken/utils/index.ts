interface IMetadata {
    _name: string;
    _symbol: string;
    _decimals: u8;
    _spec: string;
    _icon: string|null;
    _reference: string|null;
    _reference_hash: string|null;
}

class tMetadata implements IMetadata{
    _name: string;
    _symbol: string;
    _decimals: u8;
    _spec: string;
    _icon: string|null;
    _reference: string|null;
    _reference_hash: string|null;
}

export type Metadata = tMetadata;