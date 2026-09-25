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

      # Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
      # Meeting service connects it to the meeting directly. The Call Control
      # connection, caller ID and loopback SIP URI previously required here have been
      # removed and are now rejected as unknown fields.
      sig { returns(T.nilable(Telnyx::MeetingSessionCreateParams::Assistant)) }
      attr_reader :assistant

      sig do
        params(
          assistant: Telnyx::MeetingSessionCreateParams::Assistant::OrHash
        ).void
      end
      attr_writer :assistant

      # Request options for attaching a bring-your-own-key avatar to the session.
      sig { returns(T.nilable(Telnyx::MeetingSessionCreateParams::Avatar)) }
      attr_reader :avatar

      sig do
        params(avatar: Telnyx::MeetingSessionCreateParams::Avatar::OrHash).void
      end
      attr_writer :avatar

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

      # Write-only static camera-tile image for this session, not a native account or
      # participant profile photo. Supply exactly one JPEG source. When effective, the
      # image is used as the bot's static camera/video output; presentation varies by
      # meeting platform and recording configuration and is not guaranteed in
      # recordings. An effective Avatar or Assistant webpage output takes precedence, so
      # this input is ignored and a URL source is not fetched.
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
      # `unsupported_capability` on platforms without meeting chat.
      sig { returns(T.nilable(String)) }
      attr_reader :chat_on_enter

      sig { params(chat_on_enter: String).void }
      attr_writer :chat_on_enter

      # Client-supplied idempotency key to safely retry creation requests without
      # duplicating sessions. Lookup is scoped to the authenticated account and compares
      # the key only; the request payload is not fingerprinted or compared.
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # ISO-8601 timestamp in the future at which the bot should join. If omitted, the
      # bot joins immediately.
      sig { returns(T.nilable(Time)) }
      attr_reader :join_at

      sig { params(join_at: Time).void }
      attr_writer :join_at

      # Arbitrary key-value metadata attached to the session. The serialized JSON
      # representation must not exceed 16384 characters at runtime.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Text the bot speaks when it enters the meeting. **Not spoken when an `assistant`
      # is attached**: the value is accepted and echoed back on the session, but the
      # assistant owns the voice and the line is never delivered, with no event
      # reporting the omission. Use `chat_on_enter` to announce an assistant-backed bot.
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
      # for that utterance.
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
          avatar: Telnyx::MeetingSessionCreateParams::Avatar::OrHash,
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
          metadata: T::Hash[Symbol, T.anything],
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
        # Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
        # Meeting service connects it to the meeting directly. The Call Control
        # connection, caller ID and loopback SIP URI previously required here have been
        # removed and are now rejected as unknown fields.
        assistant: nil,
        # Request options for attaching a bring-your-own-key avatar to the session.
        avatar: nil,
        # When enabled, a human participant `speech_on` event interrupts and stops the
        # current bot audio; it does not bypass admission or initiate speech. Assistant
        # sessions reject `barge_in: true`.
        barge_in: nil,
        # Display name for the bot in the meeting. Defaults to "Meeting Bot".
        bot_name: nil,
        # Write-only static camera-tile image for this session, not a native account or
        # participant profile photo. Supply exactly one JPEG source. When effective, the
        # image is used as the bot's static camera/video output; presentation varies by
        # meeting platform and recording configuration and is not guaranteed in
        # recordings. An effective Avatar or Assistant webpage output takes precedence, so
        # this input is ignored and a URL source is not fetched.
        camera_image: nil,
        # A message the bot posts to the meeting's chat as soon as it becomes active —
        # typically a recording disclosure. Delivered at most once. Independent of
        # `speak_on_enter`: both may be set, and the chat message posts first because it
        # does not wait for text-to-speech or avatar startup. Rejected with 422
        # `unsupported_capability` on platforms without meeting chat.
        chat_on_enter: nil,
        # Client-supplied idempotency key to safely retry creation requests without
        # duplicating sessions. Lookup is scoped to the authenticated account and compares
        # the key only; the request payload is not fingerprinted or compared.
        idempotency_key: nil,
        # ISO-8601 timestamp in the future at which the bot should join. If omitted, the
        # bot joins immediately.
        join_at: nil,
        # Arbitrary key-value metadata attached to the session. The serialized JSON
        # representation must not exceed 16384 characters at runtime.
        metadata: nil,
        # Text the bot speaks when it enters the meeting. **Not spoken when an `assistant`
        # is attached**: the value is accepted and echoed back on the session, but the
        # assistant owns the voice and the line is never delivered, with no event
        # reporting the omission. Use `chat_on_enter` to announce an assistant-backed bot.
        speak_on_enter: nil,
        # If true, generate a summary artifact when the session ends.
        summarize_on_end: nil,
        # Session-default voice identifier used for `speak_on_enter` and ordinary speak
        # actions. A voice supplied on an individual speak action overrides this default
        # for that utterance.
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
            avatar: Telnyx::MeetingSessionCreateParams::Avatar,
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
            metadata: T::Hash[Symbol, T.anything],
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

        # Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
        # the assistant a single mixed meeting stream and mutes it while the assistant
        # speaks, so the assistant cannot hear itself and cannot be interrupted.
        # `full_duplex` sends a separate stream per participant, which allows barge-in and
        # removes self-hearing, and COSTS SIGNIFICANTLY MORE: per-participant streams
        # multiply the per-minute cost by the number of participants.
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

        # Per-conversation values for the
        # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        # first utterance, so they resolve for the opening line as well as the rest of the
        # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        # `meeting_session_id` are reserved and rejected with `400 invalid_request` --
        # they toggle provider infrastructure or are set by the service rather than fill a
        # prompt template.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, String]).void }
        attr_writer :dynamic_variables

        # Leave the meeting when the Assistant's conversation reaches a terminal state --
        # `ended` **or** `failed`. Off by default, which leaves the bot in the meeting
        # after the Assistant stops. Fires once: a second terminal transition does not
        # leave twice, and a leave the provider refuses is logged without changing how the
        # session settles.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :leave_on_end

        sig { params(leave_on_end: T::Boolean).void }
        attr_writer :leave_on_end

        # Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
        # Meeting service connects it to the meeting directly. The Call Control
        # connection, caller ID and loopback SIP URI previously required here have been
        # removed and are now rejected as unknown fields.
        sig do
          params(
            id: String,
            audio_gate:
              Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol,
            dynamic_variables: T::Hash[Symbol, String],
            leave_on_end: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the assistant to attach.
          id:,
          # Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
          # the assistant a single mixed meeting stream and mutes it while the assistant
          # speaks, so the assistant cannot hear itself and cannot be interrupted.
          # `full_duplex` sends a separate stream per participant, which allows barge-in and
          # removes self-hearing, and COSTS SIGNIFICANTLY MORE: per-participant streams
          # multiply the per-minute cost by the number of participants.
          audio_gate: nil,
          # Per-conversation values for the
          # [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
          # Assistant's instructions, greeting, or tools. Delivered before the Assistant's
          # first utterance, so they resolve for the opening line as well as the rest of the
          # conversation. At most 63 entries; keys 1-128 characters; values must be strings.
          # The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
          # capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
          # `meeting_session_id` are reserved and rejected with `400 invalid_request` --
          # they toggle provider infrastructure or are set by the service rather than fill a
          # prompt template.
          dynamic_variables: nil,
          # Leave the meeting when the Assistant's conversation reaches a terminal state --
          # `ended` **or** `failed`. Off by default, which leaves the bot in the meeting
          # after the Assistant stops. Fires once: a second terminal transition does not
          # leave twice, and a leave the provider refuses is logged without changing how the
          # session settles.
          leave_on_end: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              audio_gate:
                Telnyx::MeetingSessionCreateParams::Assistant::AudioGate::OrSymbol,
              dynamic_variables: T::Hash[Symbol, String],
              leave_on_end: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
        # the assistant a single mixed meeting stream and mutes it while the assistant
        # speaks, so the assistant cannot hear itself and cannot be interrupted.
        # `full_duplex` sends a separate stream per participant, which allows barge-in and
        # removes self-hearing, and COSTS SIGNIFICANTLY MORE: per-participant streams
        # multiply the per-minute cost by the number of participants.
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

      class Avatar < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessionCreateParams::Avatar,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifier of the avatar to use.
        sig { returns(String) }
        attr_accessor :avatar_id

        # Avatar provider identifier. Currently only "anam" is supported.
        sig { returns(Symbol) }
        attr_accessor :provider

        # Bring-your-own-key API key for the avatar provider. The key is never stored or
        # returned by the API.
        sig { returns(String) }
        attr_accessor :api_key

        # Request options for attaching a bring-your-own-key avatar to the session.
        sig do
          params(api_key: String, avatar_id: String, provider: Symbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Bring-your-own-key API key for the avatar provider. The key is never stored or
          # returned by the API.
          api_key:,
          # Identifier of the avatar to use.
          avatar_id:,
          # Avatar provider identifier. Currently only "anam" is supported.
          provider: :anam
        )
        end

        sig do
          override.returns(
            { api_key: String, avatar_id: String, provider: Symbol }
          )
        end
        def to_hash
        end
      end

      # Write-only static camera-tile image for this session, not a native account or
      # participant profile photo. Supply exactly one JPEG source. When effective, the
      # image is used as the bot's static camera/video output; presentation varies by
      # meeting platform and recording configuration and is not guaranteed in
      # recordings. An effective Avatar or Assistant webpage output takes precedence, so
      # this input is ignored and a URL source is not fetched.
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
          # memory. The image bytes are not persisted, returned, or logged.
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
            # memory. The image bytes are not persisted, returned, or logged.
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
          # service resolves the URL before bot creation and does not persist, return, or
          # log the URL or image bytes.
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
            # service resolves the URL before bot creation and does not persist, return, or
            # log the URL or image bytes.
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
    end
  end
end
