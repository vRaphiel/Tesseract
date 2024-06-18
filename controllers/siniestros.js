const { response } = require('express');
const moment = require('moment');
const fs = require('fs');
const util = require('util');
const process = require('process');

const analisisDeDocumento = async (req, res = response) => {

    var logFile = fs.createWriteStream(`./logs/${cDate}-log.txt`, { flags: 'a' });
    var logStdout = process.stdout;

    console.log = function () {
      logFile.write(util.format.apply(null, arguments) + '\n');
      logStdout.write(util.format.apply(null, arguments) + '\n');
    }
    console.error = console.log;
    console.log("Inicio de proceso");

    try{




        console.log("FIN PROCESO","","El proceso finalizó su ejecución exitosamente");
        return res.status(200).json({"msg" : "Ejecucion Correcta"})
    } catch(err) {
        console.log("FIN PROCESO","","El proceso finalizó por un error ocurrido durante la ejecución");
        console.log(`Catch Error`, err)
        return res.status(500).json({"msg" : `Ha ocurrido un error en la validación - ${err}` })
    }

}

module.exports = {
    analisisDeDocumento
}
