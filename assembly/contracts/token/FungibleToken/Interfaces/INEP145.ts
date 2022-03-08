import {FungibleTokenStorageBalanceBounds, FungibleTokenStorageBalance} from "../utils";

export interface INEP145{
    storage_deposit( account_id: string|null, registration_only: boolean|null ): FungibleTokenStorageBalance;
    storage_withdraw(amount: string|null): FungibleTokenStorageBalance;
    storage_unregister(force: boolean|null): boolean;
    storage_balance_bounds(): FungibleTokenStorageBalanceBounds;
    storage_balance_of(account_id: string): FungibleTokenStorageBalance|null;
}