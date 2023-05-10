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
            .input('pImagen'     , sql.VarChar , Personaje?.imagen ?? '')
            .input('pNombre'     , sql.VarChar , Personaje?.nombre ?? '')
            .input('pEdad'     , sql.Int , Personaje?.edad ?? 0)
            .input('pPeso'     , sql.Int , Personaje?.peso ?? '')
            .input('pHistoria'     , sql.VarChar , Personaje?.historia ?? 'patodonal')
            .query(`INSERT INTO Personaje (imagen, nombre, edad, peso, historia) VALUES (@pImagen, @pNombre, @pEdad, @pPeso, @pHistoria)`);
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}
update = async (Personaje) => {
    let rowsAffected = 0;
    console.log('Estoy en: PersonajeService.update(Personaje)');

    try {
        let pool = await sql.connect(config);
        let result = await pool.request()
        .input('pImagen'     , sql.VarChar , Personaje?.imagen ?? '')
        .input('pNombre'     , sql.VarChar , Personaje?.nombre ?? '')
        .input('pEdad'     , sql.Int , Personaje?.edad ?? 0)
        .input('pPeso'     , sql.Int , Personaje?.peso ?? '')
        .input('pHistoria'     , sql.VarChar , Personaje?.historia ?? 'patodonal')
        .input('pId'         , sql.Int   , Personaje?.id ?? 0)
        .query(`UPDATE Personaje SET nombre = @pNombre, imagen =@pImagen, edad=@pEdad, peso=@pPeso, historia=@pHistoria Where id=@pId`);
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}

}
export default CharacterService