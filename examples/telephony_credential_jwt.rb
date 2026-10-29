#!/usr/bin/env ruby
# frozen_string_literal: true

# Example: WebRTC login tokens minted locally
#
# Creates an on-demand telephony credential, then mints login tokens for it
# with no request to Telnyx per token. Hand each token to the WebRTC SDK as
# `login_token`. The credential's `token_material` is as sensitive as its SIP
# password: keep it on the server, never ship it to a browser.
#
# Prerequisites:
#   - Set TELNYX_API_KEY
#   - Set TELNYX_CONNECTION_ID to a Credential Connection id
#
# Usage:
#   ruby examples/telephony_credential_jwt.rb

require "bundler/setup"
require "telnyx"

api_key = ENV.fetch("TELNYX_API_KEY") do
  abort("Error: TELNYX_API_KEY environment variable is required")
end
connection_id = ENV.fetch("TELNYX_CONNECTION_ID") do
  abort("Error: TELNYX_CONNECTION_ID environment variable is required")
end

client = Telnyx::Client.new(api_key: api_key)

# The create response carries `token_material`, so this needs no further request.
response = client.telephony_credentials.create(connection_id: connection_id)
puts("10 minute token: #{client.telephony_credentials.to_jwt(response, ttl: 600)}")

credential = response.data
abort("Error: no credential in the response") if credential.nil?

# A credential given by id is looked up, and its token material fetched once.
puts("1 hour token: #{client.telephony_credentials.to_jwt(credential.id)}")

# Store `token_material` server-side to mint later with no request at all.
token = Telnyx::Lib::AccessToken.new(
  credential_id: credential.id,
  user_id: credential.user_id,
  identity: credential.sip_username,
  expires_at: credential.expires_at,
  token_material: credential[:token_material]
)
puts("Offline token: #{token.to_jwt}")
