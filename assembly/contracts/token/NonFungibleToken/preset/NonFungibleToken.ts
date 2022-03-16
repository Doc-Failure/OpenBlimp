import { ContractPromise, ContractPromiseBatch, PersistentMap, u128, context, logging} from "near-sdk-as";
import { AccountId, Balance } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import { INEP177 } from "../Interfaces";
import { XCC_GAS, XCC_RESOLVE_GAS} from "../../../utils/utils";
import { NonFungibleTokenContractMetadata } from "../utils";


@nearBindgen
export class NonFungibleToken extends Context implements INEP177{
  private metadata: NonFungibleTokenContractMetadata;

  constructor(name:string, symbol: string, decimals: u8, icon:string="", reference:string="", reference_hash:string=""){
    super();
    /*  this.metadata={ name:name, symbol:symbol, decimals:decimals, spec:"vt1.0.0", icon:icon, reference:reference, reference_hash:reference_hash }; */
  }

  public nft_metadata(): NonFungibleTokenContractMetadata {
    return this.metadata;
  }
}