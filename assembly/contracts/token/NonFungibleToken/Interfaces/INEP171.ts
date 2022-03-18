import { Token } from "../utils";
import { ContractPromise } from "near-sdk-as";

export interface INEP171{
    nft_transfer( receiver_id: string, token_id: string,  approval_id: number|null, memo: string|null ):void;
    nft_transfer_call( receiver_id: string, token_id: string, approval_id: number|null, memo: string|null, msg: string ): ContractPromise;
    nft_token(token_id: string): Token|null; 
    nft_resolve_transfer( owner_id: string, receiver_id: string, token_id: string, approved_account_ids: Map<string, number>|null): boolean;
}