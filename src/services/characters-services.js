import config from '../../dbconfig.js';
import sql from 'mssql';

import Personaje from "../../models/Personaje.js";

class CharacterService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: CharacterService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query("SELECT * from Personaje");
            returnArray = result.recordsets[0];

        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }

}

export default CharacterService;

