library wallet_lib

abi Wallet{
   [#storage(read,write)]
   fn recieve_funds();

   [#storage(read,write)]
   fn transfer_funds(amount_to_send : u64, reciever_address:Address);
}