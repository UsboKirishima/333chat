import Express from 'express'

(async (): Promise<void> => {
    
    const app = await Express();
    
    app.use(Express.text())
    
    const messages = []

    app.post('/send', (req, res) => {
        messages.push(req.body)
        res.json({
            status: 200,
            message: 'Message successfully sent'
        })
    })

    app.get('/fetch', (req, res) => {
        res.send(messages.join('\n'))
    })

    app.listen(8080, () => {
        console.log('Running on http://localhost:8080')
    })
    
})()


