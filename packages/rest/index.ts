import Express from 'express'

(async (): Promise<void> => {
    
    const app = await Express();
    
    app.get('/', (req, res) => {
        res.send('Hello World!')
    })    
    
    app.listen('8080', () => {
        console.log(`333chat listening on port ...`)
    })
})()
