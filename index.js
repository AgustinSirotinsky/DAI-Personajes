import CharacterService from './src/services/character-services.js'
import Personaje from './src/models/Personaje.js'

await test_getAll();

async function test_getAll(){
  let svc = new CharacterService();
  let data;

  data=await svc.getAll();
  console.log(data);
}