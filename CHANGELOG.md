# Changelog

## 4.3.0 (2025-10-16)

Full Changelog: [v4.2.0...v4.3.0](https://github.com/team-telnyx/telnyx-ruby/compare/v4.2.0...v4.3.0)

### Features

* ENGDESK-45836: Document private endpoint for republishing account events ([3dc8f26](https://github.com/team-telnyx/telnyx-ruby/commit/3dc8f262508aeb51a03b9dd45ffad74a3c5549a9))
* Fix broken link to List SIM card action ([743a217](https://github.com/team-telnyx/telnyx-ruby/commit/743a2177c49ed45fef13b1109f301c32a857f58c))
* MSG-5978: Add BRN fields to toll-free verification OpenAPI specs ([aa3e232](https://github.com/team-telnyx/telnyx-ruby/commit/aa3e232f11e83ec7a8dd873d755f331101d63ec8))
* Retell assistants import ([432388a](https://github.com/team-telnyx/telnyx-ruby/commit/432388ad8cd23ff535b3eceeda26ca3d320eeb1a))


### Bug Fixes

* absolutely qualified uris should always override the default ([12809be](https://github.com/team-telnyx/telnyx-ruby/commit/12809bebb9177e7ac3f48bfa7d80860d90bde7e9))
* should not reuse buffers for `IO.copy_stream` interop ([2e35266](https://github.com/team-telnyx/telnyx-ruby/commit/2e3526691c82d412beb27418e7d55ffad5449c12))


### Chores

* ignore linter error for tests having large collections ([8d69855](https://github.com/team-telnyx/telnyx-ruby/commit/8d6985599250a4e429445c1369d809f5c0346ecf))
* simplify model references ([d2c4915](https://github.com/team-telnyx/telnyx-ruby/commit/d2c491501c248ea07dc8502c7b1a5aa662b7ac25))

## 4.2.0 (2025-10-08)

Full Changelog: [v4.1.0...v4.2.0](https://github.com/team-telnyx/telnyx-ruby/compare/v4.1.0...v4.2.0)

### Features

* ENGDESK-45343: Add CustomHeaders documentation to TeXML Dial endpoints ([933af79](https://github.com/team-telnyx/telnyx-ruby/commit/933af79e747d794e1c5c980b9575f3d48c3095d1))
* MSG-5944: added mobile_only field to messaging profiles ([73a4a4e](https://github.com/team-telnyx/telnyx-ruby/commit/73a4a4e0bfa45b7be8b0c1f1e043a5e002f14525))


### Bug Fixes

* intersections should be all generated ([2813317](https://github.com/team-telnyx/telnyx-ruby/commit/2813317fb45a849825991c6d4527e5796aef10f7))
* use absolute qualification as required ([f397f25](https://github.com/team-telnyx/telnyx-ruby/commit/f397f2509dcff24958bf33f36318f8e42a1a016a))

## 4.1.0 (2025-10-06)

Full Changelog: [v4.0.0...v4.1.0](https://github.com/team-telnyx/telnyx-ruby/compare/v4.0.0...v4.1.0)

### Features

* **api:** manual updates ([29742e6](https://github.com/team-telnyx/telnyx-ruby/commit/29742e6ad6d820a8dab36a6b8dc620947c9eaddb))
* Engdesk 44932 ([6b9578e](https://github.com/team-telnyx/telnyx-ruby/commit/6b9578e96c7c5f173a8a1410839177c72a5019c3))
* Fix listing deepgram languages for transcription start ([aac336b](https://github.com/team-telnyx/telnyx-ruby/commit/aac336b7d6eb18598bed322853b9758c9ca2d0a8))


### Bug Fixes

* coroutine leaks from connection pool ([af594e7](https://github.com/team-telnyx/telnyx-ruby/commit/af594e7c7ca9c21523ff23af7e603cd8c73384a1))

## 4.0.0 (2025-09-30)

Full Changelog: [v3.0.6...v4.0.0](https://github.com/team-telnyx/telnyx-ruby/compare/v3.0.6...v4.0.0)

### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([fb4a3d1](https://github.com/team-telnyx/telnyx-ruby/commit/fb4a3d124ea18c939725c09a9d22a8bde7eea3cb))
* **internal:** fix ruby class types ([8ab7bac](https://github.com/team-telnyx/telnyx-ruby/commit/8ab7bac36ee463f20ff65484ecec561cb4260106))


### Chores

* configure new SDK language ([767d294](https://github.com/team-telnyx/telnyx-ruby/commit/767d294576bfe88a9e47dd3365a250cf39f1edfd))
* sync repo ([30ac4bf](https://github.com/team-telnyx/telnyx-ruby/commit/30ac4bf8c4d7a3739d148ca7e6ac1294365bb0d7))
