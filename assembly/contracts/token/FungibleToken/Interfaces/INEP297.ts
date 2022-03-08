// Interface to capture data about an event
// Arguments
// * `standard`: name of standard, e.g. nep171
// * `version`: e.g. 1.0.0
// * `event`: type of the event, e.g. nft_mint
// * `data`: associate event data. Strictly typed for each set {standard, version, event} inside corresponding NEP
export interface INEP297{
    standard: string,
    version: string,
    event: string,
    data: string|null,
}