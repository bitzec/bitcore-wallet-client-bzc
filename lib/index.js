/**
 * The official client library for bitcore-wallet-service-bzc.
 * @module Client
 */

/**
 * Client API.
 * @alias module:Client.API
 */
var client = module.exports = require('./api');

/**
 * Verifier module.
 * @alias module:Client.Verifier
 */
client.Verifier = require('./verifier');
client.Utils = require('./common/utils');
client.sjcl = require('sjcl');

// Expose bitcore
client.BitcoreBzc = require('bitcore-lib-bzc');
