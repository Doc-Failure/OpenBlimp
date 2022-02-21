import { u128 , VMContext } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";
import { NEP141DecimalsMock } from "../contracts/token/mocks/NEP141DecimalsMock";

let token: NEP141Mock;

const initialHolder:string = "account#1.testnet";
const recipient:string = "account#2.testnet";
const anotherAccount:string = "account#3.testnet";

const name:string = 'My Token';
const symbol:string  = 'MTKN';

const initialSupply = u128.div(u128.Max, new u128(2));

let amount : u128 = new u128(50);
class NEP141Test{
  testConstructorFields():void{
    describe('NEP141', () => {
      beforeEach(() => {
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
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


      it('_mint',() => {
        it('rejects a null account', () => { 
          throws('Mint to the zero address', () =>{
            token.mint("", amount )
          })
        });
    
      describe('for a non zero account', () => {
          beforeEach(() => {
            token.mint(recipient, amount);
          });
    
          it('increments totalSupply', () => {
            const expectedSupply:u128 = u128.add(initialSupply, amount);
            expect(token.totalSupply()).toBe(expectedSupply);
          });
    
          it('increments recipient balance', () => {
            expect(token.balanceOf(recipient)).toBe(amount);
          });
    
          /* it('emits Transfer event', () => {
            const event = expectEvent(
              this.receipt,
              'Transfer',
              { from: ZERO_ADDRESS, to: recipient },
            );
    
            expect(event.args.value).to.be.bignumber.equal(amount);
          }); */
        });
      });  

      describe('_burn', () => {
        it('rejects a null account', () => {
          throws("NEP141: burn from the zero address", ()=>{ token.burn("", new u128(1))});
        });


        describe('for a non zero account', () => {
          it('rejects burning more than balance', () => {
            throws('NEP141: burn amount exceeds balance' , () => { token.burn(initialHolder, u128.add(initialSupply, new u128(1))) });
          });
        })

        describe('for entire balance', ()=> {
          beforeEach(() => {
            token.burn(initialHolder, initialSupply);
          });

          it('decrements totalSupply', ()=> {
            const expectedSupply = u128.sub(initialSupply,initialSupply);
            expect( token.totalSupply()).toBe(expectedSupply);
          });

          it('decrements initialHolder balance', () => {
            const expectedBalance = u128.sub(initialSupply,initialSupply);
            expect( token.balanceOf(initialHolder)).toBe(expectedBalance);
          });

        /*   it('emits Transfer event', async function () {
            const event = expectEvent(
              this.receipt,
              'Transfer',
              { from: initialHolder, to: ZERO_ADDRESS },
            );
            expect(event.args.value).to.be.bignumber.equal(amount);
          }); */
        });


        describe('for less amount than balance', ()=> {
          beforeEach(() => {
            token.burn(initialHolder, u128.sub(initialSupply,new u128(1)));
          });

          it('decrements totalSupply', ()=> {
            const expectedSupply = u128.sub(initialSupply,u128.sub(initialSupply,new u128(1)));
            expect( token.totalSupply()).toBe(expectedSupply);
          });

          it('decrements initialHolder balance', () => {
            const expectedBalance = u128.sub(initialSupply,u128.sub(initialSupply,new u128(1)));
            expect( token.balanceOf(initialHolder)).toBe(expectedBalance);
          });

        /*   it('emits Transfer event', async function () {
            const event = expectEvent(
              this.receipt,
              'Transfer',
              { from: initialHolder, to: ZERO_ADDRESS },
            );
            expect(event.args.value).to.be.bignumber.equal(amount);
          }); */
        });
      });
    }) 
  }

  shouldBehaveLikeNEP141():void {
    describe('NEP141 behave', () => {
      beforeEach(() => {
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
      });
      describe('total supply', ()=> {
        it('returns the total amount of tokens', ()=>{
          expect<u128>(token.totalSupply()).toBe(initialSupply);
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
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
      });
      throws('reverts', () =>{
        const amountToSend:u128=new u128(100);
        token.transfer(recipient, amountToSend, "");
      }, "Transfer amount exceeds balance");
    });

    describe('when the sender transfers all balance', ()=> {
      beforeEach(() => {
        VMContext.setSigner_account_id(initialHolder);
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
      });
      it('transfers the requested amount', ()=>{
        token.transfer(recipient, initialSupply, null);
        expect(token.balanceOf(initialHolder)).toBe(u128.Zero);
        expect(token.balanceOf(recipient)).toBe(initialSupply);
      });
    })

    describe('when the sender transfers zero tokens', function () {
      beforeEach(() => {
        VMContext.setSigner_account_id(initialHolder);
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
      });
      it('transfers the requested amount', ()=> {
       token.transfer(recipient, u128.Zero, "");
       expect(token.balanceOf(initialHolder)).toBe(initialSupply);
       expect(token.balanceOf(recipient)).toBe(u128.Zero);
      });
    });

    describe('when the recipient is the zero address', ()=> {
      beforeEach(() => {
        VMContext.setSigner_account_id(initialHolder);
        token = new NEP141Mock(name, symbol, initialHolder, initialSupply);
      });
      throws('throws', () =>{
        const amountToSend:u128=new u128(100);
        token.transfer("", amountToSend, "");
      }, "Transfer to the zero address");
    });
  });

}}


let res:NEP141Test=new NEP141Test;
res.testConstructorFields();
res.shouldBehaveLikeNEP141();
res.shouldBehaveLikeNEP141Transfer();