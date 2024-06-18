require('dotenv').config();  // this line is important!

const data = {
    "local": {
        "local_username": process.env.LOCAL_USERNAME,
        "local_password": process.env.LOCAL_PASSWORD,
        "local_database": process.env.LOCAL_DATABASE,
        "local_host": process.env.LOCAL_HOST,
        "local_port": process.env.LOCAL_PORT,
        "local_dialect": "mysql",

        "dialect": "mysql",
        "urlSiniestros": './testSinisterFactory',
        "urlTendencias": './testSinisterFactory',
        "urlCBU" : process.env.URL_CBU,
        "apiKey": process.env.API_KEY,

        "email_service": process.env.EMAIL_SERVICE,
        "email_sender" : process.env.G_EMAIL_USER,
        "password_sender" : process.env.G_EMAIL_PASS,
        "email_host": process.env.G_EMAIL_HOST,
        "port_host": process.env.G_EMAIL_PORT
    },
    "development": {
        "local_username": process.env.LOCAL_USERNAME,
        "local_password": process.env.LOCAL_PASSWORD,
        "local_database": process.env.LOCAL_DATABASE,
        "local_host": process.env.LOCAL_HOST,
        "local_port": process.env.LOCAL_PORT,
        "local_dialect": "mysql",

        "dialect": "mysql",
        "urlSiniestros": process.env.URL_SINIESTROS,
        "urlTendencias": process.env.URL_TENENCIAS,
        "urlCBU" : process.env.URL_CBU,
        "apiKey": process.env.API_KEY,

        "email_service": process.env.EMAIL_SERVICE,
        "email_sender" : process.env.G_EMAIL_USER,
        "password_sender" : process.env.G_EMAIL_PASS,
        "email_host": process.env.G_EMAIL_HOST,
        "port_host": process.env.G_EMAIL_PORT
    },
}

module.exports = data["development"]