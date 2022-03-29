import { u128 } from "near-sdk-as";
import { AccountId, TokenId,  } from "../../../utils/utils";

@nearBindgen
export class Token{
  token_id: TokenId;
  owner_id: AccountId;
  metadata: NFTtokenMetadata;
  constructor(token_id:TokenId, owner_id:AccountId, metadata:NFTtokenMetadata){
    this.token_id=token_id;
    this.owner_id=owner_id;
    this.metadata=metadata;
  } 
}

@nearBindgen
export class NFTContractMetadata{
  spec: string; // required, essentially a version like "nft-1.0.0"
  name: string; // required, ex. "Mochi Rising — Digital Edition" or "Metaverse 3"
  symbol: string; // required, ex. "MOCHI"
  icon: string; // Data URL
  base_uri: string; // Centralized gateway known to have reliable access to decentralized storage assets referenced by `reference` or `media` URLs
  reference: string; // URL to a JSON file with more info
  reference_hash: string; // Base64-encoded sha256 hash of JSON from reference field. Required if `reference` is included.

  constructor( spec: string, name: string, symbol: string, icon: string, base_uri: string, reference: string, reference_hash: string){
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
export class NFTtokenMetadata{
  title: string; // ex. "Arch Nemesis: Mail Carrier" or "Parcel #5055"
  description: string; // free-form description
  media: string; // URL to associated media, preferably to decentralized, content-addressed storage
  media_hash: string; // Base64-encoded sha256 hash of content referenced by the `media` field. Required if `media` is included.
  copies: string; // number of copies of this set of metadata in existence when token was minted.
  issued_at: string; // When token was issued or minted, Unix epoch in milliseconds
  expires_at: string; // When token expires, Unix epoch in milliseconds
  starts_at: string; // When token starts being valid, Unix epoch in milliseconds
  updated_at: string; // When token was last updated, Unix epoch in milliseconds
  extra: string; // anything extra the NFT wants to store on-chain. Can be stringified JSON.
  reference: string; // URL to an off-chain JSON file with more info.
  reference_hash: string; // Base64-encoded sha256 hash of JSON from reference field. Required if `reference` is included.
  
  constructor( title: string, description: string, media: string, media_hash: string, copies: string, issued_at: string, expires_at: string, starts_at: string, updated_at: string, extra: string, reference: string, reference_hash: string){
    this.title=title;
    this.description=description;
    this.media=media;
    this.media_hash=media_hash;
    this.copies=copies;
    this.issued_at=issued_at;
    this.expires_at=expires_at;
    this.starts_at=starts_at;
    this.updated_at=updated_at;
    this.extra=extra;
    this.reference=reference;
    this.reference_hash=reference_hash;
  }
}