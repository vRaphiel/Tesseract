const { Router } = require('express');
const { siniestroPost } = require('../controllers/siniestros');
const router = Router();

router.post('/' , function(req, res) {
    siniestroPost
} );

module.exports = router;