const { Router } = require('express');
const { siniestroPost } = require('../controllers/siniestros');
const router = Router();

router.post('/' , siniestroPost);

module.exports = router;