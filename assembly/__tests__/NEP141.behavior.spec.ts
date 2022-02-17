import { u128 } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";

function shouldBehaveLikeERC20 (errorPrefix:string, token:NEP141Mock, initialSupply:u128, initialHolder:string, recipient:string, anotherAccount:string) :void {
  describe('total supply', () => {
    it('returns the total amount of tokens', ()=> {
     /*  expect<u128>(token.totalSupply()).toBe(initialSupply); */
    });
  });

}

export {shouldBehaveLikeERC20}