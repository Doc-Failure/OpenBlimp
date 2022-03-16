import { Token } from "../utils";
import { ContractPromise, u128 } from "near-sdk-as";

export interface INEP181{
    nft_total_supply(): string;
    // default: "0" // default: unlimited (could fail due to gas limit)
    nft_tokens( from_index: string|null, limit: number|null ): Token[];
    nft_supply_for_owner( account_id: string ): string;
    nft_tokens_for_owner( account_id: string, from_index: string|null, limit: number|null, ): Token[];
}