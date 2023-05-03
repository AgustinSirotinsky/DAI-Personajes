import express from "express";
import cors from "cors";
import CharacterService from './src/services/character-services.js'
import Personaje from './src/models/Personaje.js'


const app = express()
const port=3000;

app.use(cors());
app.use(express.json());

app.listen(port, () => {
  console.log(`Pagina abierta en el puerto ${port}`);
});
