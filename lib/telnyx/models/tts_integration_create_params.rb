# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#create
    class TtsIntegrationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute capabilities
      #   What the engine supports. An unknown key is rejected.
      #
      #   @return [Telnyx::Models::CommunityTtsEngineCapabilities]
      required :capabilities, -> { Telnyx::CommunityTtsEngineCapabilities }

      # @!attribute name
      #   The engine's unique name, and the first part of its voices
      #   (`<name>.<voice_id>`). 1-64 characters: lowercase letters, digits, hyphens and
      #   underscores, starting with a letter or digit. Built-in vendor names and the
      #   generic voice names `male`, `female`, `man`, `woman`, `alice` and `custom` are
      #   reserved. Unique across all Telnyx accounts and cannot be changed later. A
      #   deleted engine's name stays reserved for the organization that owned it.
      #
      #   @return [String]
      required :name, String

      # @!attribute supported_audio_formats
      #   The audio formats the engine can produce, at least one, without duplicates.
      #
      #   @return [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      required :supported_audio_formats,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat] }

      # @!attribute voices_url
      #   The `https://` URL of the engine's voice listing, with the same host rules. It
      #   answers `GET` with
      #   `{"voices": [{"provider", "name", "voice_id", "language", "gender"}]}`: at most
      #   1000 voices, each `voice_id` unique and matching
      #   `^[A-Za-z0-9][A-Za-z0-9_-]{0,127}$`, each `language` at most 35 characters.
      #   Telnyx reads it when the engine is registered or updated, every 15 minutes, and
      #   on `refresh_voices`.
      #
      #   @return [String]
      required :voices_url, String

      # @!attribute websocket_url
      #   The `wss://` URL Telnyx connects to. It must be reachable on the public
      #   internet: plain `ws://`, private, loopback, link-local, shared, documentation,
      #   multicast and reserved addresses, and internal hostnames are rejected, as are
      #   credentials embedded in the URL or in credential-looking query parameters. At
      #   most 2048 characters.
      #
      #   @return [String]
      required :websocket_url, String

      # @!attribute connect_timeout_ms
      #   How long Telnyx waits for the WebSocket connection to open, from 500 to 10000.
      #   Default: 3000.
      #
      #   @return [Integer, nil]
      optional :connect_timeout_ms, Integer

      # @!attribute contact_email
      #   A contact address stored for the Telnyx platform team. Telnyx does not email it
      #   automatically. At most 254 characters.
      #
      #   @return [String, nil]
      optional :contact_email, String, nil?: true

      # @!attribute data_retention_policy_url
      #   URL of the publisher's data retention policy, at most 2048 characters. It is
      #   returned in the discoverable listing.
      #
      #   @return [String, nil]
      optional :data_retention_policy_url, String, nil?: true

      # @!attribute documentation_url
      #   An `https://` page where callers learn how to get a key for the engine and how
      #   to use it, with a host and no credentials in it, at most 2048 characters. It is
      #   returned in the discoverable listing.
      #
      #   @return [String, nil]
      optional :documentation_url, String, nil?: true

      # @!attribute visibility
      #   `private`: only your organization can use the engine. `public`: any organization
      #   can, once it is `active`.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineVisibility, nil]
      optional :visibility, enum: -> { Telnyx::CommunityTtsEngineVisibility }

      # @!attribute voices_api_key_ref
      #   The identifier of an Integration Secret in your organization. When set, Telnyx
      #   sends its value as a bearer token when it reads `voices_url`. It is never used
      #   for synthesis. Send `null` on an update to clear it. At most 255 characters.
      #
      #   @return [String, nil]
      optional :voices_api_key_ref, String, nil?: true

      # @!method initialize(capabilities:, name:, supported_audio_formats:, voices_url:, websocket_url:, connect_timeout_ms: nil, contact_email: nil, data_retention_policy_url: nil, documentation_url: nil, visibility: nil, voices_api_key_ref: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TtsIntegrationCreateParams} for more details.
      #
      #   @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      #   @param name [String] The engine's unique name, and the first part of its voices (`<name>.<voice_id>`)
      #
      #   @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>] The audio formats the engine can produce, at least one, without duplicates.
      #
      #   @param voices_url [String] The `https://` URL of the engine's voice listing, with the same host rules. It a
      #
      #   @param websocket_url [String] The `wss://` URL Telnyx connects to. It must be reachable on the public internet
      #
      #   @param connect_timeout_ms [Integer] How long Telnyx waits for the WebSocket connection to open, from 500 to 10000. D
      #
      #   @param contact_email [String, nil] A contact address stored for the Telnyx platform team. Telnyx does not email it
      #
      #   @param data_retention_policy_url [String, nil] URL of the publisher's data retention policy, at most 2048 characters. It is ret
      #
      #   @param documentation_url [String, nil] An `https://` page where callers learn how to get a key for the engine and how t
      #
      #   @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      #   @param voices_api_key_ref [String, nil] The identifier of an Integration Secret in your organization. When set, Telnyx s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
