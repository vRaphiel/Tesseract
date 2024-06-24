const {createWorker} = require("tesseract.js");

class TesseractsWorker{
    constructor(languages = 'eng') {
        this.languages = languages;
        this.worker = null;
    }

    async initialize() {
        this.worker = await createWorker(this.languages);
    }

    async processFile(direccionDeArchivo) {
        const { data: { text } } = await this.worker.recognize(direccionDeArchivo);
        console.log(text);
    }

    async addScheduler(scheduler) {
        scheduler.addWorker(this.worker);
    }
}

module.exports = TesseractsWorker;