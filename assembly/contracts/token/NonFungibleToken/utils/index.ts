import { AccountId, Balance, TokenId } from "../../../utils/utils";

@nearBindgen
export class Token{
  /*  token_id: TokenId; */
  owner_id: AccountId;
  /*  metadata: NonFungibleTokenMetadata; */
  constructor(owner_id:AccountId){
    /*  token_id: TokenId ,, metadata:NonFungibleTokenMetadata */
  /*   this.token_id=token_id; */
    this.owner_id=owner_id;
    /*  this.metadata=metadata; */
  } 
}

@nearBindgen
export class NFTContractMetadata{
  spec: string; // required, essentially a version like "nft-1.0.0"
  name: string; // required, ex. "Mochi Rising — Digital Edition" or "Metaverse 3"
  symbol: string; // required, ex. "MOCHI"
  icon: string|null; // Data URL
  base_uri: string|null; // Centralized gateway known to have reliable access to decentralized storage assets referenced by `reference` or `media` URLs
  reference: string|null; // URL to a JSON file with more info
  reference_hash: string|null; // Base64-encoded sha256 hash of JSON from reference field. Required if `reference` is included.

  constructor( spec: string, name: string, symbol: string, icon: string|null, base_uri: string|null, reference: string|null, reference_hash: string|null){
    this.spec= spec;
    this.name=name;
    this.symbol=symbol;
    this.icon=icon;
    this.base_uri=base_uri;
    this.reference=reference;
    this.reference_hash=reference_hash;
  }
}

@nearBindgen
export class NFTMetadata{
  title: string|null; // ex. "Arch Nemesis: Mail Carrier" or "Parcel #5055"
  description: string|null; // free-form description
  media: string|null; // URL to associated media, preferably to decentralized, content-addressed storage
  media_hash: string|null; // Base64-encoded sha256 hash of content referenced by the `media` field. Required if `media` is included.
  copies: u64|null; // number of copies of this set of metadata in existence when token was minted.
  issued_at: string|null; // When token was issued or minted, Unix epoch in milliseconds
  expires_at: string|null; // When token expires, Unix epoch in milliseconds
  starts_at: string|null; // When token starts being valid, Unix epoch in milliseconds
  updated_at: string|null; // When token was last updated, Unix epoch in milliseconds
  extra: string|null; // anything extra the NFT wants to store on-chain. Can be stringified JSON.
  reference: string|null; // URL to an off-chain JSON file with more info.
  reference_hash: string|null; // Base64-encoded sha256 hash of JSON from reference field. Required if `reference` is included.
}
