# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#create
    class MeetingSessionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute meeting_url
      #   The meeting URL the bot should join.
      #
      #   @return [String]
      required :meeting_url, String

      # @!attribute assistant
      #   Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
      #   and optional conversation settings. Unknown fields are rejected.
      #
      #   @return [Telnyx::Models::MeetingSessionCreateParams::Assistant, nil]
      optional :assistant, -> { Telnyx::MeetingSessionCreateParams::Assistant }

      # @!attribute barge_in
      #   When enabled, a human participant `speech_on` event interrupts and stops the
      #   current bot audio; it does not bypass admission or initiate speech. Assistant
      #   sessions reject `barge_in: true`.
      #
      #   @return [Boolean, nil]
      optional :barge_in, Telnyx::Internal::Type::Boolean

      # @!attribute bot_name
      #   Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      #   @return [String, nil]
      optional :bot_name, String

      # @!attribute camera_image
      #   Not supported for Google Meet and Teams joins (422 unsupported_capability).
      #   Write-only static camera-tile image for this session, not an account or
      #   participant profile photo. Supply exactly one JPEG source. When effective, the
      #   image is used as the bot's static camera/video output; presentation varies by
      #   meeting platform and recording configuration and is not guaranteed in
      #   recordings. An attached assistant or avatar takes precedence, so this input is
      #   ignored and a URL source is not fetched.
      #
      #   @return [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource, nil]
      optional :camera_image, union: -> { Telnyx::MeetingSessionCreateParams::CameraImage }

      # @!attribute chat_on_enter
      #   A message the bot posts to the meeting's chat as soon as it becomes active —
      #   typically a recording disclosure. Delivered at most once. Independent of
      #   `speak_on_enter`: both may be set, and the chat message posts first because it
      #   does not wait for text-to-speech or avatar startup. Rejected with 422
      #   `unsupported_capability` on platforms without meeting chat. For Google Meet and
      #   Teams, text must be nonblank, at most 4096 UTF-8 bytes, with no control
      #   characters except tabs and line breaks. Counts toward the 1000-chat-request
      #   session limit.
      #
      #   @return [String, nil]
      optional :chat_on_enter, String

      # @!attribute idempotency_key
      #   Use a unique key per intended join and reuse the same key and request on
      #   retries. Reusing a key with a different join configuration or meeting URL can
      #   return 409 invalid_state. Always retry with the original request.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute join_at
      #   Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
      #   dates at most three years ahead. Omit for an immediate join. Assistant sessions
      #   created through this endpoint must join immediately.
      #
      #   @return [Time, nil]
      optional :join_at, Time

      # @!attribute leave_policy
      #   Automatic departure settings for Google Meet and Teams. Omitted fields use the
      #   default behavior. Set at creation; cannot be changed later. Zoom ignores this
      #   policy.
      #
      #   @return [Telnyx::Models::MeetingSessionLeavePolicy, nil]
      optional :leave_policy, -> { Telnyx::MeetingSessionLeavePolicy }

      # @!attribute metadata
      #   Arbitrary key-value metadata attached to the session. The serialized JSON
      #   representation must not exceed 16384 characters at runtime.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute recording
      #   Google Meet and Teams only. Defaults to true when recording_export is supplied
      #   and false otherwise. True requires recording_export.bucket; false cannot be
      #   combined with recording_export. Fixed at creation, with no pause/resume action.
      #   Zoom rejects recording, recording_view, and recording_export with 422
      #   unsupported_capability; omit these fields for Zoom.
      #
      #   @return [Boolean, nil]
      optional :recording, Telnyx::Internal::Type::Boolean

      # @!attribute recording_export
      #   Customer-owned Telnyx Storage destination for recording exports. Uses the
      #   authenticated organization and user; do not supply credentials, region,
      #   organization ID or object key.
      #
      #   @return [Telnyx::Models::MeetingSessionRecordingDestination, nil]
      optional :recording_export, -> { Telnyx::MeetingSessionRecordingDestination }

      # @!attribute recording_view
      #   Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
      #   at creation only; does not enable recording by itself.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSessionCreateParams::RecordingView, nil]
      optional :recording_view, enum: -> { Telnyx::MeetingSessionCreateParams::RecordingView }

      # @!attribute speak_on_enter
      #   Text the bot speaks after joining. Available for sessions without a digital
      #   avatar. With an AI Assistant, the greeting waits until the assistant is
      #   connected. Rejected with 400 invalid_request when assistant.avatar is true.
      #
      #   @return [String, nil]
      optional :speak_on_enter, String

      # @!attribute summarize_on_end
      #   If true, generate a summary artifact when the session ends.
      #
      #   @return [Boolean, nil]
      optional :summarize_on_end, Telnyx::Internal::Type::Boolean

      # @!attribute voice
      #   Session-default voice identifier used for `speak_on_enter` and ordinary speak
      #   actions. A voice supplied on an individual speak action overrides this default
      #   for that utterance. With an assistant attached, its conversational voice remains
      #   configured on the assistant.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute webhook_url
      #   HTTPS endpoint to receive session lifecycle callbacks. Static validation
      #   requires HTTPS, rejects embedded credentials and blocked hosts, and enforces
      #   egress policy. Validation makes no network request to the endpoint.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(meeting_url:, assistant: nil, barge_in: nil, bot_name: nil, camera_image: nil, chat_on_enter: nil, idempotency_key: nil, join_at: nil, leave_policy: nil, metadata: nil, recording: nil, recording_export: nil, recording_view: nil, speak_on_enter: nil, summarize_on_end: nil, voice: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionCreateParams} for more details.
      #
      #   @param meeting_url [String] The meeting URL the bot should join.
      #
      #   @param assistant [Telnyx::Models::MeetingSessionCreateParams::Assistant] Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID a
      #
      #   @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
      #
      #   @param bot_name [String] Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      #   @param camera_image [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource] Not supported for Google Meet and Teams joins (422 unsupported_capability). Writ
      #
      #   @param chat_on_enter [String] A message the bot posts to the meeting's chat as soon as it becomes active — typ
      #
      #   @param idempotency_key [String] Use a unique key per intended join and reuse the same key and request on retries
      #
      #   @param join_at [Time] Future ISO-8601 join timestamp including timezone. Google Meet and Teams accept
      #
      #   @param leave_policy [Telnyx::Models::MeetingSessionLeavePolicy] Automatic departure settings for Google Meet and Teams. Omitted fields use the d
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session. The serialized JSON repres
      #
      #   @param recording [Boolean] Google Meet and Teams only. Defaults to true when recording_export is supplied a
      #
      #   @param recording_export [Telnyx::Models::MeetingSessionRecordingDestination] Customer-owned Telnyx Storage destination for recording exports. Uses the authen
      #
      #   @param recording_view [Symbol, Telnyx::Models::MeetingSessionCreateParams::RecordingView] Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted a
      #
      #   @param speak_on_enter [String] Text the bot speaks after joining. Available for sessions without a digital avat
      #
      #   @param summarize_on_end [Boolean] If true, generate a summary artifact when the session ends.
      #
      #   @param voice [String] Session-default voice identifier used for `speak_on_enter` and ordinary speak ac
      #
      #   @param webhook_url [String] HTTPS endpoint to receive session lifecycle callbacks. Static validation require
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Assistant < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier of the assistant to attach.
        #
        #   @return [String]
        required :id, String

        # @!attribute audio_gate
        #   Use half_duplex (default) to pause listening while the assistant speaks, or
        #   full_duplex to allow participants to interrupt. Full-duplex pricing depends on
        #   participant audio usage; see the Meeting pricing guide.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate, nil]
        optional :audio_gate, enum: -> { Telnyx::MeetingSessionCreateParams::Assistant::AudioGate }

        # @!attribute avatar
        #   Beta. Show the avatar configured on the assistant (its `avatar_settings`; see
        #   [AI Assistant avatars](/docs/inference/ai-assistants/avatars)) as the bot's
        #   camera, lip-synced to the assistant's own speech. The request carries no avatar
        #   ID or key: the assistant is read at creation and the request is rejected with
        #   400 `invalid_request` if it has no Telnyx avatar configured. Available for
        #   Google Meet, Zoom, and Teams sessions. REST-only. Not echoed back on
        #   `assistant`; the session's top-level `avatar` and `avatar_state` fields report
        #   it instead. If the avatar fails, the session continues voice-only and
        #   `avatar_state` becomes `degraded`.
        #
        #   @return [Boolean, nil]
        optional :avatar, Telnyx::Internal::Type::Boolean

        # @!attribute dynamic_variables
        #   Per-conversation values for the
        #   [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        #   Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        #   first utterance, so they resolve for the opening line as well as the rest of the
        #   conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        #   The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        #   capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        #   `meeting_session_id` are reserved and rejected with `400 invalid_request`.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

        # @!attribute leave_on_end
        #   Leave when the assistant conversation ends or fails. Defaults to false. Other
        #   leave-policy rules and explicit leave requests still apply.
        #
        #   @return [Boolean, nil]
        optional :leave_on_end, Telnyx::Internal::Type::Boolean

        # @!method initialize(id:, audio_gate: nil, avatar: nil, dynamic_variables: nil, leave_on_end: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionCreateParams::Assistant} for more details.
        #
        #   Attach a Telnyx AI Assistant owned by the authenticated account. Supply its ID
        #   and optional conversation settings. Unknown fields are rejected.
        #
        #   @param id [String] Identifier of the assistant to attach.
        #
        #   @param audio_gate [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate] Use half_duplex (default) to pause listening while the assistant speaks, or full
        #
        #   @param avatar [Boolean] Beta. Show the avatar configured on the assistant (its `avatar_settings`; see [A
        #
        #   @param dynamic_variables [Hash{Symbol=>String}] Per-conversation values for the [dynamic variables](/docs/inference/ai-assistant
        #
        #   @param leave_on_end [Boolean] Leave when the assistant conversation ends or fails. Defaults to false. Other le

        # Use half_duplex (default) to pause listening while the assistant speaks, or
        # full_duplex to allow participants to interrupt. Full-duplex pricing depends on
        # participant audio usage; see the Meeting pricing guide.
        #
        # @see Telnyx::Models::MeetingSessionCreateParams::Assistant#audio_gate
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          HALF_DUPLEX = :half_duplex
          FULL_DUPLEX = :full_duplex

          # @!method self.values
          #   @return [Array<Symbol>]
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

        variant -> { Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source }

        variant -> { Telnyx::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource }

        class MeetingSessionCameraImageBase64Source < Telnyx::Internal::Type::BaseModel
          # @!attribute base64_data
          #   Canonical plain RFC 4648 Base64 for a valid decoded JPEG. Data URIs, whitespace,
          #   and the URL-safe alphabet are rejected. The encoded value is limited to
          #   1,835,008 characters and the decoded JPEG to 1,363,148 bytes. The JPEG is
          #   limited to 4,096 pixels per dimension, 4 megapixels, and 128 MB of decoder
          #   memory. The image bytes are not returned in the session response.
          #
          #   @return [String]
          required :base64_data, String

          # @!attribute format_
          #   Only JPEG images are accepted.
          #
          #   @return [Symbol, :jpeg]
          required :format_, const: :jpeg, api_name: :format

          # @!method initialize(base64_data:, format_: :jpeg)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source}
          #   for more details.
          #
          #   @param base64_data [String] Canonical plain RFC 4648 Base64 for a valid decoded JPEG. Data URIs, whitespace,
          #
          #   @param format_ [Symbol, :jpeg] Only JPEG images are accepted.
        end

        class MeetingSessionCameraImageURLSource < Telnyx::Internal::Type::BaseModel
          # @!attribute format_
          #   Only JPEG images are accepted.
          #
          #   @return [Symbol, :jpeg]
          required :format_, const: :jpeg, api_name: :format

          # @!attribute url
          #   Public HTTPS JPEG URL with at most 2,048 characters and no credentials,
          #   fragment, surrounding whitespace, raw control characters, or explicit
          #   non-default port. Signed queries are allowed but must be treated as credentials.
          #   Fetching is limited to public network destinations, a five-second timeout, no
          #   redirects, a 2xx image/jpeg response with identity or no content encoding, and a
          #   1,363,148-byte limit enforced against both declared and streamed content. The
          #   service resolves the URL before bot creation and does not return the URL or
          #   image bytes in the session response.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:, format_: :jpeg)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource}
          #   for more details.
          #
          #   @param url [String] Public HTTPS JPEG URL with at most 2,048 characters and no credentials, fragment
          #
          #   @param format_ [Symbol, :jpeg] Only JPEG images are accepted.
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource)]
      end

      # Recording layout for Google Meet and Teams. Defaults to speaker_view. Accepted
      # at creation only; does not enable recording by itself.
      module RecordingView
        extend Telnyx::Internal::Type::Enum

        SPEAKER_VIEW = :speaker_view
        GALLERY_VIEW = :gallery_view
        SPEAKER_VIEW_NO_SIDEBAR = :speaker_view_no_sidebar

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
