import { FungibleToken } from "../FungibleToken/preset/FungibleToken";
import { u128 } from "near-sdk-as";

/* Class for test purpose only */
export class FungibleTokenMock extends FungibleToken {

  constructor( name: string, symbol: string, decimals: u8, initialAccount: string, initialSupply: u128){
    super(name, symbol, decimals, "", "", "");
    super.ft_mint(initialAccount, initialSupply);
  }

  public mint(account: string, amount: u128):void {
    super.ft_mint(account, amount);
  }

  public burn(account: string, amount: u128):void {
    super.ft_burn(account, amount);
  }
}