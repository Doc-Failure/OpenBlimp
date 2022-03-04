import { ft_on_transfer_impl } from "..";
import {StorageBalanceBounds, StorageBalance} from "../utils";

export interface INEP145{
    storage_deposit( account_id: string|null, registration_only: boolean|null ): StorageBalance;
    storage_withdraw(amount: string|null): StorageBalance;
    storage_unregister(force: boolean|null): boolean;
    storage_balance_bounds(): StorageBalanceBounds;
    storage_balance_of(account_id: string): StorageBalance|null;
}