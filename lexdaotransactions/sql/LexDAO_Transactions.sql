CREATE DATABASE lexdao_transactions;

\c lexdao_transactions

/* Will want to later come back and include a CREATE TYPE AS ENUM
table once we have a list of all of the DAO wallets to explicitly
define the wallets which are part of the DAO and SubDAOs.  Will likely
use this to define the chart of accounts at some later date
*/


CREATE TABLE wallet_test(
    "time" TIMESTAMP,
    "hash" VARCHAR, 
    "from_addr" VARCHAR,
    "to" VARCHAR,
    "eth_quantity" NUMERIC,
    "eth_gas" NUMERIC,
    "eth_total" NUMERIC,
    "blocknumber" INT
);

INSERT INTO wallet_test("time", "hash", "from_addr", "to", "eth_quantity", "eth_gas", eth_total, blockNumber)
VALUES ('2023-01-09 17:36:47','0x87bbe7e9a7538baa4c79c7f9152f7b6dc658c1af1c3ed87d82c2fdb3c5647313','0x71f9a84813e6a5485feaf9543577b7e8f6dce768','0x5a741ab878bb65f6ae5506455fb555eaf3094b3f','0.2275029','0.001474722129959736','0.22897762212995976','16372265')
;





/*
print("Time:", time)
         print("Hash:", hash)
         print("From:", from_addr)
         print("To:", to)
         print("Token Quantity:", eth_quantity)
         print("Gas Cost:",eth_gas)
         print("Transaction Total:", eth_total)
         print("Block Number:", blocknumber)

blocknumber = tx["blockNumber"]
         hash = tx["hash"]
         to = tx["to"]
         from_addr = tx["from"]
         eth_quantity= int(tx["value"]) / ETHER_TO_GWEI
         eth_gas = int(tx["gasUsed"]) * int(tx["gasPrice"]) / ETHER_TO_GWEI #I'm not clear why this needs to be multiplied for gas but not Ethereum Value
         eth_total = eth_gas + eth_quantity
         time = datetime.fromtimestamp(int(tx["timeStamp"]))


*/