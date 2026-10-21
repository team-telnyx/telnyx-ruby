# typed: strong

module Telnyx
  module Models
    class TtsIntegrationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TtsIntegrationCreateParams, Telnyx::Internal::AnyHash)
        end

      # What the engine supports. An unknown key is rejected.
      sig { returns(Telnyx::CommunityTtsEngineCapabilities) }
      attr_reader :capabilities

      sig do
        params(
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash
        ).void
      end
      attr_writer :capabilities

      # The engine's unique name, and the first part of its voices
      # (`<name>.<voice_id>`). 1-64 characters: lowercase letters, digits, hyphens and
      # underscores, starting with a letter or digit. Built-in vendor names and the
      # generic voice names `male`, `female`, `man`, `woman`, `alice` and `custom` are
      # reserved. Unique across all Telnyx accounts and cannot be changed later. A
      # deleted engine's name stays reserved for the organization that owned it.
      sig { returns(String) }
      attr_accessor :name

      # The audio formats the engine can produce, at least one, without duplicates.
      sig { returns(T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol]) }
      attr_accessor :supported_audio_formats

      # The `https://` URL of the engine's voice listing, with the same host rules. It
      # answers `GET` with
      # `{"voices": [{"provider", "name", "voice_id", "language", "gender"}]}`: at most
      # 1000 voices, each `voice_id` unique and matching
      # `^[A-Za-z0-9][A-Za-z0-9_-]{0,127}$`, each `language` at most 35 characters.
      # Telnyx reads it when the engine is registered or updated, every 15 minutes, and
      # on `refresh_voices`.
      sig { returns(String) }
      attr_accessor :voices_url

      # The `wss://` URL Telnyx connects to. It must be reachable on the public
      # internet: plain `ws://`, private, loopback, link-local, shared, documentation,
      # multicast and reserved addresses, and internal hostnames are rejected, as are
      # credentials embedded in the URL or in credential-looking query parameters. At
      # most 2048 characters.
      sig { returns(String) }
      attr_accessor :websocket_url

      # How long Telnyx waits for the WebSocket connection to open, from 500 to 10000.
      # Default: 3000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :connect_timeout_ms

      sig { params(connect_timeout_ms: Integer).void }
      attr_writer :connect_timeout_ms

      # A contact address stored for the Telnyx platform team. Telnyx does not email it
      # automatically. At most 254 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      # URL of the publisher's data retention policy, at most 2048 characters. It is
      # returned in the discoverable listing.
      sig { returns(T.nilable(String)) }
      attr_accessor :data_retention_policy_url

      # An `https://` page where callers learn how to get a key for the engine and how
      # to use it, with a host and no credentials in it, at most 2048 characters. It is
      # returned in the discoverable listing.
      sig { returns(T.nilable(String)) }
      attr_accessor :documentation_url

      # `private`: only your organization can use the engine. `public`: any organization
      # can, once it is `active`.
      sig { returns(T.nilable(Telnyx::CommunityTtsEngineVisibility::OrSymbol)) }
      attr_reader :visibility

      sig do
        params(visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol).void
      end
      attr_writer :visibility

      # The identifier of an Integration Secret in your organization. When set, Telnyx
      # sends its value as a bearer token when it reads `voices_url`. It is never used
      # for synthesis. Send `null` on an update to clear it. At most 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :voices_api_key_ref

      sig do
        params(
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
          name: String,
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
          voices_url: String,
          websocket_url: String,
          connect_timeout_ms: Integer,
          contact_email: T.nilable(String),
          data_retention_policy_url: T.nilable(String),
          documentation_url: T.nilable(String),
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          voices_api_key_ref: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # What the engine supports. An unknown key is rejected.
        capabilities:,
        # The engine's unique name, and the first part of its voices
        # (`<name>.<voice_id>`). 1-64 characters: lowercase letters, digits, hyphens and
        # underscores, starting with a letter or digit. Built-in vendor names and the
        # generic voice names `male`, `female`, `man`, `woman`, `alice` and `custom` are
        # reserved. Unique across all Telnyx accounts and cannot be changed later. A
        # deleted engine's name stays reserved for the organization that owned it.
        name:,
        # The audio formats the engine can produce, at least one, without duplicates.
        supported_audio_formats:,
        # The `https://` URL of the engine's voice listing, with the same host rules. It
        # answers `GET` with
        # `{"voices": [{"provider", "name", "voice_id", "language", "gender"}]}`: at most
        # 1000 voices, each `voice_id` unique and matching
        # `^[A-Za-z0-9][A-Za-z0-9_-]{0,127}$`, each `language` at most 35 characters.
        # Telnyx reads it when the engine is registered or updated, every 15 minutes, and
        # on `refresh_voices`.
        voices_url:,
        # The `wss://` URL Telnyx connects to. It must be reachable on the public
        # internet: plain `ws://`, private, loopback, link-local, shared, documentation,
        # multicast and reserved addresses, and internal hostnames are rejected, as are
        # credentials embedded in the URL or in credential-looking query parameters. At
        # most 2048 characters.
        websocket_url:,
        # How long Telnyx waits for the WebSocket connection to open, from 500 to 10000.
        # Default: 3000.
        connect_timeout_ms: nil,
        # A contact address stored for the Telnyx platform team. Telnyx does not email it
        # automatically. At most 254 characters.
        contact_email: nil,
        # URL of the publisher's data retention policy, at most 2048 characters. It is
        # returned in the discoverable listing.
        data_retention_policy_url: nil,
        # An `https://` page where callers learn how to get a key for the engine and how
        # to use it, with a host and no credentials in it, at most 2048 characters. It is
        # returned in the discoverable listing.
        documentation_url: nil,
        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        visibility: nil,
        # The identifier of an Integration Secret in your organization. When set, Telnyx
        # sends its value as a bearer token when it reads `voices_url`. It is never used
        # for synthesis. Send `null` on an update to clear it. At most 255 characters.
        voices_api_key_ref: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            capabilities: Telnyx::CommunityTtsEngineCapabilities,
            name: String,
            supported_audio_formats:
              T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
            voices_url: String,
            websocket_url: String,
            connect_timeout_ms: Integer,
            contact_email: T.nilable(String),
            data_retention_policy_url: T.nilable(String),
            documentation_url: T.nilable(String),
            visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
            voices_api_key_ref: T.nilable(String),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
