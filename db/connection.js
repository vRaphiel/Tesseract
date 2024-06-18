const { Sequelize } = require('sequelize');
const config = require('./../config');

const database = new Sequelize(
    config.local_database,
    config.local_username,
    config.local_password, {
        host: config.local_host,
        port: config.local_port,
        dialect: config.local_dialect,
        logging: false
    }
);

module.exports = database;