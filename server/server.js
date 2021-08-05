require('dotenv').config()
const express =  require("express");
const cors =  require("cors");
const app = express();
const db  =  require('./models');
const routes = require('./routes');

db.sequelize.sync();
app.use(cors())
app.use(express.json());
app.use(express.urlencoded({extended:1}));

app.use('/api',routes);


const port = 8080;
app.listen(port,()=>{
    console.log(`Server is Running on Port ${port}`)
})