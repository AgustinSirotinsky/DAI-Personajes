import express from "express";
import cors from "cors";
import CharacterRouter from "./src/controllers/characterController.js";
import MoviesRouter from "./src/controllers/movieController.js";

const app = express()
const port=3000;

app.use(cors());
app.use(express.json());
app.use("/api/characters", CharacterRouter)
app.use("/api/movies", MoviesRouter)

app.get('/', function (req, res) {
  res.send('Direcciones: localhost:3000/api/characters localhost:3000/auth/login localhost:3000/api/movies')
})

app.listen(port, () => {
  console.log(`Pagina abierta en el puerto ${port}`);
});
