const TesseractModel = require('./Models/TesseractModel');

class OCRModel {
    #tesseract;
    #files;
    constructor(idiomasPermitidos) {
        this.#tesseract = new TesseractModel(idiomasPermitidos);
        this.#files = [];
    }

    procesar(unaListaDeArchivos) {

    }

    formatear
    // Cargo las rutas de los archivos

}