script;

use std::constants::BASE_ASSET_ID;

use wallet_lib::Wallet;

fn main() {
    let caller = abi(Wallet, 0xc9e8b612bb3efa4805c062c6f9e5542aa0a6f7746c17db76c757f9d240ba430c);
    caller.transfer_funds(20, dfdf);
}
