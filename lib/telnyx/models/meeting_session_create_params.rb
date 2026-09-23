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
      #   Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
      #   Meeting service connects it to the meeting directly. The Call Control
      #   connection, caller ID and loopback SIP URI previously required here have been
      #   removed and are now rejected as unknown fields.
      #
      #   @return [Telnyx::Models::MeetingSessionCreateParams::Assistant, nil]
      optional :assistant, -> { Telnyx::MeetingSessionCreateParams::Assistant }

      # @!attribute avatar
      #   Request options for attaching a bring-your-own-key avatar to the session.
      #
      #   @return [Telnyx::Models::MeetingSessionCreateParams::Avatar, nil]
      optional :avatar, -> { Telnyx::MeetingSessionCreateParams::Avatar }

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
      #   Write-only static camera-tile image for this session, not a native account or
      #   participant profile photo. Supply exactly one JPEG source. When effective, the
      #   image is used as the bot's static camera/video output; presentation varies by
      #   meeting platform and recording configuration and is not guaranteed in
      #   recordings. An effective Avatar or Assistant webpage output takes precedence, so
      #   this input is ignored and a URL source is not fetched.
      #
      #   @return [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource, nil]
      optional :camera_image, union: -> { Telnyx::MeetingSessionCreateParams::CameraImage }

      # @!attribute chat_on_enter
      #   A message the bot posts to the meeting's chat as soon as it becomes active —
      #   typically a recording disclosure. Delivered at most once. Independent of
      #   `speak_on_enter`: both may be set, and the chat message posts first because it
      #   does not wait for text-to-speech or avatar startup. Rejected with 422
      #   `unsupported_capability` on platforms without meeting chat.
      #
      #   @return [String, nil]
      optional :chat_on_enter, String

      # @!attribute idempotency_key
      #   Client-supplied idempotency key to safely retry creation requests without
      #   duplicating sessions. Lookup is scoped to the authenticated account and compares
      #   the key only; the request payload is not fingerprinted or compared.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute join_at
      #   ISO-8601 timestamp in the future at which the bot should join. If omitted, the
      #   bot joins immediately.
      #
      #   @return [Time, nil]
      optional :join_at, Time

      # @!attribute metadata
      #   Arbitrary key-value metadata attached to the session. The serialized JSON
      #   representation must not exceed 16384 characters at runtime.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute speak_on_enter
      #   Text the bot speaks when it enters the meeting. **Not spoken when an `assistant`
      #   is attached**: the value is accepted and echoed back on the session, but the
      #   assistant owns the voice and the line is never delivered, with no event
      #   reporting the omission. Use `chat_on_enter` to announce an assistant-backed bot.
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
      #   for that utterance.
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

      # @!method initialize(meeting_url:, assistant: nil, avatar: nil, barge_in: nil, bot_name: nil, camera_image: nil, chat_on_enter: nil, idempotency_key: nil, join_at: nil, metadata: nil, speak_on_enter: nil, summarize_on_end: nil, voice: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionCreateParams} for more details.
      #
      #   @param meeting_url [String] The meeting URL the bot should join.
      #
      #   @param assistant [Telnyx::Models::MeetingSessionCreateParams::Assistant] Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the Meet
      #
      #   @param avatar [Telnyx::Models::MeetingSessionCreateParams::Avatar] Request options for attaching a bring-your-own-key avatar to the session.
      #
      #   @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
      #
      #   @param bot_name [String] Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      #   @param camera_image [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource] Write-only static camera-tile image for this session, not a native account or pa
      #
      #   @param chat_on_enter [String] A message the bot posts to the meeting's chat as soon as it becomes active — typ
      #
      #   @param idempotency_key [String] Client-supplied idempotency key to safely retry creation requests without duplic
      #
      #   @param join_at [Time] ISO-8601 timestamp in the future at which the bot should join. If omitted, the b
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session. The serialized JSON repres
      #
      #   @param speak_on_enter [String] Text the bot speaks when it enters the meeting. \*\*Not spoken when an
      #   `assistant`
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
        #   Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
        #   the assistant a single mixed meeting stream and mutes it while the assistant
        #   speaks, so the assistant cannot hear itself and cannot be interrupted.
        #   `full_duplex` sends a separate stream per participant, which allows barge-in and
        #   removes self-hearing, and COSTS SIGNIFICANTLY MORE: per-participant streams
        #   multiply the per-minute cost by the number of participants.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate, nil]
        optional :audio_gate, enum: -> { Telnyx::MeetingSessionCreateParams::Assistant::AudioGate }

        # @!attribute dynamic_variables
        #   Per-conversation values for the
        #   [dynamic variables](/docs/inference/ai-assistants/dynamic-variables) used in the
        #   Assistant's instructions, greeting, or tools. Delivered before the Assistant's
        #   first utterance, so they resolve for the opening line as well as the rest of the
        #   conversation. At most 63 entries; keys 1-128 characters; values must be strings.
        #   The map is budgeted in aggregate at 1,047,552 bytes (1023 KiB) rather than
        #   capped per value. `streaming_audio`, `ai_assistant_streaming_audio` and
        #   `meeting_session_id` are reserved and rejected with `400 invalid_request` --
        #   they toggle provider infrastructure or are set by the service rather than fill a
        #   prompt template.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

        # @!attribute leave_on_end
        #   Leave the meeting when the Assistant's conversation reaches a terminal state --
        #   `ended` **or** `failed`. Off by default, which leaves the bot in the meeting
        #   after the Assistant stops. Fires once: a second terminal transition does not
        #   leave twice, and a leave the provider refuses is logged without changing how the
        #   session settles.
        #
        #   @return [Boolean, nil]
        optional :leave_on_end, Telnyx::Internal::Type::Boolean

        # @!method initialize(id:, audio_gate: nil, dynamic_variables: nil, leave_on_end: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionCreateParams::Assistant} for more details.
        #
        #   Attach a Telnyx AI Assistant to the session. Supply the Assistant's ID; the
        #   Meeting service connects it to the meeting directly. The Call Control
        #   connection, caller ID and loopback SIP URI previously required here have been
        #   removed and are now rejected as unknown fields.
        #
        #   @param id [String] Identifier of the assistant to attach.
        #
        #   @param audio_gate [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate] Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
        #
        #   @param dynamic_variables [Hash{Symbol=>String}] Per-conversation values for the [dynamic variables](/docs/inference/ai-assistant
        #
        #   @param leave_on_end [Boolean] Leave the meeting when the Assistant's conversation reaches a terminal state --

        # Audio gating strategy for the assistant call leg. `half_duplex` (default) sends
        # the assistant a single mixed meeting stream and mutes it while the assistant
        # speaks, so the assistant cannot hear itself and cannot be interrupted.
        # `full_duplex` sends a separate stream per participant, which allows barge-in and
        # removes self-hearing, and COSTS SIGNIFICANTLY MORE: per-participant streams
        # multiply the per-minute cost by the number of participants.
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

      class Avatar < Telnyx::Internal::Type::BaseModel
        # @!attribute avatar_id
        #   Identifier of the avatar to use.
        #
        #   @return [String]
        required :avatar_id, String

        # @!attribute provider
        #   Avatar provider identifier. Currently only "anam" is supported.
        #
        #   @return [Symbol, :anam]
        required :provider, const: :anam

        request_only do
          # @!attribute api_key
          #   Bring-your-own-key API key for the avatar provider. The key is never stored or
          #   returned by the API.
          #
          #   @return [String]
          required :api_key, String
        end

        # @!method initialize(api_key:, avatar_id:, provider: :anam)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionCreateParams::Avatar} for more details.
        #
        #   Request options for attaching a bring-your-own-key avatar to the session.
        #
        #   @param api_key [String] Bring-your-own-key API key for the avatar provider. The key is never stored or r
        #
        #   @param avatar_id [String] Identifier of the avatar to use.
        #
        #   @param provider [Symbol, :anam] Avatar provider identifier. Currently only "anam" is supported.
      end

      # Write-only static camera-tile image for this session, not a native account or
      # participant profile photo. Supply exactly one JPEG source. When effective, the
      # image is used as the bot's static camera/video output; presentation varies by
      # meeting platform and recording configuration and is not guaranteed in
      # recordings. An effective Avatar or Assistant webpage output takes precedence, so
      # this input is ignored and a URL source is not fetched.
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
          #   memory. The image bytes are not persisted, returned, or logged.
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
          #   service resolves the URL before bot creation and does not persist, return, or
          #   log the URL or image bytes.
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
    end
  end
end
