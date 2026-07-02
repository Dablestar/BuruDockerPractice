const express = require('express');
const app = express();

app.listen(5000, () => {
    console.log("http://localhost:5000 서버실행중")
})

app.get('/', (req, res) => {
    res.send("안녕")
})