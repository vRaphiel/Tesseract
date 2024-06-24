const { response } = require('express');
const moment = require('moment');
const fs = require('fs');
const util = require('util');
const path = require('path');
const process = require('process');
const TesseractsModel = require('../models/tesseracts/tesseractsModel');
const { fromPath } = require("pdf2pic");

const options = {
    density: 100,
    saveFilename: "untitled",
    savePath: "./temp_images",
    format: "png",
    width: 600,
    height: 600
};



const tempImagePath = "./temp_images/";

const siniestroPost = async (req, res = response) => {
    const cDate = moment().format('YYYY-MM-DD');
    var logFile = fs.createWriteStream(`./logs/${cDate}-log.txt`, { flags: 'a' });
    var logStdout = process.stdout;

    console.log = function () {
      logFile.write(util.format.apply(null, arguments) + '\n');
      logStdout.write(util.format.apply(null, arguments) + '\n');
    }
    console.error = console.log;
    console.log("Inicio de proceso");

    try{

        const tesseractsModel = new TesseractsModel(['eng']);

        //const fileName = 'https://tesseract.projectnaptha.com/img/eng_bw.png';
        const filePath = path.join(__dirname, '../', 'archivos/ARCHIVO_1.pdf');

        const formatFile = path.extname(filePath);
        const enabledFormats = ['.bmp', '.jpg', '.png', '.pbm', '.webp'];

        console.log("Formato de archivo: ", formatFile);
        console.log("Ruta de archivo: ", filePath);

        if(enabledFormats.includes(formatFile)) {

        } else {
            // Acá tenemos que formatear el archivo correctamente.
            if(formatFile === '.pdf') {
                // Parse to PDF
                console.log('I loaded an pdf');
                //await convertPdfAndExtractText(filePath);
                const convert = fromPath(filePath, options);
                const pageToConvertAsImage = 1;

                convert(pageToConvertAsImage, { responseType: "image" })
                .then((resolve) => {
                    console.log("Page 1 is now converted as image");

                    return resolve;
                });

            } else if(formatFile === '.docx' || formatFile === '.docs') {

            }
        }

        //const worker = await tesseractsModel.createWorker();
        //await worker.initialize();
        //await worker.processFile();
        //await worker.processFile(pathFile);

        console.log("FIN PROCESO","","El proceso finalizó su ejecución exitosamente");
        return res.status(200).json({"msg" : "Ejecucion Correcta"})
    } catch(err) {
        console.log("FIN PROCESO","","El proceso finalizó por un error ocurrido durante la ejecución");
        console.log(`Catch Error`, err)
        return res.status(500).json({"msg" : `Ha ocurrido un error en la validación - ${err}` })
    }

}

module.exports = {
    siniestroPost
}
