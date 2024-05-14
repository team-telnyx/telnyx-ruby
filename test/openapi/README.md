# Using custom OpenAPI specification and fixtures files

You can place custom OpenAPI specification and fixtures files in this
directory. The files must be in JSON format, and must be named `spec3.json`
and `fixtures3.json` respectively.

## Development

### Setup
The test suite depends on the [Prism Mock Server](https://github.com/stoplightio/prism).

```bash
npm install -g @stoplight/prism-cli

# OR

yarn global add @stoplight/prism-cli
```

Once installed, start the prism mock service with the following command:

```bash
prism mock https://raw.githubusercontent.com/team-telnyx/openapi/master/openapi/spec3.json
```

--------

One final step -- because the Ruby SDK originally expected to reach the legacy `telnyx-mock` service at port 12111 (in addition to providing a `/v2/` base path), we need to setup a proxy server.

You can do this any way you wish, but included is a server.js file which you can utilize:

```bash
# In new terminal window

node server.js
```
