import { ContractPromise, ContractPromiseBatch, PersistentMap, u128, context, logging} from "near-sdk-as";
import { AccountId, Balance } from "../../../utils/utils";
import { Context } from "../../../utils/Context";
import { INEP171, INEP177 } from "../Interfaces";
import { XCC_GAS, XCC_RESOLVE_GAS} from "../../../utils/utils";
import { NonFungibleTokenContractMetadata, NonFungibleTokenMetadata, Token } from "../utils";


@nearBindgen
export class NonFungibleToken extends Context implements INEP177, INEP171{
  private metadata: NonFungibleTokenContractMetadata;

  constructor(name:string, symbol: string, decimals: u8, icon:string="", reference:string="", reference_hash:string=""){
    super();
    /*  this.metadata={ name:name, symbol:symbol, decimals:decimals, spec:"vt1.0.0", icon:icon, reference:reference, reference_hash:reference_hash }; */
  }

  public nft_metadata(): NonFungibleTokenContractMetadata {
    return this.metadata;
  }

  public nft_mint( token_id: string, token_owner_id: AccountId, token_metadata: NonFungibleTokenMetadata): Token{
    return new Token( token_id, token_owner_id, token_metadata);
  }

  public nft_resolve_transfer(owner_id: string, receiver_id: string, token_id: string, approved_account_ids: Map<string, number> | null): boolean {
    return false;
  }

  public nft_token(token_id: string): Token | null {
    return null;
  }

  public nft_transfer_call(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null, msg: string): ContractPromise {
    /* 
    const sender_id = super._msgSender();
    // To define how to use memo inside _transfer
    this._transfer( sender_id, receiver_id, amount);
    
    ContractPromise
      .create<FTT_CALL>( receiver_id, "ft_on_transfer", { sender_id, amount, msg }, XCC_GAS )
      .then<FTT_CALLBACK>( context.contractName, "ft_resolve_transfer", { sender_id, receiver_id, amount }, XCC_RESOLVE_GAS )
      .returnAsResult(); */
    return new ContractPromise();
  }

  public nft_transfer(receiver_id: string, token_id: string, approval_id: number | null, memo: string | null): void {
    return;
  }

}