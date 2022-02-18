import  {INEP141 } from "../INEP141"

export default interface INEP141Metadata extends INEP141 {
    name(): string;
    symbol(): string;
    decimals(): u8;
}