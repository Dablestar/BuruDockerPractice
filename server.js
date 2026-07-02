const express = require('express');
const app = express();

app.listen(80, () => {
    console.log("https://localhost:8080 서버실행중")
})

app.get('/', (req, res) => {
    res.send("안녕")
})