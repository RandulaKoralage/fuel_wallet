library;

use std::{
    constants::BASE_ASSET_ID,
    address::Address, 
    assert::assert, 
    context::*, 
    contract_id::ContractId, 
};

abi Wallet {
   #[storage(read,write)]
   fn recieve_funds();

   #[storage(read,write)]
   fn transfer_funds(amount_to_send : u64, reciever_address:Address);
}
