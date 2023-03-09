import axios from 'axios';

export class Client {
    
    public constructor() {}
    
    public async start() {
        
        axios.post('https://localhost:8080', {
            author: 'usbo',
            message: 'ganger'
        }, { 
                headers: {
                    'Content-Type': 'application/json'
                }
            }
        )
        
    }
}