import CharacterService from './src/services/character-services.js'
import Personaje from './src/models/Personaje.js'

await test_insert();

async function test_getAll(){
  let svc = new CharacterService();
  let data;

  data=await svc.getAll();
  console.log(data);
}
async function test_getById(){
  let svc = new CharacterService();
  let data;
  data = await svc.getById(2);
  console.log(data);
}
async function test_insert(){
  let svc = new CharacterService();
  let data;
  let nuevoCharacter = new Personaje();
  
  nuevoCharacter.nombre       = 'patodonal';
  nuevoCharacter.imagen       ='patodonal';
  nuevoCharacter.edad         =15;
  nuevoCharacter.peso    =12;
  nuevoCharacter.historia     ='hola soy el patodonal'

  console.log('\nnuevoCharacter: ');
  console.log(nuevoCharacter);

  data = await svc.insert(nuevoCharacter);
  console.log(data);
}