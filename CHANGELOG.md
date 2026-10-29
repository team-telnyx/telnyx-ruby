# Changelog

## 3.1.1 - 2026-10-29
* `TelephonyCredential.create(..., include: "token_material")`: the API now returns `token_material` only when asked for it; the option sends it as the `include` query parameter. A credential created without it still works with `to_jwt`, which fetches the material once.
* Document what to store for minting later: `id`, `user_id`, `sip_username`, `expires_at` and `token_material`.

## 3.1.0 - 2026-10-29
First release on the 3.x line since 3.0.6; previously shipped as the prerelease `3.1.0.pre.1`.
* Add `Telnyx::AccessToken` and `TelephonyCredential#to_jwt`: mint a WebRTC login token locally from the credential's `token_material`, with no request to Telnyx per token.
* Add `TelephonyCredential#fetch_token_material`, backed by `GET /v2/telephony_credentials/:id/token_material` when the object did not come from `create`.

