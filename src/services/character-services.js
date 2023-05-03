import sql from 'mssql'
class CharacterService {
    getAll = async () => {
        let returnArray = null;
        console.log('Estoy en: PizzaService.getAll()');
        try {
            let pool   = await sql.connect(config);
            let result = await pool.request().query("SELECT * from Pizzas");
            returnArray = result.recordsets[0];
        }
        catch (error) {
            console.log(error);
        }
        return returnArray;
    }
}