import { u128 } from "near-sdk-as";
import { NEP141Mock } from "../contracts/token/mocks/NEP141Mock";
import {shouldBehaveLikeERC20} from "./NEP141.behavior.spec";
import {faker} from '@faker-js/faker';

let token: NEP141Mock;

/* const [ initialHolder, recipient, anotherAccount ]:string = accounts; */
const initialHolder:string = faker.name.findName();
const recipient:string = faker.name.findName();
const anotherAccount:string = faker.name.findName();

const name:string = 'My Token';
const symbol:string  = 'MTKN';

const initialSupply = u128.Max;
  describe('NEP141', function () {

    beforeEach(() => {
      token = new NEP141Mock(name, symbol, initialHolder, u128.Max);
    });

    it('has a name',() => {
      expect<string>(token.name()).toBe(name);
    });

    it('has a symbol', () => {
      expect<string>(token.symbol()).toBe(symbol);
    });

    it('has 18 decimals',() => {
      expect<u8>(token.decimals()).toBe(u8(18));
    });

    shouldBehaveLikeERC20("NEP141", token, initialSupply, initialHolder, recipient, anotherAccount);
  });
