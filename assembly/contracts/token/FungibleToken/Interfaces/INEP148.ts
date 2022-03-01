import { FungibleTokenMetadata } from "../utils/";

export interface INEP148{
   /*  protected metadata: Metadata; */
    /**
     * ft_metadata
     */
    ft_metadata(): FungibleTokenMetadata;
}