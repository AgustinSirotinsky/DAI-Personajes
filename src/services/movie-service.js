import config from '../../dbconfig-env.js';
import sql from 'mssql'
class MovieService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: MovieService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query("SELECT * from Pelicula");
            returnArray = result.recordsets[0];
        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }


getById = async (id) => {
    let returnEntity = null;
    console.log('Estoy en: PizzaService.getById(id)');
    try {
        let pool = await sql.connect(config);
        let result = await pool.request()
            .input('pId', sql.Int, id)
            .query('SELECT * FROM Pelicula WHERE id = @pId');
        returnEntity = result.recordsets[0][0];
    } catch (error) {
        console.log(error);
    }
    return returnEntity;
}
insert = async (Pelicula) => {
    let rowsAffected = 0;
    console.log('Estoy en: MovieService.insert(character)');

    try {
        let pool = await sql.connect(config);
        let result = await pool.request()
            .input('pImagen'     , sql.VarChar , Pelicula?.imagen ?? '')
            .input('pTitulo'     , sql.VarChar , Pelicula?.titulo ?? '')
            .input('pFechaDeCreacion'     , sql.Date , Pelicula?.fechaDeCreacion ?? 0)
            .input('pClasificacion'     , sql.Int , Pelicula?.clasificación ?? '')
            .query(`INSERT INTO Pelicula (imagen, titulo, fechaDeCreacion, clasificación) VALUES (@pImagen, @pTitulo, @pFechaDeCreacion, @pClasificacion)`);
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}
update = async (Pelicula) => {
    let rowsAffected = 0;
    console.log('Estoy en: MovieService.update(Pelicula)');

    try {
        let pool = await sql.connect(config);
        let result = await pool.request()
            .input('pImagen'     , sql.VarChar , Pelicula?.imagen ?? '')
            .input('pTitulo'     , sql.VarChar , Pelicula?.titulo ?? '')
            .input('pFechaDeCreacion'     , sql.Date , Pelicula?.fechaDeCreacion ?? 0)
            .input('pClasificacion'     , sql.Int , Pelicula?.clasificación ?? '')
        .query(`UPDATE Pelicula SET titulo = @pTitulo, imagen =@pImagen, fechaDeCreacion=@pFechaDeCreacion, clasificacion=@pClasificacion Where id=@pId`);
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}
deleteById = async (id) => {
    let rowsAffected = 0;
    console.log('Estoy en: MovieService.deleteById(id)');
    try {
        let pool   = await sql.connect(config);
        let result = await pool.request()
                            .input('pId', sql.Int, id)
                            .query('DELETE FROM Pelicula WHERE id = @pId');
        rowsAffected = result.rowsAffected;
    } catch (error) {
        console.log(error);
    }
    return rowsAffected;
}
}
export default MovieService