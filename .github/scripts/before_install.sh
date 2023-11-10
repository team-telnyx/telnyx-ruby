# Telnyx mock deprecation in favor of prism-mock server

# gem install bundler -v "~> 1.0"
# if [ ! -d "telnyx-mock/telnyx-mock_${TELNYX_MOCK_VERSION}" ]; then
#   mkdir -p telnyx-mock/${TELNYX_MOCK_VERSION}/
#   curl -L "https://github.com/team-telnyx/telnyx-mock/releases/download/v${TELNYX_MOCK_VERSION}/telnyx-mock_${TELNYX_MOCK_VERSION}_linux_amd64.tar.gz" -o "telnyx-mock/telnyx-mock_${TELNYX_MOCK_VERSION}_linux_amd64.tar.gz"
#   tar -zxf "telnyx-mock/telnyx-mock_${TELNYX_MOCK_VERSION}_linux_amd64.tar.gz" -C "telnyx-mock/${TELNYX_MOCK_VERSION}/"
# fi
# telnyx-mock/${TELNYX_MOCK_VERSION}/telnyx-mock > /dev/null &
# TELNYX_MOCK_PID=$!
# export PATH="${PATH}:${PWD}/telnyx-mock/${TELNYX_MOCK_VERSION}"

TELNYX_MOCK_OPEN_API_URI: https://raw.githubusercontent.com/team-telnyx/openapi/master/openapi/spec3.json

npm install -g @stoplight/prism-cli

echo "Starting up Prism Mock Server with spec file at ${TELNYX_MOCK_OPEN_API_URI}"
prism mock ${TELNYX_MOCK_OPEN_API_URI} > /dev/null &

git clone https://github.com/team-telnyx/telnyx-prism-mock.git
cd telnyx-prism-mock/proxy
npm install
node index.js > /dev/null &
cd -
