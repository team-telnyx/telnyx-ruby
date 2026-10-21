# frozen_string_literal: true

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
      # @return [Telnyx::Resources::TtsIntegrations::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationCreateParams} for more details.
      #
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
      #
      # @overload create(capabilities:, name:, supported_audio_formats:, voices_url:, websocket_url:, connect_timeout_ms: nil, contact_email: nil, data_retention_policy_url: nil, documentation_url: nil, visibility: nil, voices_api_key_ref: nil, request_options: {})
      #
      # @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      # @param name [String] The engine's unique name, and the first part of its voices (`<name>.<voice_id>`)
      #
      # @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>] The audio formats the engine can produce, at least one, without duplicates.
      #
      # @param voices_url [String] The `https://` URL of the engine's voice listing, with the same host rules. It a
      #
      # @param websocket_url [String] The `wss://` URL Telnyx connects to. It must be reachable on the public internet
      #
      # @param connect_timeout_ms [Integer] How long Telnyx waits for the WebSocket connection to open, from 500 to 10000. D
      #
      # @param contact_email [String, nil] A contact address stored for the Telnyx platform team. Telnyx does not email it
      #
      # @param data_retention_policy_url [String, nil] URL of the publisher's data retention policy, at most 2048 characters. It is ret
      #
      # @param documentation_url [String, nil] An `https://` page where callers learn how to get a key for the engine and how t
      #
      # @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      # @param voices_api_key_ref [String, nil] The identifier of an Integration Secret in your organization. When set, Telnyx s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommunityTtsEngine]
      #
      # @see Telnyx::Models::TtsIntegrationCreateParams
      def create(params)
        parsed, options = Telnyx::TtsIntegrationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "tts_integrations",
          body: parsed,
          model: Telnyx::CommunityTtsEngine,
          options: options
        )
      end

      # Retrieve one of your own community TTS engines by ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommunityTtsEngine]
      #
      # @see Telnyx::Models::TtsIntegrationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["tts_integrations/%1$s", id],
          model: Telnyx::CommunityTtsEngine,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationUpdateParams} for more details.
      #
      # Same as `PUT`: only the fields you send change.
      #
      # @overload update(id, capabilities: nil, connect_timeout_ms: nil, contact_email: nil, data_retention_policy_url: nil, documentation_url: nil, supported_audio_formats: nil, visibility: nil, voices_api_key_ref: nil, voices_url: nil, websocket_url: nil, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      # @param connect_timeout_ms [Integer]
      #
      # @param contact_email [String, nil]
      #
      # @param data_retention_policy_url [String, nil]
      #
      # @param documentation_url [String, nil]
      #
      # @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      #
      # @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      # @param voices_api_key_ref [String, nil]
      #
      # @param voices_url [String] See the create request.
      #
      # @param websocket_url [String] See the create request.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommunityTtsEngine]
      #
      # @see Telnyx::Models::TtsIntegrationUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::TtsIntegrationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["tts_integrations/%1$s", id],
          body: parsed,
          model: Telnyx::CommunityTtsEngine,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationListParams} for more details.
      #
      # List every community TTS engine your organization has registered, at any status
      # or visibility. Use `GET /tts_integrations/discoverable` instead to also see
      # other organizations' public, active engines.
      #
      # @overload list(page: nil, status: nil, visibility: nil, request_options: {})
      #
      # @param page [Telnyx::Models::TtsIntegrationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param status [Symbol, Telnyx::Models::CommunityTtsEngineStatus] Filter by status.
      #
      # @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] Filter by visibility.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TtsIntegrationListResponse]
      #
      # @see Telnyx::Models::TtsIntegrationListParams
      def list(params = {})
        parsed, options = Telnyx::TtsIntegrationListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "tts_integrations",
          query: query,
          model: Telnyx::Models::TtsIntegrationListResponse,
          options: options
        )
      end

      # Delete one of your own community TTS engines. The engine disappears from every
      # listing and lookup and can no longer serve traffic, but its `name` stays
      # reserved for your organization: no other organization can register it, and you
      # can register it again later. An assistant or call still configured with one of
      # its voices cannot use it until an engine with that name exists again.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::TtsIntegrationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["tts_integrations/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationReplaceParams} for more details.
      #
      # Change one of your own community TTS engines. Every field is optional: omit a
      # field to leave it unchanged. `name` cannot be changed. Telnyx reads the
      # `voices_url` again and refuses an update that leaves the engine with an
      # unreadable list. Changing `websocket_url`, `voices_url`,
      # `supported_audio_formats` or `capabilities`, or making a `private` engine
      # `public`, sends the engine back to `status: draft` and clears its review. See
      # the [Community TTS engines guide](/docs/voice/tts/community-engines) for the
      # full review flow.
      #
      # @overload replace(id, capabilities: nil, connect_timeout_ms: nil, contact_email: nil, data_retention_policy_url: nil, documentation_url: nil, supported_audio_formats: nil, visibility: nil, voices_api_key_ref: nil, voices_url: nil, websocket_url: nil, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      # @param connect_timeout_ms [Integer]
      #
      # @param contact_email [String, nil]
      #
      # @param data_retention_policy_url [String, nil]
      #
      # @param documentation_url [String, nil]
      #
      # @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      #
      # @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      # @param voices_api_key_ref [String, nil]
      #
      # @param voices_url [String] See the create request.
      #
      # @param websocket_url [String] See the create request.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommunityTtsEngine]
      #
      # @see Telnyx::Models::TtsIntegrationReplaceParams
      def replace(id, params = {})
        parsed, options = Telnyx::TtsIntegrationReplaceParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["tts_integrations/%1$s", id],
          body: parsed,
          model: Telnyx::CommunityTtsEngine,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams} for more details.
      #
      # The recorded runs of `test_connection` for one of your engines, newest first.
      # Telnyx keeps the latest 50.
      #
      # @overload retrieve_conformance_runs(id, page: nil, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param page [Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TtsIntegrationRetrieveConformanceRunsResponse]
      #
      # @see Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams
      def retrieve_conformance_runs(id, params = {})
        parsed, options = Telnyx::TtsIntegrationRetrieveConformanceRunsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["tts_integrations/%1$s/conformance_runs", id],
          query: query,
          model: Telnyx::Models::TtsIntegrationRetrieveConformanceRunsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams} for more details.
      #
      # List the engines you can use: your own, at any status, and other organizations'
      # engines that are `public` and `active`. Each entry carries what a caller needs
      # to choose an engine: its `name` (the first part of its voices,
      # `<name>.<voice_id>`), `voices_count`, audio formats, capabilities, and
      # `documentation_url`. It never carries the publisher's contact details, review
      # notes, or `voices_api_key_ref`. Read an engine's voices with
      # `GET /tts_integrations/{id}/voices`.
      #
      # @overload retrieve_discoverable(page: nil, status: nil, visibility: nil, request_options: {})
      #
      # @param page [Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param status [Symbol, Telnyx::Models::CommunityTtsEngineStatus] Filter by status.
      #
      # @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] Filter by visibility.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse]
      #
      # @see Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams
      def retrieve_discoverable(params = {})
        parsed, options = Telnyx::TtsIntegrationRetrieveDiscoverableParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "tts_integrations/discoverable",
          query: query,
          model: Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse,
          options: options
        )
      end

      # The voices Telnyx last read from the engine's `voices_url`, in the shape the
      # engine published. A caller selects one as `<engine name>.<voice_id>`. The list
      # is replaced only when a new read succeeds, so an engine whose `voices_url` is
      # down keeps serving its last list. `[]` until the first read succeeds.
      #
      # @overload retrieve_voices(id, request_options: {})
      #
      # @param id [String] Unique identifier of the community TTS engine.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TtsIntegrationRetrieveVoicesResponse]
      #
      # @see Telnyx::Models::TtsIntegrationRetrieveVoicesParams
      def retrieve_voices(id, params = {})
        @client.request(
          method: :get,
          path: ["tts_integrations/%1$s/voices", id],
          model: Telnyx::Models::TtsIntegrationRetrieveVoicesResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::TtsIntegrations::Actions.new(client: client)
      end
    end
  end
end
