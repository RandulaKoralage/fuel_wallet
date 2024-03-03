contract;
use wallet_lib::Wallet
use std::{
    constants::BASE_ASSET_ID,
    context::{
        msg_amount,
    },
     token::transfer_to_address
};
storage {
    balance : u64 = 100
}

impl Wallet for Contract{
    [#storage(read,write)]
    fn recieve_funds(){
        storage.balance = storage.balance + msg_amount();
    }

    [#storage(read,write)]
    fn transfer_funds(amount_to_send : u64, reciever_address:Address){
        storage.balance = storage.balance - msg_amount();
        transfer_to_output(amount_to_send, BASE_ASSET_ID, reciever_address);
    }    
}
