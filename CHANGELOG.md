# Changelog

## [5.148.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.147.0...v5.148.0) (2026-06-24)


### Bug Fixes

* restore OIDC + release trigger in publish-gem.yml ([#282](https://github.com/team-telnyx/telnyx-ruby/issues/282)) ([2102367](https://github.com/team-telnyx/telnyx-ruby/commit/21023671fa50a5db3968d874a47f7dfc32ab2032))
* restore release-please-config.json ([#280](https://github.com/team-telnyx/telnyx-ruby/issues/280)) ([8d34b0e](https://github.com/team-telnyx/telnyx-ruby/commit/8d34b0ec6d19e8a230c2c87eb0d5229a0f3170a7))

## [5.147.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.131.0...v5.147.0) (2026-06-23)


### Bug Fixes

* handle modify/delete conflicts in release-please code-carry merge ([#274](https://github.com/team-telnyx/telnyx-ruby/issues/274)) ([58566c6](https://github.com/team-telnyx/telnyx-ruby/commit/58566c62dabbcebb506dca24567e0dafaed9c911))
* remove `|| true` from github-release step ([#278](https://github.com/team-telnyx/telnyx-ruby/issues/278)) ([781b89b](https://github.com/team-telnyx/telnyx-ruby/commit/781b89bd7876f99ecf3e386f5f05165393eb7035))


### Chores

* add self-hosted release-please pipeline ([#271](https://github.com/team-telnyx/telnyx-ruby/issues/271)) ([f212af2](https://github.com/team-telnyx/telnyx-ruby/commit/f212af296539b9cd840a8dc9c76f2b75562d08f8))

## 5.131.0 (2026-06-18)

Full Changelog: [v5.130.1...v5.131.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.130.1...v5.131.0)

### Features

* add transcriptions-search API spec (dev/external) ([b1cda17](https://github.com/team-telnyx/telnyx-ruby/commit/b1cda17c4f29a9398b7a785b2e8cd3645ff80b63))

## 5.130.1 (2026-06-16)

Full Changelog: [v5.130.0...v5.130.1](https://github.com/team-telnyx/telnyx-ruby/compare/v5.130.0...v5.130.1)

### Bug Fixes

* **client:** send content-type header for requests with an omitted optional body ([b4e3271](https://github.com/team-telnyx/telnyx-ruby/commit/b4e327110e5529b70e53a7437223eee156597f78))

## 5.130.0 (2026-06-16)

Full Changelog: [v5.129.0...v5.130.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.129.0...v5.130.0)

### Features

* ENGDESK-51290: Add Aicoustic NS engines to portal backend ([6ab023b](https://github.com/team-telnyx/telnyx-ruby/commit/6ab023bbed7fbcac79c17e98ccb6af4b326b2ff3))

## 5.129.0 (2026-06-16)

Full Changelog: [v5.128.0...v5.129.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.128.0...v5.129.0)

### Features

* TELAPPS-719: add Inworld inworld-tts-2 model + delivery_mode to call-control voice settings ([1f84640](https://github.com/team-telnyx/telnyx-ruby/commit/1f84640dab2e0aa2e51a4c302c89e09302664953))

## 5.128.0 (2026-06-15)

Full Changelog: [v5.127.0...v5.128.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.127.0...v5.128.0)

### Features

* Document POST /ai/assistants/{assistant_id}/instructions/enhance ([f07ac06](https://github.com/team-telnyx/telnyx-ruby/commit/f07ac069ef9d4690e5d5ac74e7ce4a61fa238957))

## 5.127.0 (2026-06-11)

Full Changelog: [v5.126.0...v5.127.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.126.0...v5.127.0)

### Features

* Add sip region to scheduled events ([ba73e09](https://github.com/team-telnyx/telnyx-ruby/commit/ba73e09a84634b4556ac84844976ce51525a5d1c))
* branded-calling: drop 'simplified'/'no enterprise_id' framing from DIR endpoints ([fb32053](https://github.com/team-telnyx/telnyx-ruby/commit/fb3205370772cb637a6d08d0091f55271fa7aa58))
* branded-calling: sync PATCH /dir/{dir_id} spec with deployed service behavior ([1d38748](https://github.com/team-telnyx/telnyx-ruby/commit/1d38748972411414ed9a202aa4cfae37ffcde91d))
* **branded-calling:** document LOA (DIR) + reputation remediation endpoints ([4a2da80](https://github.com/team-telnyx/telnyx-ruby/commit/4a2da80cfd2cc2078936fbca7b8fb02e77545e79))
* Fix cross-product leakage: de-dup shared enterprise/ToS endpoints + neutralize descriptions ([d9fc9bd](https://github.com/team-telnyx/telnyx-ruby/commit/d9fc9bd11d7d2ab5a20725c8e18f5f2e96ecf858))
* NUM-6470: Add branded-calling-v2 OpenAPI specs (external + internal) ([4fa2646](https://github.com/team-telnyx/telnyx-ruby/commit/4fa26468681db3ab033f82e8e0b1ddbc5932d79c))
* **spec:** backfill parameter descriptions to 100% coverage ([49144ec](https://github.com/team-telnyx/telnyx-ruby/commit/49144ecf6cf9441257da24da606183feea6bbd29))
* **spec:** inline 2xx response schemas — REST response coverage 41% → 91% (sync of openapi[#199](https://github.com/team-telnyx/telnyx-ruby/issues/199)) ([d49fc69](https://github.com/team-telnyx/telnyx-ruby/commit/d49fc6970c7deb249b0aeaa35e7d32b98a8e0538))
* specs: add GET /terms_of_service/info (branded-calling + number-reputation) ([3548a3d](https://github.com/team-telnyx/telnyx-ruby/commit/3548a3d3749d1520acc85ad0bbfde9ab59c86aab))
* specs: drop legacy plain filter params (keep filter[] canonical) on list endpoints ([627e538](https://github.com/team-telnyx/telnyx-ruby/commit/627e538249226b907c5f31e61719328911e52faa))
* specs: remove em dashes from branded-calling + number-reputation descriptions ([a978847](https://github.com/team-telnyx/telnyx-ruby/commit/a9788477bdbeef42039bf0c104022ea2e8afa8ab))


### Bug Fixes

* **number-reputation:** remediation contact_email is optional ([b79c34a](https://github.com/team-telnyx/telnyx-ruby/commit/b79c34a9a5770552a632bc6526d52dad14b410a8))

## 5.126.0 (2026-06-05)

Full Changelog: [v5.125.0...v5.126.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.125.0...v5.126.0)

### Features

* Conversation flow update ([4f9dd27](https://github.com/team-telnyx/telnyx-ruby/commit/4f9dd27ac620fef2f1d080f4ba1bdce028ce70c5))

## 5.125.0 (2026-06-04)

Full Changelog: [v5.124.0...v5.125.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.124.0...v5.125.0)

### Features

* **inference:** expose description on transfer tool params ([a2d8c5d](https://github.com/team-telnyx/telnyx-ruby/commit/a2d8c5d52b468045bb173b4a77f629ec3c24ede6))

## 5.124.0 (2026-06-04)

Full Changelog: [v5.123.0...v5.124.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.123.0...v5.124.0)

### Features

* **api:** manual updates ([8a6d7da](https://github.com/team-telnyx/telnyx-ruby/commit/8a6d7da280923953edbf3f59553ea5e3ab3300af))
* **sip-registration-status:** add OpenAPI spec for /v2/sip_registration_status ([6a07de1](https://github.com/team-telnyx/telnyx-ruby/commit/6a07de1a99552710eb4ab30d5fdb3b9f12d653aa))
* **sip-registration-status:** finalize phase 1 response shape with status mapping ([c9433e4](https://github.com/team-telnyx/telnyx-ruby/commit/c9433e423bd4c90677069dc9a019a84e99f0f444))


### Bug Fixes

* **inference:** extract recursive expression AST into named Expression schema ([37755b1](https://github.com/team-telnyx/telnyx-ruby/commit/37755b18df1cd3e3858ecc4a67441abfa794aebd))
* **sip-registration-status:** drop user_id query param ([fecc595](https://github.com/team-telnyx/telnyx-ruby/commit/fecc5953771e3de33217bb28f30b735bf43846e7))
* **sip-registration-status:** move operation under UAC Connections tag ([f010abf](https://github.com/team-telnyx/telnyx-ruby/commit/f010abf9eaca5a30aced508fa934766854f9633f))
* **sip-registration-status:** rename detail field to sip_uri_user_host ([5ea1011](https://github.com/team-telnyx/telnyx-ruby/commit/5ea101126e293d5ef1d6947b442f4c99f702c1dd))
* **sip-registration-status:** scope to phase 1 uac_third-party_credential ([099473f](https://github.com/team-telnyx/telnyx-ruby/commit/099473fe568954594c0dcb2caa047b4dc206c10d))

## 5.123.0 (2026-05-28)

Full Changelog: [v5.122.0...v5.123.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.122.0...v5.123.0)

### Features

* **api:** manual updates ([d4bbdba](https://github.com/team-telnyx/telnyx-ruby/commit/d4bbdba257fe8adef79223c38021855aac54bc72))
* **api:** manual updates ([c85c596](https://github.com/team-telnyx/telnyx-ruby/commit/c85c596b1289dde93727496fb0d5713bfa5c33be))

## 5.122.0 (2026-05-27)

Full Changelog: [v5.121.0...v5.122.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.121.0...v5.122.0)

### Features

* TELAPPS-406: document GET /speech-to-text/providers endpoint ([2b1544b](https://github.com/team-telnyx/telnyx-ruby/commit/2b1544b0e7b637a02ad10c5e91d856e48a1bffce))

## 5.121.0 (2026-05-27)

Full Changelog: [v5.120.0...v5.121.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.120.0...v5.121.0)

### Features

* TELAPPS-5698 document conversation relay API shape ([5593ce0](https://github.com/team-telnyx/telnyx-ruby/commit/5593ce08483bd6b4e333cc52f1f90b6fc9db3402))

## 5.120.0 (2026-05-27)

Full Changelog: [v5.119.0...v5.120.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.119.0...v5.120.0)

### Features

* TELAPPS-531: document Rime ArcanaV3 and Coda voice models ([c8a9586](https://github.com/team-telnyx/telnyx-ruby/commit/c8a9586fc5b5692dc63cdc1aea10e9791da41438))


### Documentation

* add voice sdk debug call report spec ([bceac1a](https://github.com/team-telnyx/telnyx-ruby/commit/bceac1a1fbb0aeaf687d2b31b56013c8d08077d6))

## 5.119.0 (2026-05-26)

Full Changelog: [v5.118.0...v5.119.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.118.0...v5.119.0)

### Features

* TELAPPS-523: document stop_on_conversation_end on assistant recording_settings ([f4731b7](https://github.com/team-telnyx/telnyx-ruby/commit/f4731b7ed76a54314a06c738fe2f3f10f3b5a9ac))

## 5.118.0 (2026-05-22)

Full Changelog: [v5.117.0...v5.118.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.117.0...v5.118.0)

### Features

* MSG-919: documentation for Whatsapp user data ([3683252](https://github.com/team-telnyx/telnyx-ruby/commit/36832521020009060f02d05e0fcb48b9c01cebfb))

## 5.117.0 (2026-05-22)

Full Changelog: [v5.116.0...v5.117.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.116.0...v5.117.0)

### Features

* TELAPPS-72: document send_digits_on_answer on Dial + Transfer ([f7ae042](https://github.com/team-telnyx/telnyx-ruby/commit/f7ae042cef4897a4dfda4853817d81fe510675ee))

## 5.116.0 (2026-05-20)

Full Changelog: [v5.115.0...v5.116.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.115.0...v5.116.0)

### Features

* TELAPPS-483: Add async webhook timeout to OpenAPI ([e82bcb2](https://github.com/team-telnyx/telnyx-ruby/commit/e82bcb2de3a53f0666ab785010b5e5e031794cb4))

## 5.115.0 (2026-05-18)

Full Changelog: [v5.114.0...v5.115.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.114.0...v5.115.0)

### Features

* Telapps 101 soniox spec ([5b09c00](https://github.com/team-telnyx/telnyx-ruby/commit/5b09c000fbe70851549f0a7ed4783da22f91632f))

## 5.114.0 (2026-05-18)

Full Changelog: [v5.113.0...v5.114.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.113.0...v5.114.0)

### Features

* Add assistant background audio volume to OpenAPI spec ([36ed5d6](https://github.com/team-telnyx/telnyx-ruby/commit/36ed5d6bd0a9830cee19fd80e4fd6acadc74f8f2))

## 5.113.0 (2026-05-17)

Full Changelog: [v5.112.0...v5.113.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.112.0...v5.113.0)

### Features

* Add Speechmatics transcription engine to Call Control API ([a2e9a35](https://github.com/team-telnyx/telnyx-ruby/commit/a2e9a3538bbb3c20ddbaf29cf7685c45a2dd12d0))
* **api:** manual updates ([c04bcfc](https://github.com/team-telnyx/telnyx-ruby/commit/c04bcfcbe3536a42b8c29907f4fda054f864dea9))
* Document PremiumCallScreening detection mode ([59e5cc4](https://github.com/team-telnyx/telnyx-ruby/commit/59e5cc49d695e85b9dd52b594ba312fd46103146))
* Fix Conversation Relay expected webhook ([9207e59](https://github.com/team-telnyx/telnyx-ruby/commit/9207e59b39287b242995b437c2cde1f8dbaf7eb6))
* Update Conversation Relay start parameters ([8b3d719](https://github.com/team-telnyx/telnyx-ruby/commit/8b3d71908a08b7773e80143521dd1bb8a7001872))


### Documentation

* add supported file formats to Send Fax endpoint ([b81adb8](https://github.com/team-telnyx/telnyx-ruby/commit/b81adb8bdf3c3b461e9149064347cfa222ab8c11))

## 5.112.0 (2026-05-14)

Full Changelog: [v5.111.0...v5.112.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.111.0...v5.112.0)

### Features

* Document Conversation Relay ([dc8eb44](https://github.com/team-telnyx/telnyx-ruby/commit/dc8eb44a33fec593d3a651cbe2553ded97e0e602))

## 5.111.0 (2026-05-13)

Full Changelog: [v5.110.1...v5.111.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.110.1...v5.111.0)

### Features

* Document AI call status callback overrides ([2458580](https://github.com/team-telnyx/telnyx-ruby/commit/2458580b9c24eb6dcaae8753720cf00f1891abc8))

## 5.110.1 (2026-05-13)

Full Changelog: [v5.110.0...v5.110.1](https://github.com/team-telnyx/telnyx-ruby/compare/v5.110.0...v5.110.1)

### Bug Fixes

* **client:** elide content type header on requests without body ([0bdbd7a](https://github.com/team-telnyx/telnyx-ruby/commit/0bdbd7a9cdc50d6d33c22c051a044d436f1b823c))

## 5.110.0 (2026-05-11)

Full Changelog: [v5.109.0...v5.110.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.109.0...v5.110.0)

### Features

* Document OpenAI responses conversation flow ([6f06f24](https://github.com/team-telnyx/telnyx-ruby/commit/6f06f243b406719fcf17b1b3339b6f74b54854fb))

## 5.109.0 (2026-05-11)

Full Changelog: [v5.108.0...v5.109.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.108.0...v5.109.0)

### Features

* AI-2312: document currency and unit in /models pricing schema ([b430e37](https://github.com/team-telnyx/telnyx-ruby/commit/b430e37b18b56c45ff7ac926e92b569c96800110))

## 5.108.0 (2026-05-11)

Full Changelog: [v5.107.0...v5.108.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.107.0...v5.108.0)

### Features

* Clean up OpenAI responses API docs ([6070668](https://github.com/team-telnyx/telnyx-ruby/commit/6070668c896482ef9c510f7f6c9f94da3556757b))
* Fix OpenAI chat API reference links ([19300e6](https://github.com/team-telnyx/telnyx-ruby/commit/19300e65a7a6c3df2eb744828217479fd76a89f5))

## 5.107.0 (2026-05-11)

Full Changelog: [v5.106.0...v5.107.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.106.0...v5.107.0)

### Features

* Responses endpoint ([a65d524](https://github.com/team-telnyx/telnyx-ruby/commit/a65d524c30c758a87dadc4009ec1e999e439590f))

## 5.106.0 (2026-05-08)

Full Changelog: [v5.105.0...v5.106.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.105.0...v5.106.0)

### Features

* AI-2294: document /ai/openai/models response and refresh LLM examples ([fe820e3](https://github.com/team-telnyx/telnyx-ruby/commit/fe820e34daed754d06fb23d9667442e154fe51c9))

## 5.105.0 (2026-05-08)

Full Changelog: [v5.104.0...v5.105.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.104.0...v5.105.0)

### Features

* Document per-endpoint media encryption for call control ([3423cf7](https://github.com/team-telnyx/telnyx-ruby/commit/3423cf75cd3f3102fced8d3e69c794159211f0b1))

## 5.104.0 (2026-05-08)

Full Changelog: [v5.103.1...v5.104.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.103.1...v5.104.0)

### Features

* AI-2289 add disable greeting interruption OpenAPI fields ([fcfa59d](https://github.com/team-telnyx/telnyx-ruby/commit/fcfa59d6de2187835003320ff333b0eef128e154))

## 5.103.1 (2026-05-07)

Full Changelog: [v5.103.0...v5.103.1](https://github.com/team-telnyx/telnyx-ruby/compare/v5.103.0...v5.103.1)

### Bug Fixes

* update UAC internal settings URI examples ([07542f9](https://github.com/team-telnyx/telnyx-ruby/commit/07542f9b0d6330a9d76652d110e7f5ccefc4830c))


### Reverts

* restore stainless.yml from before 964956c ([dc4498d](https://github.com/team-telnyx/telnyx-ruby/commit/dc4498ddf4139f473022ff6c252075ab07d4d976))

## 5.103.0 (2026-05-07)

Full Changelog: [v5.102.1...v5.103.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.102.1...v5.103.0)

### Features

* Add Speechmatics provider to standalone STT spec ([ca94503](https://github.com/team-telnyx/telnyx-ruby/commit/ca945036fb52cf72d6cbcdf3a683b77e56aacdf3))
* Ai-assistant: update scheduled events api ([5567900](https://github.com/team-telnyx/telnyx-ruby/commit/5567900fe1aed9caa1d74188807ef9ec3e15459c))
* **api:** manual updates ([0261568](https://github.com/team-telnyx/telnyx-ruby/commit/02615682257dfa6d243127d9e1eae6938268a8eb))
* **api:** manual updates ([044e221](https://github.com/team-telnyx/telnyx-ruby/commit/044e22120a5676d514af5442d913064fc5fa9789))


### Reverts

* restore stainless.yml from before 9853597 ([89c9cfd](https://github.com/team-telnyx/telnyx-ruby/commit/89c9cfdd1ea3879f32247bf59822e38eb870b9cd))

## 5.102.1 (2026-05-07)

Full Changelog: [v5.102.0...v5.102.1](https://github.com/team-telnyx/telnyx-ruby/compare/v5.102.0...v5.102.1)

### Bug Fixes

* revert stainless.yml changes from ad4f13c ([2d5c581](https://github.com/team-telnyx/telnyx-ruby/commit/2d5c581e38bf1f25f71cf97221ba07f36f0fee47))


### Documentation

* update gather_using_ai transcription models ([d0c29ae](https://github.com/team-telnyx/telnyx-ruby/commit/d0c29ae46b2976f37a57c42d93526adbbd7bbf0f))

## 5.102.0 (2026-05-07)

Full Changelog: [v5.101.0...v5.102.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.101.0...v5.102.0)

### Features

* MSG-9000: document duplicate-vetting rejection on order brand external vetting ([8322fc0](https://github.com/team-telnyx/telnyx-ruby/commit/8322fc0a1681b8fd59897138082a176b1847d65b))

## 5.101.0 (2026-05-07)

Full Changelog: [v5.100.0...v5.101.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.100.0...v5.101.0)

### Features

* inference: expose chat completions and models under /ai/openai ([4711564](https://github.com/team-telnyx/telnyx-ruby/commit/47115648db8895fabe3913e086b23705c8a1851a))

## 5.100.0 (2026-05-06)

Full Changelog: [v5.99.0...v5.100.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.99.0...v5.100.0)

### Features

* Ai-assistants: support pattern in canary deploy ([4dafaec](https://github.com/team-telnyx/telnyx-ruby/commit/4dafaeca303f3ac584fad93b4729e69298e64610))


### Documentation

* add UAC connection OpenAPI docs ([3f543c6](https://github.com/team-telnyx/telnyx-ruby/commit/3f543c6f2131a0964676c1427e7e3885f91527d5))

## 5.99.0 (2026-05-04)

Full Changelog: [v5.98.0...v5.99.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.98.0...v5.99.0)

### Features

* Add xAI and missing voice providers to Call Control API ([ac7bf88](https://github.com/team-telnyx/telnyx-ruby/commit/ac7bf888359b90cfc3d8cdcbf60fbbf80d0f2bf6))

## 5.98.0 (2026-05-03)

Full Changelog: [v5.97.0...v5.98.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.97.0...v5.98.0)

### Features

* Update observability ([99e3f4b](https://github.com/team-telnyx/telnyx-ruby/commit/99e3f4b3a421178714aa3f17dae81e306034aba6))

## 5.97.0 (2026-04-30)

Full Changelog: [v5.96.0...v5.97.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.96.0...v5.97.0)

### Features

* Mark 'from' as required on InviteToolConfig ([06c644e](https://github.com/team-telnyx/telnyx-ruby/commit/06c644e84739914db5e7db6dedae0caddf4377fc))

## 5.96.0 (2026-04-30)

Full Changelog: [v5.95.0...v5.96.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.95.0...v5.96.0)

### Features

* Revert "fix: stainless ([#2371](https://github.com/team-telnyx/telnyx-ruby/issues/2371))" ([01464e7](https://github.com/team-telnyx/telnyx-ruby/commit/01464e7709c1bbbac01940dbdd486b56ec1caaa4))

## 5.95.0 (2026-04-30)

Full Changelog: [v5.94.0...v5.95.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.94.0...v5.95.0)

### Features

* AI-2183: Document dynamic variable support for transcription keyterm ([823e5bd](https://github.com/team-telnyx/telnyx-ruby/commit/823e5bdaa3679a150e76631e79841514215a5847))

## 5.94.0 (2026-04-30)

Full Changelog: [v5.93.0...v5.94.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.93.0...v5.94.0)

### Features

* Assistant tool targets master ([b06b562](https://github.com/team-telnyx/telnyx-ruby/commit/b06b562ff66c80a5afd7f0c82a2aa42241f7811c))

## 5.93.0 (2026-04-29)

Full Changelog: [v5.92.0...v5.93.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.92.0...v5.93.0)

### Features

* Document assistant CRUD fields ([10e9601](https://github.com/team-telnyx/telnyx-ruby/commit/10e9601fe87a10dd015d455f23b81156e5a05612))

## 5.92.0 (2026-04-29)

Full Changelog: [v5.91.0...v5.92.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.91.0...v5.92.0)

### Features

* Add xAI and AssemblyAI transcription engines to call-control API docs ([a730f6f](https://github.com/team-telnyx/telnyx-ruby/commit/a730f6f98c70d1d6ba3581c0e0b87f47df44ea1a))

## 5.91.0 (2026-04-29)

Full Changelog: [v5.90.0...v5.91.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.90.0...v5.91.0)

### Features

* **api:** manual updates ([6728962](https://github.com/team-telnyx/telnyx-ruby/commit/67289626f38bab94be5678e7ab50cba1fed10eeb))

## 5.90.0 (2026-04-28)

Full Changelog: [v5.89.0...v5.90.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.89.0...v5.90.0)

### Features

* ENGDESK-51445: added profile ID fields to Whatsapp messages ([d29a4f1](https://github.com/team-telnyx/telnyx-ruby/commit/d29a4f1063b8c4db96c46a1215a7f3cb5d4e1aab))

## 5.89.0 (2026-04-28)

Full Changelog: [v5.88.0...v5.89.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.88.0...v5.89.0)

### Features

* Correct external LLM forwarded metadata docs ([c9b69a1](https://github.com/team-telnyx/telnyx-ruby/commit/c9b69a1078a5c7c21caa37286c967692081c8aa8))

## 5.88.0 (2026-04-28)

Full Changelog: [v5.87.0...v5.88.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.87.0...v5.88.0)

### Features

* Add assistant external LLM forward metadata to OpenAPI ([58c32ab](https://github.com/team-telnyx/telnyx-ruby/commit/58c32aba3db29793440c757429d534912896c093))
* Document Flux transcription language hints ([f40f787](https://github.com/team-telnyx/telnyx-ruby/commit/f40f787e4d012fc2c1bf785ca5b7d42348893bc0))

## 5.87.0 (2026-04-28)

Full Changelog: [v5.86.0...v5.87.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.86.0...v5.87.0)

### Features

* TELAPPS-5725: Add deepfake detection params to call-scripting API docs ([f2d8e6c](https://github.com/team-telnyx/telnyx-ruby/commit/f2d8e6cff7100ae63512bb6d26f354d680fcc428))

## 5.86.0 (2026-04-28)

Full Changelog: [v5.85.0...v5.86.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.85.0...v5.86.0)

### Features

* Fix CreateVerifyProfileRequest to match messaging-2fa schema ([e64fe7b](https://github.com/team-telnyx/telnyx-ruby/commit/e64fe7bc0d090d86080445a4dbe149a216a09895))
* Update assistant transcription settings spec ([172cab5](https://github.com/team-telnyx/telnyx-ruby/commit/172cab549f428deb1fe9432bf91a1fa7fa9a9956))

## 5.85.0 (2026-04-27)

Full Changelog: [v5.84.0...v5.85.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.84.0...v5.85.0)

### Features

* support setting headers via env ([2a11578](https://github.com/team-telnyx/telnyx-ruby/commit/2a115784f4f9d877a679db44a49a5c6ce05ac0f4))

## 5.84.0 (2026-04-24)

Full Changelog: [v5.83.0...v5.84.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.83.0...v5.84.0)

### Features

* Add call.hold and call.unhold webhook event documentation ([7dbc6b0](https://github.com/team-telnyx/telnyx-ruby/commit/7dbc6b099b5193a72a0faadbbfc6cd7e87ea34eb))


### Documentation

* document dynamic variable support for voice_settings.voice ([b72a45a](https://github.com/team-telnyx/telnyx-ruby/commit/b72a45a9d7eb19fbbe2138f6dd1cf623256066aa))

## 5.83.0 (2026-04-23)

Full Changelog: [v5.82.0...v5.83.0](https://github.com/team-telnyx/telnyx-ruby/compare/v5.82.0...v5.83.0)

### Features

* Add xAI provider to standalone STT and TTS specs ([f46ab80](https://github.com/team-telnyx/telnyx-ruby/commit/f46ab80c6f17a19e1c7aa4120b7690e671d6bb77))


### Chores

* release ruby 5.147.0 ([4223391](https://github.com/team-telnyx/telnyx-ruby-staging/commit/42233919581a7ba2e5af708857d204777458fd0d))
* sync OpenAPI spec from cde0bc4 ([d6be999](https://github.com/team-telnyx/telnyx-ruby-staging/commit/d6be9990d1e4c7668c2fe00fc4df30c3f67745b6))
* sync OpenAPI spec from cde0bc4 ([6cea503](https://github.com/team-telnyx/telnyx-ruby-staging/commit/6cea50334b4db82e57cf0da934ce952cc42be0f0))

## [5.146.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.145.0...v5.146.0) (2026-06-18)


### Chores

* release ruby 5.146.0 ([8c32311](https://github.com/team-telnyx/telnyx-ruby-staging/commit/8c323112d7cb1a867796e780727146088a1cd4ec))
* sync OpenAPI spec from 18f622e ([7eee293](https://github.com/team-telnyx/telnyx-ruby-staging/commit/7eee293279c230c610808a0daaad9ea82d16f961))
* sync OpenAPI spec from 18f622e ([2559281](https://github.com/team-telnyx/telnyx-ruby-staging/commit/25592818725745d3c2a4f8b4fabf5911493208c9))

## [5.145.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.144.0...v5.145.0) (2026-06-18)


### Chores

* release ruby 5.145.0 ([290c7d4](https://github.com/team-telnyx/telnyx-ruby-staging/commit/290c7d42dc61229bae0306528747127279db6e67))
* sync OpenAPI spec from aa30ef4 ([f8821b5](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f8821b57f1a4c2590fb5a07a4439e31d40806475))
* sync OpenAPI spec from aa30ef4 ([2d8508a](https://github.com/team-telnyx/telnyx-ruby-staging/commit/2d8508af13a9eb29d474be608f80ab1f08a4821d))

## [5.144.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.143.0...v5.144.0) (2026-06-18)


### Bug Fixes

* update transforms for inlined response schemas ([d4da33a](https://github.com/team-telnyx/telnyx-ruby-staging/commit/d4da33a6ec7322de6d8d1cd44c8849bd1ac39045))
* update transforms for inlined response schemas ([ee5b132](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ee5b13205d8d62606143e4b94312c693a3344894))


### Chores

* release ruby 5.144.0 ([d6645ed](https://github.com/team-telnyx/telnyx-ruby-staging/commit/d6645ede0a25734471c8e78553254963a6dfd40f))

## [5.143.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.142.0...v5.143.0) (2026-06-16)


### Chores

* release ruby 5.143.0 ([f64f7d9](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f64f7d971ca50d6345dd211f88839bfcf558f565))

## [5.142.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.141.0...v5.142.0) (2026-06-16)


### Chores

* release ruby 5.142.0 ([1cfc6ca](https://github.com/team-telnyx/telnyx-ruby-staging/commit/1cfc6ca6035de86e54dded4ac6d1b02133f8a03d))

## [5.141.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.140.0...v5.141.0) (2026-06-16)


### Chores

* release ruby 5.141.0 ([3664038](https://github.com/team-telnyx/telnyx-ruby-staging/commit/3664038026a5dfa3d7d111ff2f6119c325f93f01))
* sync OpenAPI spec from e44bbbc ([671d7a2](https://github.com/team-telnyx/telnyx-ruby-staging/commit/671d7a27e8290fccfc13757c0dc402f0a84faac6))
* sync OpenAPI spec from e44bbbc ([ef4a2d0](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ef4a2d03a336cbae20004f9ab365d2bf39d09b5d))

## [5.140.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.139.0...v5.140.0) (2026-06-15)


### Bug Fixes

* rename DIR method names to match published SDKs ([5ecf45e](https://github.com/team-telnyx/telnyx-ruby-staging/commit/5ecf45e2cec107ad718348f80428abf99a4a884c))
* rename DIR method names to match published SDKs ([022a139](https://github.com/team-telnyx/telnyx-ruby-staging/commit/022a139a8b033935374d82c5a198e20507d9c9c8))


### Chores

* release ruby 5.140.0 ([1a85175](https://github.com/team-telnyx/telnyx-ruby-staging/commit/1a85175f42bc00940285dfb2f312a8ca68358873))

## [5.139.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.138.0...v5.139.0) (2026-06-15)


### Chores

* release ruby 5.139.0 ([864c5d9](https://github.com/team-telnyx/telnyx-ruby-staging/commit/864c5d9b7b6395060c613a62eb6eb274d17bdaab))
* sync OpenAPI spec from 3b5c722 ([adbd75d](https://github.com/team-telnyx/telnyx-ruby-staging/commit/adbd75d93f3db0cb41e9b7f2840bbc58e2be76e2))
* sync OpenAPI spec from 3b5c722 ([20638b8](https://github.com/team-telnyx/telnyx-ruby-staging/commit/20638b8ce9be10fa45d6c7d9f56ee8b53b0541d5))

## [5.138.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.137.0...v5.138.0) (2026-06-10)


### Chores

* release ruby 5.138.0 ([0fc8d8f](https://github.com/team-telnyx/telnyx-ruby-staging/commit/0fc8d8fb27204cfa8b569d1cb25244c9005cd552))
* sync OpenAPI spec from b9f127e ([36e7062](https://github.com/team-telnyx/telnyx-ruby-staging/commit/36e7062c3f7eaee14baf8033bea3378bc9083fea))
* sync OpenAPI spec from b9f127e ([297c337](https://github.com/team-telnyx/telnyx-ruby-staging/commit/297c337a6ec1a52ec1d5de9210e0398bc8e86ea4))

## [5.137.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.136.0...v5.137.0) (2026-06-09)


### Chores

* release ruby 5.137.0 ([f4b6ec2](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f4b6ec297d03cad78b66f54a633e4d4759f1d107))
* sync OpenAPI spec from c319cee ([4ee30c5](https://github.com/team-telnyx/telnyx-ruby-staging/commit/4ee30c5e4b3398babbd12028bc6f7a3d118d47f6))
* sync OpenAPI spec from c319cee ([fd50336](https://github.com/team-telnyx/telnyx-ruby-staging/commit/fd503360a74736db492adac339ddc89b3d629807))

## [5.136.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.135.0...v5.136.0) (2026-06-08)


### Chores

* release ruby 5.136.0 ([24c59ad](https://github.com/team-telnyx/telnyx-ruby-staging/commit/24c59ad357f2e1752eace6bd45fdeba9c72e8f60))
* sync OpenAPI spec from aae7c19 ([0606a77](https://github.com/team-telnyx/telnyx-ruby-staging/commit/0606a775d252b34f704527508db12bb83009b6a4))
* sync OpenAPI spec from aae7c19 ([69fd66d](https://github.com/team-telnyx/telnyx-ruby-staging/commit/69fd66d47a7e4c587a5b97cc976b4e97a2223e38))

## [5.135.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.134.0...v5.135.0) (2026-06-08)


### Chores

* release ruby 5.135.0 ([93ef4a4](https://github.com/team-telnyx/telnyx-ruby-staging/commit/93ef4a409b6def3fd6067f46ddd474eab5720593))

## [5.134.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.133.0...v5.134.0) (2026-06-08)


### Bug Fixes

* rename loa methods patch_all/create → update/render to match upstream ([b2b57fa](https://github.com/team-telnyx/telnyx-ruby-staging/commit/b2b57fa6130749ff54cb6237c6621778260ef1fc))
* rename loa methods patch_all/create → update/render to match upstream ([3df1e5e](https://github.com/team-telnyx/telnyx-ruby-staging/commit/3df1e5e801d8873dedf856a8a10e10cb23febe9f))


### Chores

* release ruby 5.134.0 ([73a7277](https://github.com/team-telnyx/telnyx-ruby-staging/commit/73a7277722c8dea38a2f9aac419f13d5c1079438))

## [5.133.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.132.0...v5.133.0) (2026-06-08)


### Chores

* release ruby 5.133.0 ([5546c2e](https://github.com/team-telnyx/telnyx-ruby-staging/commit/5546c2ed80ab181fdaa53222449ae457272e0e1a))

## [5.132.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.131.0...v5.132.0) (2026-06-08)


### Features

* add custom code — webhook verification + WebSocket support ([b03161b](https://github.com/team-telnyx/telnyx-ruby-staging/commit/b03161b58e7b17ace7aa436820be6277ff167f39))
* add examples/speech_to_text_websocket.rb ([0357cf4](https://github.com/team-telnyx/telnyx-ruby-staging/commit/0357cf488a032380f7969b2988d347c22e2d874a))
* add examples/text_to_speech_websocket.rb ([eeaca10](https://github.com/team-telnyx/telnyx-ruby-staging/commit/eeaca10962ff4de2c58124358ff050b8d57d8a6d))
* add lib/telnyx/lib.rb ([a061939](https://github.com/team-telnyx/telnyx-ruby-staging/commit/a06193970af5d2f121f8843464280bfaacf2be73))
* add lib/telnyx/lib/webhook_verification_error.rb ([6ecdaee](https://github.com/team-telnyx/telnyx-ruby-staging/commit/6ecdaee6edfa39d6abca1f7dfdd525b7f12bcdd7))
* add lib/telnyx/lib/webhook_verification.rb ([7dbd5c1](https://github.com/team-telnyx/telnyx-ruby-staging/commit/7dbd5c1e4a58948480194a765f86074282041e06))
* add lib/telnyx/lib/webhooks_ed25519.rb ([38566d1](https://github.com/team-telnyx/telnyx-ruby-staging/commit/38566d1011dd846ca0e8e69eab09f31340c10175))
* add lib/telnyx/lib/websocket.rb ([e0f0681](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e0f06818c30643e211abca2bf9e3f9d73946193a))
* add lib/telnyx/lib/websocket/base.rb ([3e5a66c](https://github.com/team-telnyx/telnyx-ruby-staging/commit/3e5a66c0f6a7dd500511cbc549697e0ad808dac2))
* add lib/telnyx/lib/websocket/speech_to_text_stream_params.rb ([b5bf256](https://github.com/team-telnyx/telnyx-ruby-staging/commit/b5bf25661096d8807a8fef124ffc2fdd47bf83e3))
* add lib/telnyx/lib/websocket/speech_to_text_ws.rb ([eef37ba](https://github.com/team-telnyx/telnyx-ruby-staging/commit/eef37ba08be8a6d31680f7aa0dc1c7d31cd9d34f))
* add lib/telnyx/lib/websocket/stt_server_event.rb ([e6b7157](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e6b7157a3f5c0d2196ce4a2078644e457266042f))
* add lib/telnyx/lib/websocket/text_to_speech_stream_params.rb ([20e79c8](https://github.com/team-telnyx/telnyx-ruby-staging/commit/20e79c8f4eea4dc21fc74e49813ffc6188930786))
* add lib/telnyx/lib/websocket/text_to_speech_ws.rb ([2baea1d](https://github.com/team-telnyx/telnyx-ruby-staging/commit/2baea1d00ed4b3a8ce8a0d9c596ed4dc74d11ff3))
* add lib/telnyx/lib/websocket/tts_server_event.rb ([5cdc214](https://github.com/team-telnyx/telnyx-ruby-staging/commit/5cdc2142c87f2f3c7c7aebf89b1edd3d7ccaf424))
* add lib/telnyx/lib/websocket/websocket_error.rb ([30e3326](https://github.com/team-telnyx/telnyx-ruby-staging/commit/30e33266e429a82dda62a5df8cd6939035fbf70a))
* add test/telnyx/lib/webhooks_ed25519_test.rb ([98cb80f](https://github.com/team-telnyx/telnyx-ruby-staging/commit/98cb80fe266a70ffd19249dfd0d8e93d4f3374f2))
* add test/telnyx/lib/websocket/speech_to_text_ws_test.rb ([94f5339](https://github.com/team-telnyx/telnyx-ruby-staging/commit/94f53394962300ba44dc6c942a6d2c491b332485))
* add test/telnyx/lib/websocket/text_to_speech_ws_test.rb ([17f2f03](https://github.com/team-telnyx/telnyx-ruby-staging/commit/17f2f033d396c35c96ef1f0e7f9b34a5713362c9))


### Bug Fixes

* **ci:** pass release-please pr output via env to avoid shell injection ([9225443](https://github.com/team-telnyx/telnyx-ruby-staging/commit/92254438c77c930ca22cad9478fb46bbdaa39f33))
* **ci:** pass release-please pr output via env to avoid shell injection ([349b158](https://github.com/team-telnyx/telnyx-ruby-staging/commit/349b1582133fd58d2fd2187c6efff829c2546d26))
* set executable permission on WebSocket example scripts ([09ff1dd](https://github.com/team-telnyx/telnyx-ruby-staging/commit/09ff1ddd86a519fe6fa37dacde90765669baf117))


### Chores

* release ruby 5.132.0 ([f6549ee](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f6549eebbcee37fe5859dd13fd370d5b25909cb4))
* release ruby 5.132.0 ([e0f8cbc](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e0f8cbcc8f28b07fa5878b0de9352dccc2b43266))
* release ruby 5.132.0 ([64da232](https://github.com/team-telnyx/telnyx-ruby-staging/commit/64da2325bb4a2c2d8572d304863a01f40955e740))
* sync OpenAPI spec from 6eae6a5 ([17cad26](https://github.com/team-telnyx/telnyx-ruby-staging/commit/17cad26ce103821491b1097fb7e58474d80de009))
* sync OpenAPI spec from 6eae6a5 ([602afa1](https://github.com/team-telnyx/telnyx-ruby-staging/commit/602afa139c1dfcd50328ddd01a0af5beb39bdd9a))
* sync OpenAPI spec from 95f10ce ([ffd8bb3](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ffd8bb3cbcad483bd9f0d8a5c3bca1456a3b02b2))
* sync OpenAPI spec from 95f10ce ([334a773](https://github.com/team-telnyx/telnyx-ruby-staging/commit/334a7730af38e11df86ffea37d1585e3010e1448))
* sync OpenAPI spec from 9f5f345 ([9352f44](https://github.com/team-telnyx/telnyx-ruby-staging/commit/9352f44fb749de7269850b289892650827e0f573))
* sync OpenAPI spec from 9f5f345 ([49f930c](https://github.com/team-telnyx/telnyx-ruby-staging/commit/49f930cc642db317465dca201988986ef4d46ab2))

## [5.131.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.130.0...v5.131.0) (2026-06-07)


### Bug Fixes

* extract PR number from JSON output for auto-merge ([b816807](https://github.com/team-telnyx/telnyx-ruby-staging/commit/b816807ed0c51340c27312c8e34211f88fcd4ad9))
* extract PR number from JSON output for auto-merge ([62fcdc5](https://github.com/team-telnyx/telnyx-ruby-staging/commit/62fcdc5d0bb793b17c5b62735c256485ece51f73))
* use release-please output directly for auto-merge (avoid race condition) ([14c1c0d](https://github.com/team-telnyx/telnyx-ruby-staging/commit/14c1c0da0baabc35a031df6104aa038e8a739ca0))
* use release-please output directly for auto-merge (avoid race condition) ([3340d42](https://github.com/team-telnyx/telnyx-ruby-staging/commit/3340d4240bb5b9f13e62de2023c7e67b17082e79))


### Chores

* release ruby 5.131.0 ([910d3d0](https://github.com/team-telnyx/telnyx-ruby-staging/commit/910d3d07d3eb9516d6a76c3e13c54175b9d080c9))
* sync OpenAPI spec from 0193002 ([ce97635](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ce97635733f3426d22dbd9f020cb34b3b4e6b9fb))
* sync OpenAPI spec from 0193002 ([958b070](https://github.com/team-telnyx/telnyx-ruby-staging/commit/958b0708f98edf637e6ef3ff37b3112c4ed93334))

## [5.130.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.129.0...v5.130.0) (2026-06-07)


### Features

* enable GitHub auto-merge on release PRs ([85e1380](https://github.com/team-telnyx/telnyx-ruby-staging/commit/85e1380d183f5f6197f132e6bbc68c4153262b22))
* enable GitHub auto-merge on release PRs ([ffa2d7f](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ffa2d7ff0fa68bdee5708862677413669f07eea0))


### Bug Fixes

* correct auto-merge output name and PR search pattern ([67fe3ff](https://github.com/team-telnyx/telnyx-ruby-staging/commit/67fe3ff9007ff4d4f552f605b750f18182738dc8))
* correct auto-merge output name and PR search pattern ([ca11098](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ca1109844738fe7a73f1e7e073ef095b4bf9ce38))
* restore ${{ }} expressions in release-please workflow ([7c86340](https://github.com/team-telnyx/telnyx-ruby-staging/commit/7c86340f5eb98e4f50a9f4e131b05a3d8f918c1c))
* restore ${{ }} expressions in release-please workflow ([6132c7f](https://github.com/team-telnyx/telnyx-ruby-staging/commit/6132c7fffd0151ab59cfd3b4a7589ff2ff8e03c3))

## [5.129.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.128.0...v5.129.0) (2026-06-07)


### Features

* enable automerge for release PRs ([31aceeb](https://github.com/team-telnyx/telnyx-ruby-staging/commit/31aceeb628a45ffab4bceae9d6f1e95b484ffc33))
* enable automerge for release PRs ([a78a5dd](https://github.com/team-telnyx/telnyx-ruby-staging/commit/a78a5ddc80c77c044e2cae36c73e5f287d90bc7e))

## [5.128.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.127.0...v5.128.0) (2026-06-07)


### Bug Fixes

* remove text_to_speech retrieve_speech mapping ([a0a6fe9](https://github.com/team-telnyx/telnyx-ruby-staging/commit/a0a6fe9ee95c6df5e01209603de80a44e5029eb5))
* remove text_to_speech retrieve_speech mapping ([e0513b6](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e0513b6bcb9cc773e7314dc15d72c12fc7e71ddb))
* rename create_speech to generate_speech to match spec operationId ([082b472](https://github.com/team-telnyx/telnyx-ruby-staging/commit/082b47284c506e261ba4657efe135da3419c0a2c))
* rename create_speech to generate_speech to match spec operationId ([a9c51e1](https://github.com/team-telnyx/telnyx-ruby-staging/commit/a9c51e1fbfe6eb217eb91cfb014acf525636a90d))
* use PAT for release-please to trigger CI ([7f67eb3](https://github.com/team-telnyx/telnyx-ruby-staging/commit/7f67eb399cfa12b6e494e3fb8d85db9f06ee318f))
* use PAT for release-please to trigger CI ([e483566](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e483566c079f1a1bdc7c4212858c54ae060ec773))


### Chores

* release ruby 5.128.0 ([f2aabf0](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f2aabf0e754f9357ef878d08c388657652e62022))
* release ruby 5.128.0 ([cf81fa2](https://github.com/team-telnyx/telnyx-ruby-staging/commit/cf81fa28f62460634ab59cf04985aac5e79bf60f))
* release ruby 5.128.0 ([2d60fd5](https://github.com/team-telnyx/telnyx-ruby-staging/commit/2d60fd5a984a9355191b8c2f39c0c677151005a0))
* release ruby 5.128.0 ([af27e2a](https://github.com/team-telnyx/telnyx-ruby-staging/commit/af27e2aabc9dfc005050e83ebba3b82ae7edb150))
* release ruby 5.128.0 ([27fe2d3](https://github.com/team-telnyx/telnyx-ruby-staging/commit/27fe2d39e662c73fc098ac1a16cf9536dc6e7abc))
* release ruby 5.128.0 ([3ff07a5](https://github.com/team-telnyx/telnyx-ruby-staging/commit/3ff07a5c7f92e1627e77b86a0d25edd3728b2dd9))
* sync OpenAPI spec from c46b2c0 ([e415307](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e4153078c3e4de851750ca9844d014de839b4e1d))
* sync OpenAPI spec from c46b2c0 ([515f40b](https://github.com/team-telnyx/telnyx-ruby-staging/commit/515f40b024e7c29f98c15b4832fe15392c40e63a))

## [5.127.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.126.0...v5.127.0) (2026-06-06)


### Bug Fixes

* correct YAML quoting in CI if condition ([5894187](https://github.com/team-telnyx/telnyx-ruby-staging/commit/58941873dba3a870a376f373d28b241f317fa77f))
* **go:** use model mapping for DirPhoneNumberStatus dedup ([5c4a0be](https://github.com/team-telnyx/telnyx-ruby-staging/commit/5c4a0beb2309e5edc3cdc78eca9f5884c0059251))


### Chores

* preserve repo-owned files not part of SDK generation ([a2867ef](https://github.com/team-telnyx/telnyx-ruby-staging/commit/a2867ef8347e6a87a9da0747565a72ce9acbb44a))
* release ruby 5.127.0 ([1bc2cc7](https://github.com/team-telnyx/telnyx-ruby-staging/commit/1bc2cc745ff677399c38b956022554704a364361))
* sync OpenAPI spec from 4fdd07b ([781f104](https://github.com/team-telnyx/telnyx-ruby-staging/commit/781f10424a758c9ac8175c698b4ddf96beae5fde))
* trigger CI ([ae6a813](https://github.com/team-telnyx/telnyx-ruby-staging/commit/ae6a8131f106cfcbc8cbf4ccc5d087af7adf670c))

## [5.126.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.125.0...v5.126.0) (2026-06-05)


### Bug Fixes

* **ai:** name expression op enum members (CannotInferEnumMemberName) ([d68d111](https://github.com/team-telnyx/telnyx-ruby-staging/commit/d68d111ce1a196c5060998e8750ead2334584fde))
* run CI build/lint on internal PRs not just forks ([98e5c38](https://github.com/team-telnyx/telnyx-ruby-staging/commit/98e5c3845f41b5c558fffeab3885cc7cc5a4bdfc))
* run CI build/lint on internal PRs not just forks ([d17a30b](https://github.com/team-telnyx/telnyx-ruby-staging/commit/d17a30b6e2feca6142a06effd9f28f9ec28311a6))


### Chores

* release ruby 5.126.0 ([e99d826](https://github.com/team-telnyx/telnyx-ruby-staging/commit/e99d8260b5a1179858718ffd18cfe1594a2a5150))

## [5.125.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.124.0...v5.125.0) (2026-06-03)


### Chores

* release ruby 5.125.0 ([8f62c3c](https://github.com/team-telnyx/telnyx-ruby-staging/commit/8f62c3c1eef9812a3695b24dff76f3c4acfdfd8f))

## [5.124.0](https://github.com/team-telnyx/telnyx-ruby-staging/compare/v5.123.0...v5.124.0) (2026-06-03)


### Chores

* release ruby 5.124.0 ([f4ea525](https://github.com/team-telnyx/telnyx-ruby-staging/commit/f4ea52557eaa9e8031fba48095f88c9f3a461a32))
