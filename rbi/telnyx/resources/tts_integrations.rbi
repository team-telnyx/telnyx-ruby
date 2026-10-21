# typed: strong

module Telnyx
  module Resources
    # Register and manage text-to-speech (TTS) engines you publish, and find the
    # public engines other organizations published, so an AI Assistant, TeXML or Call
    # Control can speak with one of their voices, using your own key for it, instead
    # of a Telnyx-integrated vendor.
    class TtsIntegrations
      # Register and manage text-to-speech (TTS) engines you publish, and find the
      # public engines other organizations published, so an AI Assistant, TeXML or Call
      # Control can speak with one of their voices, using your own key for it, instead
      # of a Telnyx-integrated vendor.
      sig { returns(Telnyx::Resources::TtsIntegrations::Actions) }
      attr_reader :actions

      # Register a WebSocket text-to-speech engine. Telnyx reads the engine's
      # `voices_url` while it registers the engine and refuses the registration with a
      # `422` if the list is unreachable or invalid. The engine starts at
      # `status: draft` and cannot serve other organizations' traffic until Telnyx
      # approves it (your own organization can try it with its own key meanwhile). It is
      # `visibility: private` unless you set `public`: a private engine can be used only
      # by your organization, a public one by any organization once it is `active`. See
      # the [Community TTS engines guide](/docs/voice/tts/community-engines) for the
      # full review flow.
      #
      # `websocket_url` must be `wss://` and `voices_url` must be `https://`, both on a
      # public host; a plain `ws://` URL is rejected, and so is a credential embedded in
      # either. Callers bring their own key for your engine: Telnyx stores none, so
      # there is nothing to register here for synthesis. `voices_api_key_ref` is
      # optional and used only to read your voice list.
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
        ).returns(Telnyx::CommunityTtsEngine)
      end
      def create(
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

      # Retrieve one of your own community TTS engines by ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CommunityTtsEngine)
      end
      def retrieve(
        # Unique identifier of the community TTS engine.
        id,
        request_options: {}
      )
      end

      # Same as `PUT`: only the fields you send change.
      sig do
        params(
          id: String,
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
          connect_timeout_ms: Integer,
          contact_email: T.nilable(String),
          data_retention_policy_url: T.nilable(String),
          documentation_url: T.nilable(String),
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          voices_api_key_ref: T.nilable(String),
          voices_url: String,
          websocket_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CommunityTtsEngine)
      end
      def update(
        # Unique identifier of the community TTS engine.
        id,
        # What the engine supports. An unknown key is rejected.
        capabilities: nil,
        connect_timeout_ms: nil,
        contact_email: nil,
        data_retention_policy_url: nil,
        documentation_url: nil,
        supported_audio_formats: nil,
        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        visibility: nil,
        voices_api_key_ref: nil,
        # See the create request.
        voices_url: nil,
        # See the create request.
        websocket_url: nil,
        request_options: {}
      )
      end

      # List every community TTS engine your organization has registered, at any status
      # or visibility. Use `GET /tts_integrations/discoverable` instead to also see
      # other organizations' public, active engines.
      sig do
        params(
          page: Telnyx::TtsIntegrationListParams::Page::OrHash,
          status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TtsIntegrationListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Filter by status.
        status: nil,
        # Filter by visibility.
        visibility: nil,
        request_options: {}
      )
      end

      # Delete one of your own community TTS engines. The engine disappears from every
      # listing and lookup and can no longer serve traffic, but its `name` stays
      # reserved for your organization: no other organization can register it, and you
      # can register it again later. An assistant or call still configured with one of
      # its voices cannot use it until an engine with that name exists again.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Unique identifier of the community TTS engine.
        id,
        request_options: {}
      )
      end

      # Change one of your own community TTS engines. Every field is optional: omit a
      # field to leave it unchanged. `name` cannot be changed. Telnyx reads the
      # `voices_url` again and refuses an update that leaves the engine with an
      # unreadable list. Changing `websocket_url`, `voices_url`,
      # `supported_audio_formats` or `capabilities`, or making a `private` engine
      # `public`, sends the engine back to `status: draft` and clears its review. See
      # the [Community TTS engines guide](/docs/voice/tts/community-engines) for the
      # full review flow.
      sig do
        params(
          id: String,
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
          connect_timeout_ms: Integer,
          contact_email: T.nilable(String),
          data_retention_policy_url: T.nilable(String),
          documentation_url: T.nilable(String),
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          voices_api_key_ref: T.nilable(String),
          voices_url: String,
          websocket_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::CommunityTtsEngine)
      end
      def replace(
        # Unique identifier of the community TTS engine.
        id,
        # What the engine supports. An unknown key is rejected.
        capabilities: nil,
        connect_timeout_ms: nil,
        contact_email: nil,
        data_retention_policy_url: nil,
        documentation_url: nil,
        supported_audio_formats: nil,
        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        visibility: nil,
        voices_api_key_ref: nil,
        # See the create request.
        voices_url: nil,
        # See the create request.
        websocket_url: nil,
        request_options: {}
      )
      end

      # The recorded runs of `test_connection` for one of your engines, newest first.
      # Telnyx keeps the latest 50.
      sig do
        params(
          id: String,
          page:
            Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TtsIntegrationRetrieveConformanceRunsResponse)
      end
      def retrieve_conformance_runs(
        # Unique identifier of the community TTS engine.
        id,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # List the engines you can use: your own, at any status, and other organizations'
      # engines that are `public` and `active`. Each entry carries what a caller needs
      # to choose an engine: its `name` (the first part of its voices,
      # `<name>.<voice_id>`), `voices_count`, audio formats, capabilities, and
      # `documentation_url`. It never carries the publisher's contact details, review
      # notes, or `voices_api_key_ref`. Read an engine's voices with
      # `GET /tts_integrations/{id}/voices`.
      sig do
        params(
          page: Telnyx::TtsIntegrationRetrieveDiscoverableParams::Page::OrHash,
          status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse)
      end
      def retrieve_discoverable(
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Filter by status.
        status: nil,
        # Filter by visibility.
        visibility: nil,
        request_options: {}
      )
      end

      # The voices Telnyx last read from the engine's `voices_url`, in the shape the
      # engine published. A caller selects one as `<engine name>.<voice_id>`. The list
      # is replaced only when a new read succeeds, so an engine whose `voices_url` is
      # down keeps serving its last list. `[]` until the first read succeeds.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TtsIntegrationRetrieveVoicesResponse)
      end
      def retrieve_voices(
        # Unique identifier of the community TTS engine.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
