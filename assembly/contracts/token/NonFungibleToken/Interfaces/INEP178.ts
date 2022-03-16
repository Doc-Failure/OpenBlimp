import { NonFungibleTokenMetadata } from "../utils";
import { ContractPromise, u128 } from "near-sdk-as";

export interface INEP178{
    nft_approve( token_id: string, account_id: string, msg: string|null ): void|ContractPromise;
    nft_revoke( token_id: string, account_id: string ):void;
    nft_revoke_all(token_id: string):void;
    nft_is_approved( token_id: string, approved_account_id: string, approval_id: number|null ): boolean;
}