const TessertactsScheduler = require('./tesseractsScheduler');
const TessertactsWorker = require('./tesseractsWorker');

class TesseractsModel {
    constructor(idiomasPermitidos) {
        this.baseRoute = __dirname;
        this.documentosPermitidos = [];
        this.languages = idiomasPermitidos;
    }

    async createWorker() {
        return (new TessertactsWorker(this.languages));
    }

    async createScheduler(unaCantidadDeWorkers) {
        return new TessertactsScheduler(unaCantidadDeWorkers, this.languages);
    }
}

module.exports = TesseractsModel;