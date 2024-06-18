const express = require('express');
const cors = require('cors');
const database = require('../db/connection');
class Server {

    constructor() {
        this.app = express();
        this.port = process.env.PORT;

        this.siniestrosPath = '/api/siniestros';

        // Coneccion a base de datos
        this.conectarDB();

        // Middlewares -> Funcion que siempre se ejecuta cuando levantamos el servidor
        this.middlewares();

        // Rutas de la aplicacion
        this.routes();
    }

    async conectarDB(){
        try{
            await database.authenticate();
            console.log("Database Online");
        } catch(error) {
            throw new Error( error );
        }
    }

    middlewares() {
        //CORS
        this.app.use( cors() );

        // Lectura y parseo del body
        this.app.use( express.json() );

        //Directorio publico
        this.app.use( express.static('public') )
    }

    routes () {
        this.app.use(this.siniestrosPath, require('../routes/siniestro'));
    }

    listen() {
        this.app.listen(this.port, () => {
            console.log("Servidor corriendo en puerto", this.port);
        })
    }

}

module.exports = Server;