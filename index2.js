import MovieService from './src/services/movie-service.js';
import Pelicula from './src/models/Pelicula.js'

await Pelicula_insert();

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
    
    nuevaPelicula.titulo       = 'patodonal';
    nuevaPelicula.imagen       = 'patodonal';
    nuevaPelicula.fechaDeCreacion         =0;
    nuevaPelicula.clasificacion         =10;
  
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