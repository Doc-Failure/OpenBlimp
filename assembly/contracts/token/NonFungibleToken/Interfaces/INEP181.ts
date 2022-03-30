import { u128 } from "near-sdk-as";
import { Token } from "../utils";

export interface INEP181{
    nft_total_supply(): number;
    nft_tokens( from_index: string|null, limit: number|null ): Array<Token>;
    nft_supply_for_owner( account_id: string ): number;
    nft_tokens_for_owner( account_id: string, from_index: u128|null, limit: u128|null, ): Array<Token>;
}