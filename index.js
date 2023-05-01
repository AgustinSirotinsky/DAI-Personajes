import express from "express";
import cors from "cors";
import CharacterRouter from "./src/controllers/characterController.js";

const app = express()
const port=3000;

app.use(cors());
app.use(express.json());
app.use("/api/characters", CharacterRouter)

app.get('/', function (req, res) {
  res.send('Hello World!!!')
})

app.listen(port, () => {
  console.log(`Pagina abierta en el puerto ${port}`);
});
