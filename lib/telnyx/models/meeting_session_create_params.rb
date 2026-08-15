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
      #   Request options for attaching a voice assistant to the session. Routing fields
      #   (`call_control_connection_id`, `from`, and `loopback_sip_uri`) are used only to
      #   establish the assistant call leg and are omitted from response objects.
      #   `audio_gate` is returned with `id` in the assistant response object.
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
      #   Text the bot speaks when it enters the meeting.
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

      # @!method initialize(meeting_url:, assistant: nil, avatar: nil, barge_in: nil, bot_name: nil, camera_image: nil, idempotency_key: nil, join_at: nil, metadata: nil, speak_on_enter: nil, summarize_on_end: nil, voice: nil, webhook_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionCreateParams} for more details.
      #
      #   @param meeting_url [String] The meeting URL the bot should join.
      #
      #   @param assistant [Telnyx::Models::MeetingSessionCreateParams::Assistant] Request options for attaching a voice assistant to the session. Routing fields (
      #
      #   @param avatar [Telnyx::Models::MeetingSessionCreateParams::Avatar] Request options for attaching a bring-your-own-key avatar to the session.
      #
      #   @param barge_in [Boolean] When enabled, a human participant `speech_on` event interrupts and stops the cur
      #
      #   @param bot_name [String] Display name for the bot in the meeting. Defaults to "Meeting Bot".
      #
      #   @param camera_image [Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageBase64Source, Telnyx::Models::MeetingSessionCreateParams::CameraImage::MeetingSessionCameraImageURLSource] Write-only static camera-tile image for this session, not a native account or pa
      #
      #   @param idempotency_key [String] Client-supplied idempotency key to safely retry creation requests without duplic
      #
      #   @param join_at [Time] ISO-8601 timestamp in the future at which the bot should join. If omitted, the b
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata attached to the session. The serialized JSON repres
      #
      #   @param speak_on_enter [String] Text the bot speaks when it enters the meeting.
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

        # @!attribute call_control_connection_id
        #   Call control connection used to bridge the assistant into the meeting audio.
        #
        #   @return [String]
        required :call_control_connection_id, String

        # @!attribute from
        #   E.164 calling number used as the originating party for the assistant call leg.
        #
        #   @return [String]
        required :from, String

        # @!attribute loopback_sip_uri
        #   SIP URI to which the assistant media loopback is established.
        #
        #   @return [String]
        required :loopback_sip_uri, String

        # @!attribute audio_gate
        #   Audio gating strategy for the assistant call leg.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate, nil]
        optional :audio_gate, enum: -> { Telnyx::MeetingSessionCreateParams::Assistant::AudioGate }

        # @!method initialize(id:, call_control_connection_id:, from:, loopback_sip_uri:, audio_gate: nil)
        #   Request options for attaching a voice assistant to the session. Routing fields
        #   (`call_control_connection_id`, `from`, and `loopback_sip_uri`) are used only to
        #   establish the assistant call leg and are omitted from response objects.
        #   `audio_gate` is returned with `id` in the assistant response object.
        #
        #   @param id [String] Identifier of the assistant to attach.
        #
        #   @param call_control_connection_id [String] Call control connection used to bridge the assistant into the meeting audio.
        #
        #   @param from [String] E.164 calling number used as the originating party for the assistant call leg.
        #
        #   @param loopback_sip_uri [String] SIP URI to which the assistant media loopback is established.
        #
        #   @param audio_gate [Symbol, Telnyx::Models::MeetingSessionCreateParams::Assistant::AudioGate] Audio gating strategy for the assistant call leg.

        # Audio gating strategy for the assistant call leg.
        #
        # @see Telnyx::Models::MeetingSessionCreateParams::Assistant#audio_gate
        module AudioGate
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          HALF_DUPLEX = :half_duplex

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
