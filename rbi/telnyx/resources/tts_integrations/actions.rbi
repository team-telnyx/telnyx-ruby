# typed: strong

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
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::CommunityTtsEngine)
        end
        def disable(
          # Unique identifier of the community TTS engine.
          id,
          request_options: {}
        )
        end

        # Resume a `disabled` engine. Only a `disabled` engine can be enabled; a
        # `suspended` engine can only be reinstated by Telnyx.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::CommunityTtsEngine)
        end
        def enable(
          # Unique identifier of the community TTS engine.
          id,
          request_options: {}
        )
        end

        # Make Telnyx read the engine's `voices_url` now instead of at the next scheduled
        # read (every 15 minutes). On success the stored list is replaced and
        # `voices_degraded` is cleared. The previous list is kept when the read fails.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::CommunityTtsEngine)
        end
        def refresh_voices(
          # Unique identifier of the community TTS engine.
          id,
          request_options: {}
        )
        end

        # Ask Telnyx to review a `draft` engine so it can serve other organizations. Only
        # a `draft` engine with no pending or approved review can be submitted (a rejected
        # one can be submitted again). The engine moves to `review_status: pending`;
        # Telnyx approves it (`status: active`, `review_status: approved`) or rejects it
        # with `review_notes`. See the
        # [Community TTS engines guide](/docs/voice/tts/community-engines) for the full
        # review flow.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::CommunityTtsEngine)
        end
        def request_review(
          # Unique identifier of the community TTS engine.
          id,
          request_options: {}
        )
        end

        # Check an engine end to end with your own key, without a call. Telnyx reads the
        # voice list, connects to the engine's `websocket_url` with the Integration Secret
        # named by `api_key_ref`, sends a short text, and checks the answer: the
        # handshake, the credentials, the audio, the final frame and a clean close. The
        # result is recorded (see `conformance_runs`) and returned. A test within 10
        # seconds of the previous one is refused with `429`, and a `suspended` engine
        # cannot be tested. See
        # [Try your engine before approval](/docs/voice/tts/community-engines#try-your-engine-before-approval).
        sig do
          params(
            id: String,
            api_key_ref: String,
            voice_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::TtsIntegrations::CommunityTtsConformanceRun)
        end
        def test_connection(
          # Unique identifier of the community TTS engine.
          id,
          # The identifier of the Integration Secret in your organization that Telnyx
          # connects to the engine with, as a caller would.
          api_key_ref:,
          # The voice to test. Default: the first voice in the engine's list. It must be in
          # the list.
          voice_id: nil,
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
end
