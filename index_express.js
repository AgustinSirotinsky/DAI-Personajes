import express from "express";
import CharacterService from './src/services/character-services.js'
import Personaje from './src/models/Personaje.js'

const app =express();
const port=3000;

app.get('/', (req,res)=>{
    res.send('Hello World!');
})

app.listen(port,()=> {
    console.log(`Pagina abierte en el puerto ${port}`)
}
)

app.get('/about', function(req, res) {
    res.send('Soy la pagina del about!');
})

app.get('/juan', function(req, res) {
    res.send('juan');
})

app.get('/getAll', function(req, res) {
    let svc = new CharacterService();
    let data;
  
    data=svc.getAll();
    res.send(data);
    console.log(data)
})

async function Personaje_getAll(){
    let svc = new CharacterService();
    let data;
  
    data=await svc.getAll();
    res.send(data);
  }