import { u128 } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";
/* import { faker } from '@faker-js/faker';
 */

let token: NEP141Mock;

const initialHolder:string = "1";
const recipient:string = "2";
const anotherAccount:string = "3";

const name:string = 'My Token';
const symbol:string  = 'MTKN';

const initialSupply = u128.Max;
  describe('NEP141', function () {

    beforeEach(() => {
      token = new NEP141Mock(name, symbol, initialHolder, u128.Max);
    });

    it('has a name',() => {
      expect<string>(token.name()).toBe(name, "Name Test Broken");
    });

    it('has a symbol', () => {
      expect<string>(token.symbol()).toBe(symbol);
    });

    it('has 18 decimals',() => {
      expect<u8>(token.decimals()).toBe(u8(18));
    });


    describe('total supply', ()=>{
      it('returns the total amount of tokens', ()=>{
        expect<u128>( token.totalSupply()).toBe(initialSupply);
      });
    });
  
    describe('balanceOf',()=>{
      describe('when the requested account has no tokens', ()=>{
        it('returns zero', function () {
          expect<u128>( token.balanceOf(anotherAccount)).toBe(u128.Zero);
        });
      });
  
      describe('when the requested account has some tokens',()=> {
        it('returns the total amount of tokens', ()=> {
          expect( token.balanceOf(initialHolder)).toBe(initialSupply);
        });
      });
    });
  });
