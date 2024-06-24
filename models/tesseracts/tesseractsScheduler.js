const { createScheduler } = require('tesseract.js');
const TesseractsWorker = require('./tesseractsWorker');

class TesseractsScheduler {
    constructor(cantidadDeWorkers, languages) {
        this.languages = languages;
        this.workers = Array(cantidadDeWorkers);
        this.scheduler = createScheduler();
    }

    async initialize() {
        for(let i = 0; i < this.workers.length; i++) {
            this.workers[i] = (new TesseractsWorker("", this.languages)).addScheduler(this.scheduler);
        }
        await Promise.all(this.workers);
        return this.scheduler;
    }

    async processFile(action, archivo, tipoDeArchivo) {
        console.log("ANALIZAR: " + tipoDeArchivo, archivo);
        this.scheduler.addJob('recognize', 'url').then((x) => console.log(x.data));
    }

    async finalize(){
        return await this.scheduler.terminate();
    }
}

module.exports = TesseractsScheduler;