const http = require('http');
const httpProxy = require('http-proxy');

// Create a proxy server with custom application logic
const proxy = httpProxy.createProxyServer({});

// Your Prism mock server URL
const PRISM_MOCK_SERVER = 'http://127.0.0.1:4010'; // Replace with your Prism mock server URL

// Create your server that makes an operation on the request
const server = http.createServer((req, res) => {
  // Modify the URL by removing the '/v2' prefix
  req.url = req.url.replace(/^\/v2(\/|$)/, '/');

  // Forward the modified request to the Prism mock server
  proxy.web(req, res, { target: PRISM_MOCK_SERVER });
});

// Listen to the `error` event and log it
proxy.on('error', (err, req, res) => {
  console.error('Proxy error:', err);
  res.end();
});

// Choose the port for the proxy server
const PORT = 12111; // You can choose any available port

// Start the server
server.listen(PORT, () => {
  console.log(`Proxy server listening on port ${PORT}`);
});
