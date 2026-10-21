# frozen_string_literal: true

module Telnyx
  module Resources
    class TtsIntegrations
      # Register and manage text-to-speech (TTS) engines you publish, and find the
      # public engines other organizations published, so an AI Assistant, TeXML or Call
      # Control can speak with one of their voices, using your own key for it, instead
      # of a Telnyx-integrated vendor.
      class Actions
        # Pause an `active` engine so it stops serving traffic, without deleting it.
        # Owner-initiated and owner-reversible via `enable`. Only an `active` engine can
        # be disabled. While an engine is disabled, no organization can use it, including
        # other organizations if it is `public`.
        #
        # @overload disable(id, request_options: {})
        #
        # @param id [String] Unique identifier of the community TTS engine.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CommunityTtsEngine]
        #
        # @see Telnyx::Models::TtsIntegrations::ActionDisableParams
        def disable(id, params = {})
          @client.request(
            method: :post,
            path: ["tts_integrations/%1$s/actions/disable", id],
            model: Telnyx::CommunityTtsEngine,
            options: params[:request_options]
          )
        end

        # Resume a `disabled` engine. Only a `disabled` engine can be enabled; a
        # `suspended` engine can only be reinstated by Telnyx.
        #
        # @overload enable(id, request_options: {})
        #
        # @param id [String] Unique identifier of the community TTS engine.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CommunityTtsEngine]
        #
        # @see Telnyx::Models::TtsIntegrations::ActionEnableParams
        def enable(id, params = {})
          @client.request(
            method: :post,
            path: ["tts_integrations/%1$s/actions/enable", id],
            model: Telnyx::CommunityTtsEngine,
            options: params[:request_options]
          )
        end

        # Make Telnyx read the engine's `voices_url` now instead of at the next scheduled
        # read (every 15 minutes). On success the stored list is replaced and
        # `voices_degraded` is cleared. The previous list is kept when the read fails.
        #
        # @overload refresh_voices(id, request_options: {})
        #
        # @param id [String] Unique identifier of the community TTS engine.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CommunityTtsEngine]
        #
        # @see Telnyx::Models::TtsIntegrations::ActionRefreshVoicesParams
        def refresh_voices(id, params = {})
          @client.request(
            method: :post,
            path: ["tts_integrations/%1$s/actions/refresh_voices", id],
            model: Telnyx::CommunityTtsEngine,
            options: params[:request_options]
          )
        end

        # Ask Telnyx to review a `draft` engine so it can serve other organizations. Only
        # a `draft` engine with no pending or approved review can be submitted (a rejected
        # one can be submitted again). The engine moves to `review_status: pending`;
        # Telnyx approves it (`status: active`, `review_status: approved`) or rejects it
        # with `review_notes`. See the
        # [Community TTS engines guide](/docs/voice/tts/community-engines) for the full
        # review flow.
        #
        # @overload request_review(id, request_options: {})
        #
        # @param id [String] Unique identifier of the community TTS engine.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CommunityTtsEngine]
        #
        # @see Telnyx::Models::TtsIntegrations::ActionRequestReviewParams
        def request_review(id, params = {})
          @client.request(
            method: :post,
            path: ["tts_integrations/%1$s/actions/request_review", id],
            model: Telnyx::CommunityTtsEngine,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::TtsIntegrations::ActionTestConnectionParams} for more details.
        #
        # Check an engine end to end with your own key, without a call. Telnyx reads the
        # voice list, connects to the engine's `websocket_url` with the Integration Secret
        # named by `api_key_ref`, sends a short text, and checks the answer: the
        # handshake, the credentials, the audio, the final frame and a clean close. The
        # result is recorded (see `conformance_runs`) and returned. A test within 10
        # seconds of the previous one is refused with `429`, and a `suspended` engine
        # cannot be tested. See
        # [Try your engine before approval](/docs/voice/tts/community-engines#try-your-engine-before-approval).
        #
        # @overload test_connection(id, api_key_ref:, voice_id: nil, request_options: {})
        #
        # @param id [String] Unique identifier of the community TTS engine.
        #
        # @param api_key_ref [String] The identifier of the Integration Secret in your organization that Telnyx connec
        #
        # @param voice_id [String] The voice to test. Default: the first voice in the engine's list. It must be in
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun]
        #
        # @see Telnyx::Models::TtsIntegrations::ActionTestConnectionParams
        def test_connection(id, params)
          parsed, options = Telnyx::TtsIntegrations::ActionTestConnectionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["tts_integrations/%1$s/actions/test_connection", id],
            body: parsed,
            model: Telnyx::TtsIntegrations::CommunityTtsConformanceRun,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
