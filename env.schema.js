const Joi = require('joi');

module.exports = Joi.object({
  REACT_APP_HELLO_WORLD: Joi.string().required(),
});
