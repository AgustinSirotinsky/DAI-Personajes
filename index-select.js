import config from "./dbconfig.js";
import sql from 'mssql';

let pool = await sql.connect(config)
let result= await pool.resquet().query("Select * From Pelicula")

console.log("hola")

process.exit