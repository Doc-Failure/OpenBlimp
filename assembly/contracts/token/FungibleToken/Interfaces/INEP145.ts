import {FungibleTokenStorageBalanceBounds, FungibleTokenStorageBalance} from "../utils";

export interface INEP145{
    storage_deposit( account_id: string, registration_only: boolean ): FungibleTokenStorageBalance;
    storage_withdraw(amount: string|null): FungibleTokenStorageBalance;
    storage_unregister(force: boolean): boolean;
    storage_balance_bounds(): FungibleTokenStorageBalanceBounds;
    storage_balance_of(account_id: string): FungibleTokenStorageBalance|null;
}