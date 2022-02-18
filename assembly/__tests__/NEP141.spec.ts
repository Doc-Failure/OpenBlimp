import { u128 , VMContext } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";
import { NEP141DecimalsMock } from "../contracts/token/mocks/NEP141DecimalsMock";
/* import { shouldBehaveLikeNEP141 } from "./NEP141.behavior" */
/* import { faker } from '@faker-js/faker';
 */

let token: NEP141Mock;

const initialHolder:string = "1";
const recipient:string = "2";
const anotherAccount:string = "3";

const name:string = 'My Token';
const symbol:string  = 'MTKN';

const initialSupply = u128.Max;

class NEP141Test{
  testConstructorFields():void{
    describe('NEP141 Metadata', () => {
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
    
      describe('set decimals', () => {
        const decimals:u8 = u8.MAX_VALUE;
        it('can set decimals during construction', () => {
          const tokenDec = new NEP141DecimalsMock(name, symbol, decimals);
          expect<u8>(tokenDec.decimals()).toBe(decimals);
        });
      });
    });
  }

  shouldBehaveLikeNEP141():void {

    describe('NEP141 behave', () => {

      beforeEach(() => {
        token = new NEP141Mock(name, symbol, initialHolder, u128.Max);
      });

      describe('total supply', ()=> {
        it('returns the total amount of tokens', ()=>{
          expect<u128>(token.totalSupply()).toBe(u128.Max);
        });
      });


      describe('balanceOf', ()=> {
        describe('when the requested account has no tokens', ()=> {
          it('returns zero', ()=> {
            expect<u128>( token.balanceOf(anotherAccount)).toBe(u128.Zero);
          });
        });

        describe('when the requested account has some tokens', ()=> {
          it('returns the total amount of tokens', ()=> {
            expect<u128>(token.balanceOf(initialHolder)).toBe(initialSupply);
          });
        });
      });
    })
  }


 shouldBehaveLikeNEP141Transfer():void {
  describe('when the recipient is not the zero address', ()=> {

    describe('when the sender does not have enough balance', ()=> {
      beforeEach(() => {
        VMContext.setSigner_account_id(anotherAccount);
        token = new NEP141Mock(name, symbol, initialHolder, u128.Max);
      });

      throws('reverts', () =>{
        const amountToSend:u128=new u128(100);
        token.transfer(recipient, amountToSend, "");
      });
    });

    describe('when the sender transfers all balance', ()=> {
      beforeEach(() => {
        VMContext.setSigner_account_id(initialHolder);
        token = new NEP141Mock(name, symbol, initialHolder, u128.Max);
      });

      it('transfers the requested amount', ()=>{
        token.transfer(recipient, u128.Max, null);
        expect(token.balanceOf(initialHolder)).toBe(u128.Zero);
        expect(token.balanceOf(recipient)).toBe(u128.Max);
      });
    })

  })
}}


let res:NEP141Test=new NEP141Test;
res.testConstructorFields();
res.shouldBehaveLikeNEP141();
res.shouldBehaveLikeNEP141Transfer();