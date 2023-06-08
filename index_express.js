import express from "express";
import CharacterService from './src/services/character-services.js'
import MovieService from './src/services/movie-service.js';
import Pelicula from './src/models/Pelicula.js'
import Personaje from './src/models/Personaje.js'
const svc1 = new CharacterService();
const svc2 = new MovieService();

const app =express();
const port=3000;

app.get('/', (req,res)=>{
    res.send('Para ver toda la informacion de personajes y peliculas entrar a /charactersGetAll y /moviesGetAll');
})

app.listen(port,()=> {
    console.log(`Pagina abierte en el puerto ${port}`)
}
)

app.get('/juan', function(req, res) {
    res.send('juan');
})

app.get('/charactersGetAll',async (req,res) =>{
    const charactersGetAll = await svc1.getAll();
    return res.status(200).json(charactersGetAll);
})

app.get('/charactersGetById',async (req,res) =>{
    const charactersGetById = await svc1.getById(8);
    return res.status(200).json(charactersGetById);
})

app.get('/moviesGetAll',async (req,res) =>{
    const moviesGetAll = await svc2.getAll();
    return res.status(200).json(moviesGetAll);
})

app.get('/moviesGetById',async (req,res) =>{
    const moviesGetById = await svc2.getById(3);
    return res.status(200).json(moviessGetById);
})
