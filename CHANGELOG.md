# Changelog

## 3.1.0.pre.1 - 2026-10-29
* Prerelease of 3.1.0 below, published for validation. Not resolved by `~> 3.0`; opt in with `gem "telnyx", "3.1.0.pre.1"`.

## 3.1.0 - 2026-10-15
* Add `Telnyx::AccessToken` and `TelephonyCredential#to_jwt`: mint a WebRTC login token locally from the credential's `token_material`, with no request to Telnyx per token.
* Add `TelephonyCredential#fetch_token_material`, backed by `GET /v2/telephony_credentials/:id/token_material` when the object did not come from `create`.

