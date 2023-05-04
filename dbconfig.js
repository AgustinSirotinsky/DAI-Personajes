/*
const config = {
    user        : 'Pizzas',
    password    : 'Pizzas',
    server      : 'N059D021', 
    database    : 'DAI-Pizzas',
    options     : {
        trustServerCertificate  : true,
        trustedConnection       : true
    }
}

export default config;
*/

import 'dotenv/config'

const config = {
    user        : process.env.DB_USER,
    password    : process.env.DB_PASSWORD,
    server      : process.env.DB_SERVER,
    database    : process.env.DB_DATABASE,
    options     : {
        trustServerCertificate  : true,
        trustedConnection       : true,
    }
}

export default config;
/*
Archivo .env
    DB_USER    	= "Pizzas"
    DB_PASSWORD	= "Pizzas"
    DB_SERVER  	= "N059D021" 
    DB_DATABASE	= "DAI-Pizzas"
    */
