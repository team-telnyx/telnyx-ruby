# Changelog

## 3.1.0 - 2026-10-15
* Add `Telnyx::AccessToken` and `TelephonyCredential#to_jwt`: mint a WebRTC login token locally from the credential's `token_material`, with no request to Telnyx per token.
* Add `TelephonyCredential#fetch_token_material`, backed by `GET /v2/telephony_credentials/:id/token_material` when the object did not come from `create`.

