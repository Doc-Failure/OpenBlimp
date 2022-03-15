import { u128 , VMContext } from "near-sdk-as";
import { FungibleTokenMock } from "../contracts/token/mocks/FungibleTokenMock";
import { FungibleToken } from "../contracts/token/FungibleToken/preset/FungibleToken";
import { FungibleTokenMetadata } from "../contracts/token/FungibleToken/utils";

let token: FungibleTokenMock;

const initialHolder:string = "account#1.testnet";
const recipient:string = "account#2.testnet";
const anotherAccount:string = "account#3.testnet";

const name:string = 'My Token';
const symbol:string  = 'MTKN';
let decimals:u8 = 18;

const metadata: FungibleTokenMetadata = {
  name: name,
  symbol: symbol,
  decimals: decimals,
  spec: "vt1.0.0",
  icon: "",
  reference: "",
  reference_hash: ""
};
const initialSupply = u128.div(u128.Max, new u128(2));

let amount : u128 = new u128(50);
class NEP141Test{
  testConstructorFields():void{
    describe('NEP148', () => {
      it('has metadata',() => {
        token = new FungibleTokenMock(name, symbol, decimals, initialHolder, initialSupply);
        expect<FungibleTokenMetadata>(token.ft_metadata()).toStrictEqual(metadata, "Metadata Test Broken");
      });  
      it('has 24 decimals',() => {
        token = new FungibleTokenMock(name, symbol, 24, initialHolder, initialSupply);
        expect<u8>(token.ft_metadata().decimals).toBe(24);
      });
      describe('set decimals', () => {
        const decimals:u8 = u8.MAX_VALUE;
        it('can set decimals during construction', () => {
          const tokenDec = new FungibleTokenMock(name, symbol, decimals, initialHolder, initialSupply);
          expect<u8>(tokenDec.ft_metadata().decimals).toBe(decimals);
        });
      });
    });

    describe('NEP141', () => {
      beforeEach(() => {
        token = new FungibleTokenMock(name, symbol, decimals,initialHolder, initialSupply);
      });    

      it('_mint',() => {
        it('rejects a null account', () => { 
          throws('Mint to the zero address', () =>{
            token.mint("", amount );
          });
        });
    
        describe('for a non zero account', () => {
          beforeEach(() => {
            token.mint(recipient, amount);
          });
    
          it('increments ft_total_supply', () => {
            const expectedSupply:u128 = u128.add(initialSupply, amount);
            // console.log("supply: "+expectedSupply.toString());
            expect<u128>(token.ft_total_supply()).toBe(expectedSupply);
          });
    
          it('increments recipient balance', () => {
            expect<u128>(token.ft_balance_of(recipient)).toBe(amount);
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
          throws("NEP141: burn from the zero address", ()=>{ token.burn("", new u128(1));});
        });


        describe('for a non zero account', () => {
          it('rejects burning more than balance', () => {
            throws('NEP141: burn amount exceeds balance' , () => { token.burn(initialHolder, u128.add(initialSupply, new u128(1))); });
          });
        });

        describe('for entire balance', ()=> {
          beforeEach(() => {
            token.burn(initialHolder, initialSupply);
          });

          it('decrements ft_total_supply', ()=> {
            const expectedSupply:u128 = u128.sub(initialSupply,initialSupply);
            expect<u128>( token.ft_total_supply()).toBe(expectedSupply);
          });

          it('decrements initialHolder balance', () => {
            const expectedBalance:u128 = u128.sub(initialSupply,initialSupply);
            expect<u128>( token.ft_balance_of(initialHolder)).toBe(expectedBalance);
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

          it('decrements ft_total_supply', ()=> {
            const expectedSupply:u128 = u128.sub(initialSupply,u128.sub(initialSupply,new u128(1)));
            expect<u128>( token.ft_total_supply()).toBe(expectedSupply);
          });

          it('decrements initialHolder balance', () => {
            const expectedBalance:u128 = u128.sub(initialSupply,u128.sub(initialSupply,new u128(1)));
            expect<u128>( token.ft_balance_of(initialHolder)).toBe(expectedBalance);
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
    }); 
  }

  shouldBehaveLikeNEP141():void {
    describe('NEP141 behave', () => {
      beforeEach(() => {
        token = new FungibleTokenMock(name, symbol, decimals,initialHolder, initialSupply);
      });
      describe('total supply', ()=> {
        it('returns the total amount of tokens', ()=>{
          expect<u128>(token.ft_total_supply()).toBe(initialSupply);
        });
      });
      describe('ft_balance_of', ()=> {
        describe('when the requested account has no tokens', ()=> {
          it('returns zero', ()=> {
            expect<u128>( token.ft_balance_of(anotherAccount)).toBe(u128.Zero);
          });
        });
        describe('when the requested account has some tokens', ()=> {
          it('returns the total amount of tokens', ()=> {
            expect<u128>(token.ft_balance_of(initialHolder)).toBe(initialSupply);
          });
        });
      });
    });
  }


  shouldBehaveLikeNEP141Transfer():void {
    describe('when the recipient is not the zero address', ()=> {
      describe('when the sender does not have enough balance', ()=> {
        beforeEach(() => {
          VMContext.setSigner_account_id(anotherAccount);
          token = new FungibleTokenMock(name, symbol, decimals,initialHolder, initialSupply);
        });
        throws('reverts', () =>{
          const amountToSend:u128=new u128(100);
          token.ft_transfer(recipient, amountToSend, "");
        }, "Transfer amount exceeds balance");
      });

      describe('when the sender transfers all balance', ()=> {
        beforeEach(() => {
          VMContext.setSigner_account_id(initialHolder);
          VMContext.setAccount_balance(u128.fromString("1000000"));
        });
        it('transfers the requested amount', ()=>{
          const FT:FungibleToken= new FungibleToken(name, symbol, decimals, "", "", "");
          FT.ft_mint(initialHolder, initialSupply);

          VMContext.setAttached_deposit(u128.One);
          FT.ft_transfer(recipient, initialSupply, null);
          expect(FT.ft_balance_of(initialHolder)).toBe(u128.Zero);
          expect(FT.ft_balance_of(recipient)).toBe(initialSupply);
        });
      });

      describe('when the sender transfers zero tokens', function () {
        beforeEach(() => {
          VMContext.setSigner_account_id(initialHolder);
          VMContext.setAccount_balance(u128.fromString("1000000"));
          token = new FungibleTokenMock(name, symbol, decimals, initialHolder, initialSupply);
        });
        it('transfers the requested amount', ()=> {
          VMContext.setAttached_deposit(u128.One);
          token.ft_transfer(recipient, u128.Zero, null);
          expect(token.ft_balance_of(initialHolder)).toBe(initialSupply);
          expect(token.ft_balance_of(recipient)).toBe(u128.Zero);
        });
      });

      describe('when the recipient is the zero address', ()=> {
        beforeEach(() => {
          VMContext.setSigner_account_id(initialHolder);
          VMContext.setAccount_balance(u128.fromString("1000000"));
          token = new FungibleTokenMock(name, symbol, 10,initialHolder, initialSupply);
        });
        throws('throws', () =>{
          const amountToSend:u128=new u128(100);
          token.ft_transfer("", amountToSend, "");
        }, "Transfer to the zero address");
      });
    });

  }}


let res:NEP141Test=new NEP141Test;
res.testConstructorFields();
res.shouldBehaveLikeNEP141();
res.shouldBehaveLikeNEP141Transfer();