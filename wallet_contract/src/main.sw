contract;
use wallet_lib::Wallet;
use std::{
    constants::BASE_ASSET_ID,
    address::Address, 
    assert::assert, 
    context::*, 
    contract_id::ContractId, 
};
storage {
    balance : u64 = 100,
}

impl Wallet for Contract{
    #[storage(read,write)]
    fn recieve_funds(){
        let newBalance = storage.balance.read() + msg_amount();
        storage.balance.write(newBalance);
    }

    #[storage(read,write)]
    fn transfer_funds(amount_to_send : u64, reciever_address:Address){
        let newBalance = storage.balance.read() - msg_amount();
        storage.balance.write(newBalance);
        //transfer_to_output(amount_to_send, BASE_ASSET_ID, reciever_address);
    }    
}
