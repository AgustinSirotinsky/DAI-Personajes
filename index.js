import CharacterService from './src/services/character-services.js'
import Personaje from './src/models/Personaje.js'

await Personaje_getAll();


async function Personaje_getAll(){
  let svc = new CharacterService();
  let data;

  data=await svc.getAll();
  console.log(data);
}
async function Personaje_getById(){
  let svc = new CharacterService();
  let data;
  data = await svc.getById(2);
  console.log(data);
}
async function Personaje_insert(){
  let svc = new CharacterService();
  let data;
  let nuevoCharacter = new Personaje();
  
  nuevoCharacter.titulo       = 'patodonal';
  nuevoCharacter.imagen       = 'patodonal';
  nuevoCharacter.fechaDeCreacion         =15/2/2;
  nuevoCharacter.clasificación         =9;

  console.log('\nnuevoCharacter: ');
  console.log(nuevoCharacter);

  data = await svc.insert(nuevoCharacter);
  console.log(data);
}
async function Personaje_update(){
  let svc = new CharacterService();
  let data;
  let nuevoCharacter;

  nuevoCharacter = await svc.getById(9);
  if (nuevoCharacter!= null){
    nuevoCharacter.nombre       = 'patodonal';

      data = await svc.update(nuevoCharacter);
      console.log(data);
  } else {
      console.log('\nuevoCharacter: ');
      console.log(nuevoCharacter);
  }
}
async function Personaje_deleteById(){
  let svc = new CharacterService();
  let data;

  data = await svc.deleteById(14);
  console.log(data);
}
async function Pelicula_getAll(){
  let svc = new MovieService();
  let data;

  data=await svc.getAll();
  console.log(data);
}
async function Pelicula_getById(){
  let svc = new MovieService();
  let data;
  data = await svc.getById(2);
  console.log(data);
}
async function Pelicula_insert(){
  let svc = new MovieService();
  let data;
  let nuevaPelicula = new Pelicula();
  
  nuevaPelicula.nombre       = 'patodonal';
  nuevaPelicula.imagen       = 'patodonal';
  nuevaPelicula.edad         =15;
  nuevaPelicula.peso         =12;
  nuevaPelicula.historia     ='hola soy el patodonal';

  console.log('\nnuevaPelicula: ');
  console.log(nuevaPelicula);

  data = await svc.insert(nuevaPelicula);
  console.log(data);
}
async function Pelicula_update(){
  let svc = new MovieService();
  let data;
  let nuevaPelicula;

  nuevaPelicula = await svc.getById(9);
  if (nuevaPelicula!= null){
    nuevaPelicula.nombre       = 'patodonal';

      data = await svc.update(nuevaPelicula);
      console.log(data);
  } else {
      console.log('\nuevaPelicula: ');
      console.log(nuevaPelicula);
  }
}
async function Pelicula_deleteById(){
  let svc = new MovieService();
  let data;

  data = await svc.deleteById(14);
  console.log(data);
}