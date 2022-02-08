interface INEP141 {
    /************************************/
    /* CHANGE METHODS on fungible token */
    /************************************/
    // Simple transfer to a receiver.
    //
    // Requirements:
    // * Caller of the method must attach a deposit of 1 yoctoⓃ for security purposes
    // * Caller must have greater than or equal to the `amount` being requested
    //
    // Arguments:
    // * `receiver_id`: the valid NEAR account receiving the fungible tokens.
    // * `amount`: the number of tokens to transfer, wrapped in quotes and treated
    //   like a string, although the number will be stored as an unsigned integer
    //   with 128 bits.
    // * `memo` (optional): for use cases that may benefit from indexing or
    //    providing information for a transfer.
    ft_transfer(
        receiver_id: string,
        amount: string,
        memo: string|null
    ): void;

    // Transfer tokens and call a method on a receiver contract. A successful
    // workflow will end in a success execution outcome to the callback on the same
    // contract at the method `ft_resolve_transfer`.
    //
    // You can think of this as being similar to attaching native NEAR tokens to a
    // function call. It allows you to attach any Fungible Token in a call to a
    // receiver contract.
    //
    // Requirements:
    // * Caller of the method must attach a deposit of 1 yoctoⓃ for security
    //   purposes
    // * Caller must have greater than or equal to the `amount` being requested
    // * The receiving contract must implement `ft_on_transfer` according to the
    //   standard. If it does not, FT contract's `ft_resolve_transfer` MUST deal
    //   with the resulting failed cross-contract call and roll back the transfer.
    // * Contract MUST implement the behavior described in `ft_resolve_transfer`
    //
    // Arguments:
    // * `receiver_id`: the valid NEAR account receiving the fungible tokens.
    // * `amount`: the number of tokens to transfer, wrapped in quotes and treated
    //   like a string, although the number will be stored as an unsigned integer
    //   with 128 bits.
    // * `memo` (optional): for use cases that may benefit from indexing or
    //    providing information for a transfer.
    // * `msg`: specifies information needed by the receiving contract in
    //    order to properly handle the transfer. Can indicate both a function to
    //    call and the parameters to pass to that function.
    ft_transfer_call(
    receiver_id: string,
    amount: string,
    memo: string|null,
    msg: string
    ): Promise<string>;

    /****************************************/
    /* CHANGE METHODS on receiving contract */
    /****************************************/

    // This function is implemented on the receiving contract.
    // As mentioned, the `msg` argument contains information necessary for the receiving contract to know how to process the request. This may include method names and/or arguments. 
    // Returns a value, or a promise which resolves with a value. The value is the
    // number of unused tokens in string form. For instance, if `amount` is 10 but only 9 are
    // needed, it will return "1".
    ft_on_transfer(
        sender_id: string,
        amount: string,
        msg: string
    ): string;

    /****************/
    /* VIEW METHODS */
    /****************/

    // Returns the total supply of fungible tokens as a string representing the value as an unsigned 128-bit integer.
    ft_total_supply(): string;

    // Returns the balance of an account in string form representing a value as an unsigned 128-bit integer. If the account doesn't exist must returns `"0"`.
    ft_balance_of(
        account_id: string
    ): string;
}