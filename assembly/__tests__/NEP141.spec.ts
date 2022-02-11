import { u128 } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";

let token: NEP141Mock;
/* function shouldBehaveLikeNEP141 (errorPrefix:string, initialSupply:string, initialHolder:string, recipient:string, anotherAccount:string) {} */
  describe('total supply', function () {

    beforeEach(() => {
      token = new NEP141Mock("100", "100", "aaa", new u128(10000));
    });

    it('returns the total amount of tokens', () => {
      expect<u128>(token.totalSupply()).toBe(new u128(10000), "totalSupply should be 10000");
    });
  });
