# typed: strong

module Telnyx
  module Models
    class MeetingSessionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionCreateParams, Telnyx::Internal::AnyHash)
        end

      # The meeting URL the bot should join.
      sig { returns(String) }
      attr_accessor :meeting_url

      # Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
      # and optional conversation settings. Unknown fields are rejected.
      sig { returns(T.nilable(Telnyx::MeetingSessionCreateParams::Assistant)) }
      attr_reader :assistant

      sig do
        params(
          assistant: Telnyx::MeetingSessionCreateParams::Assistant::OrHash
        ).void
      end
      attr_writer :assistant

      # When enabled, a human participant `speech_on` event interrupts and stops the
      # current bot audio; it does not bypass admission or initiate speech. Assistant
      # sessions reject `barge_in: true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :barge_in

      sig { params(barge_in: T::Boolean).void }
      attr_writer :barge_in

      # Display name for the bot in the meeting. Defaults to "Meeting Bot".
      sig { returns(T.nilable(String)) }
      attr_reader :bot_name

      sig { params(bot_name: String).void }
      attr_writer :bot_name

      # Not supported for Google Meet and Teams joins (422 unsupported_capability).
      # Write-only static camera-tile image for this session, not an account or
      # participant profile photo. Supply exactly one JPEG source. When effective, the
      # image is used as the bot's static camera/video output; presentation varies by
      # meeting platform and recording configuration and is not guaranteed in
      # recordings. An attached assistant or avatar takes precedence, so this input is
      # ignored and a URL source is not fetched.
      sig do
        returns(
          T.nilable(
            T.any(
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source,
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource
            )
          )
        )
      end
      attr_reader :camera_image

      sig do
        params(
          camera_image:
            T.any(
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source::OrHash,
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource::OrHash
            )
        ).void
      end
      attr_writer :camera_image

      # A message the bot posts to the meeting's chat as soon as it becomes active —
      # typically a recording disclosure. Delivered at most once. Independent of
      # `speak_on_enter`: both may be set, and the chat message posts first because it
      # does not wait for text-to-speech or avatar startup. Rejected with 422
      # `unsupported_capability` on platforms without meeting chat. For Google Meet and
      # Teams, text must be nonblank, at most 4096 UTF-8 bytes, with no control
      # characters except tabs and line breaks. Counts toward the 1000-chat-request
      # session limit.
      sig { returns(T.nilable(String)) }
      attr_reader :chat_on_enter

      sig { params(chat_on_enter: String).void }
      attr_writer :chat_on_enter

      # Use a unique key per intended join and reuse the same key and request on
      # retries. Reusing a key with a different join configuration or meeting URL can
      # return 409 invalid_state. Always retry with the original request.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
      # dates at most three years ahead. Omit for an immediate join. Assistant sessions
      # created through this endpoint must join immediately.
      sig { returns(T.nilable(Time)) }
      attr_reader :join_at

      sig { params(join_at: Time).void }
      attr_writer :join_at

      # Automatic departure settings for Google Meet and Teams. Omitted fields use the
      # default behavior. Set at creation; cannot be changed later. Zoom ignores this
      # policy.
      sig { returns(T.nilable(Telnyx::MeetingSessionLeavePolicy)) }
      attr_reader :leave_policy

      sig do
        params(leave_policy: Telnyx::MeetingSessionLeavePolicy::OrHash).void
      end
      attr_writer :leave_policy

      # Arbitrary key-value metadata attached to the session. The serialized JSON
      # representation must not exceed 16384 characters at runtime.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Google Meet and Teams only. Defaults to true when recording_export is supplied
      # and false otherwise. True requires recording_export.bucket; false cannot be
      # combined with recording_export. Fixed at creation, with no pause/resume action.
      # Zoom rejects recording, recording_view, and recording_export with 422
      # unsupported_capability; omit these fields for Zoom.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :recording

      sig { params(recording: T::Boolean).void }
      attr_writer :recording

      # Customer-owned Telnyx Storage destination for recording exports. Uses the
      # authenticated organization and user; do not supply credentials, region,
      # organization ID or object key.
      sig { returns(T.nilable(Telnyx::MeetingSessionRecordingDestination)) }
      attr_reader :recording_export

      sig do
        params(
          recording_export: Telnyx::MeetingSessionRecordingDestination::OrHash
        ).void
      end
      attr_writer :recording_export

      # Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
      # at creation only; does not enable recording by itself.
      sig do
        returns(
          T.nilable(Telnyx::MeetingSessionCreateParams::RecordingView::OrSymbol)
        )
      end
      attr_reader :recording_view

      sig do
        params(
          recording_view:
            Telnyx::MeetingSessionCreateParams::RecordingView::OrSymbol
        ).void
      end
      attr_writer :recording_view

      # Text the bot speaks after joining. Available for sessions without a digital
      # avatar. With an AI Assistant, the greeting waits until the assistant is
      # connected. Rejected with 400 invalid_request when assistant.avatar is true.
      sig { returns(T.nilable(String)) }
      attr_reader :speak_on_enter

      sig { params(speak_on_enter: String).void }
      attr_writer :speak_on_enter

      # If true, generate a summary artifact when the session ends.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :summarize_on_end

      sig { params(summarize_on_end: T::Boolean).void }
      attr_writer :summarize_on_end

      # Session-default voice identifier used for `speak_on_enter` and ordinary speak
      # actions. A voice supplied on an individual speak action overrides this default
      # for that utterance. With an assistant attached, its conversational voice remains
      # configured on the assistant.
      sig { returns(T.nilable(String)) }
      attr_reader :voice

      sig { params(voice: String).void }
      attr_writer :voice

      # HTTPS endpoint to receive session lifecycle callbacks. Static validation
      # requires HTTPS, rejects embedded credentials and blocked hosts, and enforces
      # egress policy. Validation makes no network request to the endpoint.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          meeting_url: String,
          assistant: Telnyx::MeetingSessionCreateParams::Assistant::OrHash,
          barge_in: T::Boolean,
          bot_name: String,
          camera_image:
            T.any(
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source::OrHash,
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource::OrHash
            ),
          chat_on_enter: String,
          idempotency_key: String,
          join_at: Time,
          leave_policy: Telnyx::MeetingSessionLeavePolicy::OrHash,
          metadata: T::Hash[Symbol, T.anything],
          recording: T::Boolean,
          recording_export: Telnyx::MeetingSessionRecordingDestination::OrHash,
          recording_view:
            Telnyx::MeetingSessionCreateParams::RecordingView::OrSymbol,
          speak_on_enter: String,
          summarize_on_end: T::Boolean,
          voice: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The meeting URL the bot should join.
        meeting_url:,
        # Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
        # and optional conversation settings. Unknown fields are rejected.
        assistant: nil,
        # When enabled, a human participant `speech_on` event interrupts and stops the
        # current bot audio; it does not bypass admission or initiate speech. Assistant
        # sessions reject `barge_in: true`.
        barge_in: nil,
        # Display name for the bot in the meeting. Defaults to "Meeting Bot".
        bot_name: nil,
        # Not supported for Google Meet and Teams joins (422 unsupported_capability).
        # Write-only static camera-tile image for this session, not an account or
        # participant profile photo. Supply exactly one JPEG source. When effective, the
        # image is used as the bot's static camera/video output; presentation varies by
        # meeting platform and recording configuration and is not guaranteed in
        # recordings. An attached assistant or avatar takes precedence, so this input is
        # ignored and a URL source is not fetched.
        camera_image: nil,
        # A message the bot posts to the meeting's chat as soon as it becomes active —
        # typically a recording disclosure. Delivered at most once. Independent of
        # `speak_on_enter`: both may be set, and the chat message posts first because it
        # does not wait for text-to-speech or avatar startup. Rejected with 422
        # `unsupported_capability` on platforms without meeting chat. For Google Meet and
        # Teams, text must be nonblank, at most 4096 UTF-8 bytes, with no control
        # characters except tabs and line breaks. Counts toward the 1000-chat-request
        # session limit.
        chat_on_enter: nil,
        # Use a unique key per intended join and reuse the same key and request on
        # retries. Reusing a key with a different join configuration or meeting URL can
        # return 409 invalid_state. Always retry with the original request.
        idempotency_key: nil,
        # Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
        # dates at most three years ahead. Omit for an immediate join. Assistant sessions
        # created through this endpoint must join immediately.
        join_at: nil,
        # Automatic departure settings for Google Meet and Teams. Omitted fields use the
        # default behavior. Set at creation; cannot be changed later. Zoom ignores this
        # policy.
        leave_policy: nil,
        # Arbitrary key-value metadata attached to the session. The serialized JSON
        # representation must not exceed 16384 characters at runtime.
        metadata: nil,
        # Google Meet and Teams only. Defaults to true when recording_export is supplied
        # and false otherwise. True requires recording_export.bucket; false cannot be
        # combined with recording_export. Fixed at creation, with no pause/resume action.
        # Zoom rejects recording, recording_view, and recording_export with 422
        # unsupported_capability; omit these fields for Zoom.
        recording: nil,
        # Customer-owned Telnyx Storage destination for recording exports. Uses the
        # authenticated organization and user; do not supply credentials, region,
        # organization ID or object key.
        recording_export: nil,
        # Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
        # at creation only; does not enable recording by itself.
        recording_view: nil,
        # Text the bot speaks after joining. Available for sessions without a digital
        # avatar. With an AI Assistant, the greeting waits until the assistant is
        # connected. Rejected with 400 invalid_request when assistant.avatar is true.
        speak_on_enter: nil,
        # If true, generate a summary artifact when the session ends.
        summarize_on_end: nil,
        # Session-default voice identifier used for `speak_on_enter` and ordinary speak
        # actions. A voice supplied on an individual speak action overrides this default
        # for that utterance. With an assistant attached, its conversational voice remains
        # configured on the assistant.
        voice: nil,
        # HTTPS endpoint to receive session lifecycle callbacks. Static validation
        # requires HTTPS, rejects embedded credentials and blocked hosts, and enforces
        # egress policy. Validation makes no network request to the endpoint.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            meeting_url: String,
            assistant: Telnyx::MeetingSessionCreateParams::Assistant,
            barge_in: T::Boolean,
            bot_name: String,
            camera_image:
              T.any(
                Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source,
                Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource
              ),
            chat_on_enter: String,
            idempotency_key: String,
            join_at: Time,
            leave_policy: Telnyx::MeetingSessionLeavePolicy,
            metadata: T::Hash[Symbol, T.anything],
            recording: T::Boolean,
            recording_export: Telnyx::MeetingSessionRecordingDestination,
            recording_view:
              Telnyx::MeetingSessionCreateParams::RecordingView::OrSymbol,
            speak_on_enter: String,
            summarize_on_end: T::Boolean,
            voice: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Assistant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessionCreateParams::Assistant,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifier of the assistant to attach.
        sig { returns(String) }
        attr_accessor :id

        # Use half_duplex (default) to pause listening while the assistant speaks, or
        # full_duplex to allow participants to interrupt. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        sig do
          returns(
            T.nilable(
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol
            )
          )
        end
        attr_reader :audio_gate

        sig do
          params(
            audio_gate:
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol
          ).void
        end
        attr_writer :audio_gate

        # Beta. Show the avatar configured on the assistant (its `avatar_settings`; see
        # [AI Assistant avatars](/docs/inference/ai-assistants/avatars)) as the bot's
        # camera, lip-synced to the assistant's own speech. The request carries no avatar
        # ID or key: the assistant is read at creation and the request is rejected with
        # 400 `invalid_request` if it has no Telnyx avatar configured. Available for
        # Google Meet, Zoom, and Teams sessions. REST-only. Not echoed back on
        # `assistant`; the session's top-level `avatar` and `avatar_state` fields report
        # it instead. If the avatar fails, the session continues voice-only and
        # `avatar_state` becomes `degraded`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :avatar

        sig { params(avatar: T::Boolean).void }
        attr_writer :avatar

        # Per-conversation values for the
        # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        # first utterance, so they resolve for the opening line as well as the rest of the
        # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        # `meeting_session_id` are reserved and rejected with `400 invalid_request`.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
        attr_writer :dynamic_variables

        # Leave when the assistant conversation ends or fails. Defaults to false. Other
        # leave-policy rules and explicit leave requests still apply.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :leave_on_end

        sig { params(leave_on_end: T::Boolean).void }
        attr_writer :leave_on_end

        # Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
        # and optional conversation settings. Unknown fields are rejected.
        sig do
          params(
            id: String,
            audio_gate:
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol,
            avatar: T::Boolean,
            dynamic_variables: T::Hash[Symbol, String],
            leave_on_end: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the assistant to attach.
          id:,
          # Use half_duplex (default) to pause listening while the assistant speaks, or
          # full_duplex to allow participants to interrupt. Full-duplex pricing depends on
          # participant audio usage; see the Meeting pricing guide.
          audio_gate: nil,
          # Beta. Show the avatar configured on the assistant (its `avatar_settings`; see
          # [AI Assistant avatars](/docs/inference/ai-assistants/avatars)) as the bot's
          # camera, lip-synced to the assistant's own speech. The request carries no avatar
          # ID or key: the assistant is read at creation and the request is rejected with
          # 400 `invalid_request` if it has no Telnyx avatar configured. Available for
          # Google Meet, Zoom, and Teams sessions. REST-only. Not echoed back on
          # `assistant`; the session's top-level `avatar` and `avatar_state` fields report
          # it instead. If the avatar fails, the session continues voice-only and
          # `avatar_state` becomes `degraded`.
          avatar: nil,
          # Per-conversation values for the
          # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
          # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
          # first utterance, so they resolve for the opening line as well as the rest of the
          # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
          # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
          # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
          # `meeting_session_id` are reserved and rejected with `400 invalid_request`.
          dynamic_variables: nil,
          # Leave when the assistant conversation ends or fails. Defaults to false. Other
          # leave-policy rules and explicit leave requests still apply.
          leave_on_end: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              audio_gate:
                Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol,
              avatar: T::Boolean,
              dynamic_variables: T::Hash[Symbol, String],
              leave_on_end: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Use half_duplex (default) to pause listening while the assistant speaks, or
        # full_duplex to allow participants to interrupt. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MeetingSessionCreateParams::Assistant::AudioGate
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HALF_DUPLEX =
            T.let(
              :half_duplex,
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::TaggedSymbol
            )
          FULL_DUPLEX =
            T.let(
              :full_duplex,
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Not supported for Google Meet and Teams joins (422 unsupported_capability).
      # Write-only static camera-tile image for this session, not an account or
      # participant profile photo. Supply exactly one JPEG source. When effective, the
      # image is used as the bot's static camera/video output; presentation varies by
      # meeting platform and recording configuration and is not guaranteed in
      # recordings. An attached assistant or avatar takes precedence, so this input is
      # ignored and a URL source is not fetched.
      module CameraImage
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source,
              Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource
            )
          end

        class MeetingSessionCameraImageBase64Source < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source,
                Telnyx::Internal::AnyHash
              )
            end

          # Canonical plain RFC 4648 Base64 for a valid decoded JPEG. Data URIs, whitespace,
          # and the URL-safe alphabet are rejected. The encoded value is limited to
          # 1,835,008 characters and the decoded JPEG to 1,363,148 bytes. The JPEG is
          # limited to 4,096 pixels per dimension, 4 megapixels, and 128 MB of decoder
          # memory. The image bytes are not returned in the session response.
          sig { returns(String) }
          attr_accessor :base64_data

          # Only JPEG images are accepted.
          sig { returns(Symbol) }
          attr_accessor :format_

          sig do
            params(base64_data: String, format_: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(
            # Canonical plain RFC 4648 Base64 for a valid decoded JPEG. Data URIs, whitespace,
            # and the URL-safe alphabet are rejected. The encoded value is limited to
            # 1,835,008 characters and the decoded JPEG to 1,363,148 bytes. The JPEG is
            # limited to 4,096 pixels per dimension, 4 megapixels, and 128 MB of decoder
            # memory. The image bytes are not returned in the session response.
            base64_data:,
            # Only JPEG images are accepted.
            format_: :jpeg
          )
          end

          sig { override.returns({ base64_data: String, format_: Symbol }) }
          def to_hash
          end
        end

        class MeetingSessionCameraImageURLSource < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource,
                Telnyx::Internal::AnyHash
              )
            end

          # Only JPEG images are accepted.
          sig { returns(Symbol) }
          attr_accessor :format_

          # Public HTTPS JPEG URL with at most 2,048 characters and no credentials,
          # fragment, surrounding whitespace, raw control characters, or explicit
          # non-default port. Signed queries are allowed but must be treated as credentials.
          # Fetching is limited to public network destinations, a five-second timeout, no
          # redirects, a 2xx image/jpeg response with identity or no content encoding, and a
          # 1,363,148-byte limit enforced against both declared and streamed content. The
          # service resolves the URL before bot creation and does not return the URL or
          # image bytes in the session response.
          sig { returns(String) }
          attr_accessor :url

          sig { params(url: String, format_: Symbol).returns(T.attached_class) }
          def self.new(
            # Public HTTPS JPEG URL with at most 2,048 characters and no credentials,
            # fragment, surrounding whitespace, raw control characters, or explicit
            # non-default port. Signed queries are allowed but must be treated as credentials.
            # Fetching is limited to public network destinations, a five-second timeout, no
            # redirects, a 2xx image/jpeg response with identity or no content encoding, and a
            # 1,363,148-byte limit enforced against both declared and streamed content. The
            # service resolves the URL before bot creation and does not return the URL or
            # image bytes in the session response.
            url:,
            # Only JPEG images are accepted.
            format_: :jpeg
          )
          end

          sig { override.returns({ format_: Symbol, url: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSessionCreateParams::CameraImage::Variants]
          )
        end
        def self.variants
        end
      end

      # Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
      # at creation only; does not enable recording by itself.
      module RecordingView
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MeetingSessionCreateParams::RecordingView)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEAKER_VIEW =
          T.let(
            :speaker_view,
            Telnyx::MeetingSessionCreateParams::RecordingView::TaggedSymbol
          )
        GALLERY_VIEW =
          T.let(
            :gallery_view,
            Telnyx::MeetingSessionCreateParams::RecordingView::TaggedSymbol
          )
        SPEAKER_VIEW_NO_SIDEBAR =
          T.let(
            :speaker_view_no_sidebar,
            Telnyx::MeetingSessionCreateParams::RecordingView::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MeetingSessionCreateParams::RecordingView::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
