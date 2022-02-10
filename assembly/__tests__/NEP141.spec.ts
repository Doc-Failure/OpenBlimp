import { u256 } from "near-sdk-core";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";

/* function shouldBehaveLikeNEP141 (errorPrefix:string, initialSupply:string, initialHolder:string, recipient:string, anotherAccount:string) {} */
  describe('total supply', function () {
    it('returns the total amount of tokens', () => {
      let token: NEP141Mock = new NEP141Mock("100", "100", "aaa", new u256(10000));
      expect<u256>(token.totalSupply()).toBe(new u256(10000), "totalSupply should be 10000");
    });
  });
