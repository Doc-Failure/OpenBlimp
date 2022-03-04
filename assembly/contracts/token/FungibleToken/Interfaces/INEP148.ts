import { FungibleTokenMetadata } from "../utils";

export interface INEP148{
    /* metadata: FungibleTokenMetadata; */
    /**
     * ft_metadata
     */
    ft_metadata(): FungibleTokenMetadata;
}