const debug = require('debug')
const logger = debug('server')

debug.enable('server')
const server = require('./api')
const { port } = require('./config')

const main = async () => {
  server.listen(port, () => logger(`API listening on port ${port}`))
}

try {
  main()
} catch (err) {
  // TODO move to stderr
  logger(err)
}
