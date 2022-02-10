import { u256 } from "near-sdk-core";
import { NEP141 } from "../index";

describe("example", () => {
  it("should be 42", () => {
    let token: NEP141 = new NEP141();
    expect<u256>(token.totalSupply()).toBe(new u256(1), "è 0, ho partorito CAZZO!!!");
  });
})