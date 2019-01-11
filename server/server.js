require('dotenv').config();
const express = require('express');
const session = require('express-session');
const massive = require('massive');
const controller = require('./controller');

const { SERVER_PORT, CONNECTION_STRING } = process.env;

const app = express();

//MIDDLEWARE
app.use(express.json());

//DATABASE CONNECTION
massive(CONNECTION_STRING).then(db => {
   app.set('db', db)
      console.log('Connected to database')
   app.listen(SERVER_PORT, () => { 
      console.log(`Listening on port: ${SERVER_PORT}`)
   })
})

//ENDPOINTS
app.post('/auth/register', controller.register) //register
app.post('/auth/login', controller.login) //login