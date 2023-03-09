import { Client } from './structures/Client'

const client = new Client();

(async (): Promise<void|any> => {
   await client.start(); 
})()