import config from '../../dbconfig-env.js';
import sql from 'mssql'
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


getById = async (id) => {
    let returnEntity = null;
    console.log('Estoy en: Character.getById(id)');
    try {
        let pool   = await sql.connect(config);
        let result = await pool.request()
                            .input('pId', sql.Int, id)
                            .query('SELECT * FROM Personaje WHERE id = @pId');
        returnEntity = result.recordsets[0][0];
    } catch (error) {
        console.log(error);
    }
    return returnEntity;
}
insert = async (Personaje) => {
    let rowsAffected = 0;
    console.log('Estoy en: CharacterService.insert(character)');

    try {
        let pool = await sql.connect(config);
        let result = await pool.request()
            .input('pImagen'     , sql.NChar , Personaje?.imagen ?? '')
            .input('pNombre'     , sql.NChar , Personaje?.nombre ?? '')
            .input('pEdad'     , sql.NChar , Personaje?.edad ?? 0)
            .input('pPeso'     , sql.NChar , Personaje?.peso ?? 0)
            .input('pHistoria'     , sql.NChar , Personaje?.historia ?? 'patodonal')
            .query(`INSERT INTO Personajes (imagen, nombre, edad, peso, historia) VALUES (@pImagen, @pNombre, @pEdad, @pPeso, @pHistoria)`);
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}

}
export default CharacterService