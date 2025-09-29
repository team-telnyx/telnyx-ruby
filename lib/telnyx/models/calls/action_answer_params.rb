# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#answer
      class ActionAnswerParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute billing_group_id
        #   Use this field to set the Billing Group ID for the call. Must be a valid and
        #   existing Billing Group ID.
        #
        #   @return [String, nil]
        optional :billing_group_id, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute custom_headers
        #   Custom headers to be added to the SIP INVITE response.
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute preferred_codecs
        #   The list of comma-separated codecs in a preferred order for the forked media to
        #   be received.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::PreferredCodecs, nil]
        optional :preferred_codecs, enum: -> { Telnyx::Calls::ActionAnswerParams::PreferredCodecs }

        # @!attribute record
        #   Start recording automatically after an event. Disabled by default.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::Record, nil]
        optional :record, enum: -> { Telnyx::Calls::ActionAnswerParams::Record }

        # @!attribute record_channels
        #   Defines which channel should be recorded ('single' or 'dual') when `record` is
        #   specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordChannels, nil]
        optional :record_channels, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordChannels }

        # @!attribute record_custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :record_custom_file_name, String

        # @!attribute record_format
        #   Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordFormat, nil]
        optional :record_format, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordFormat }

        # @!attribute record_max_length
        #   Defines the maximum length for the recording in seconds when `record` is
        #   specified. The minimum value is 0. The maximum value is 43200. The default value
        #   is 0 (infinite).
        #
        #   @return [Integer, nil]
        optional :record_max_length, Integer

        # @!attribute record_timeout_secs
        #   The number of seconds that Telnyx will wait for the recording to be stopped if
        #   silence is detected when `record` is specified. The timer only starts when the
        #   speech is detected. Please note that call transcription is used to detect
        #   silence and the related charge will be applied. The minimum value is 0. The
        #   default value is 0 (infinite).
        #
        #   @return [Integer, nil]
        optional :record_timeout_secs, Integer

        # @!attribute record_track
        #   The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        #   If only single track is specified (`inbound`, `outbound`), `channels`
        #   configuration is ignored and it will be recorded as mono (single channel).
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrack, nil]
        optional :record_track, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordTrack }

        # @!attribute record_trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrim, nil]
        optional :record_trim, enum: -> { Telnyx::Calls::ActionAnswerParams::RecordTrim }

        # @!attribute send_silence_when_idle
        #   Generate silence RTP packets when no transmission available.
        #
        #   @return [Boolean, nil]
        optional :send_silence_when_idle, Telnyx::Internal::Type::Boolean

        # @!attribute sip_headers
        #   SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        #   header is supported.
        #
        #   @return [Array<Telnyx::Models::SipHeader>, nil]
        optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

        # @!attribute sound_modifications
        #   Use this field to modify sound effects, for example adjust the pitch.
        #
        #   @return [Telnyx::Models::SoundModifications, nil]
        optional :sound_modifications, -> { Telnyx::SoundModifications }

        # @!attribute stream_bidirectional_codec
        #   Indicates codec for bidirectional streaming RTP payloads. Used only with
        #   stream_bidirectional_mode=rtp. Case sensitive.
        #
        #   @return [Symbol, Telnyx::Models::StreamBidirectionalCodec, nil]
        optional :stream_bidirectional_codec, enum: -> { Telnyx::StreamBidirectionalCodec }

        # @!attribute stream_bidirectional_mode
        #   Configures method of bidirectional streaming (mp3, rtp).
        #
        #   @return [Symbol, Telnyx::Models::StreamBidirectionalMode, nil]
        optional :stream_bidirectional_mode, enum: -> { Telnyx::StreamBidirectionalMode }

        # @!attribute stream_bidirectional_target_legs
        #   Specifies which call legs should receive the bidirectional stream audio.
        #
        #   @return [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs, nil]
        optional :stream_bidirectional_target_legs, enum: -> { Telnyx::StreamBidirectionalTargetLegs }

        # @!attribute stream_codec
        #   Specifies the codec to be used for the streamed audio. When set to 'default' or
        #   when transcoding is not possible, the codec from the call will be used.
        #
        #   @return [Symbol, Telnyx::Models::StreamCodec, nil]
        optional :stream_codec, enum: -> { Telnyx::StreamCodec }

        # @!attribute stream_track
        #   Specifies which track should be streamed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::StreamTrack, nil]
        optional :stream_track, enum: -> { Telnyx::Calls::ActionAnswerParams::StreamTrack }

        # @!attribute stream_url
        #   The destination WebSocket address where the stream is going to be delivered.
        #
        #   @return [String, nil]
        optional :stream_url, String

        # @!attribute transcription
        #   Enable transcription upon call answer. The default value is false.
        #
        #   @return [Boolean, nil]
        optional :transcription, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_config
        #
        #   @return [Telnyx::Models::Calls::TranscriptionStartRequest, nil]
        optional :transcription_config, -> { Telnyx::Calls::TranscriptionStartRequest }

        # @!attribute webhook_url
        #   Use this field to override the URL for which Telnyx will send subsequent
        #   webhooks to for this call.
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!attribute webhook_url_method
        #   HTTP request type used for `webhook_url`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLMethod, nil]
        optional :webhook_url_method, enum: -> { Telnyx::Calls::ActionAnswerParams::WebhookURLMethod }

        # @!method initialize(billing_group_id: nil, client_state: nil, command_id: nil, custom_headers: nil, preferred_codecs: nil, record: nil, record_channels: nil, record_custom_file_name: nil, record_format: nil, record_max_length: nil, record_timeout_secs: nil, record_track: nil, record_trim: nil, send_silence_when_idle: nil, sip_headers: nil, sound_modifications: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, transcription: nil, transcription_config: nil, webhook_url: nil, webhook_url_method: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionAnswerParams} for more details.
        #
        #   @param billing_group_id [String] Use this field to set the Billing Group ID for the call. Must be a valid and exi
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers to be added to the SIP INVITE response.
        #
        #   @param preferred_codecs [Symbol, Telnyx::Models::Calls::ActionAnswerParams::PreferredCodecs] The list of comma-separated codecs in a preferred order for the forked media to
        #
        #   @param record [Symbol, Telnyx::Models::Calls::ActionAnswerParams::Record] Start recording automatically after an event. Disabled by default.
        #
        #   @param record_channels [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordChannels] Defines which channel should be recorded ('single' or 'dual') when `record` is s
        #
        #   @param record_custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param record_format [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordFormat] Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        #
        #   @param record_max_length [Integer] Defines the maximum length for the recording in seconds when `record` is specifi
        #
        #   @param record_timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        #   @param record_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        #   @param record_trim [Symbol, Telnyx::Models::Calls::ActionAnswerParams::RecordTrim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param send_silence_when_idle [Boolean] Generate silence RTP packets when no transmission available.
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] SIP headers to be added to the SIP INVITE response. Currently only User-to-User
        #
        #   @param sound_modifications [Telnyx::Models::SoundModifications] Use this field to modify sound effects, for example adjust the pitch.
        #
        #   @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
        #   stream\_
        #
        #   @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
        #
        #   @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
        #
        #   @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
        #
        #   @param stream_track [Symbol, Telnyx::Models::Calls::ActionAnswerParams::StreamTrack] Specifies which track should be streamed.
        #
        #   @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
        #
        #   @param transcription [Boolean] Enable transcription upon call answer. The default value is false.
        #
        #   @param transcription_config [Telnyx::Models::Calls::TranscriptionStartRequest]
        #
        #   @param webhook_url [String] Use this field to override the URL for which Telnyx will send subsequent webhook
        #
        #   @param webhook_url_method [Symbol, Telnyx::Models::Calls::ActionAnswerParams::WebhookURLMethod] HTTP request type used for `webhook_url`.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The list of comma-separated codecs in a preferred order for the forked media to
        # be received.
        module PreferredCodecs
          extend Telnyx::Internal::Type::Enum

          G722_PCMU_PCMA_G729_OPUS_VP8_H264 = :"G722,PCMU,PCMA,G729,OPUS,VP8,H264"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Start recording automatically after an event. Disabled by default.
        module Record
          extend Telnyx::Internal::Type::Enum

          RECORD_FROM_ANSWER = :"record-from-answer"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines which channel should be recorded ('single' or 'dual') when `record` is
        # specified.
        module RecordChannels
          extend Telnyx::Internal::Type::Enum

          SINGLE = :single
          DUAL = :dual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Defines the format of the recording ('wav' or 'mp3') when `record` is specified.
        module RecordFormat
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        module RecordTrack
          extend Telnyx::Internal::Type::Enum

          BOTH = :both
          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module RecordTrim
          extend Telnyx::Internal::Type::Enum

          TRIM_SILENCE = :"trim-silence"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies which track should be streamed.
        module StreamTrack
          extend Telnyx::Internal::Type::Enum

          INBOUND_TRACK = :inbound_track
          OUTBOUND_TRACK = :outbound_track
          BOTH_TRACKS = :both_tracks

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # HTTP request type used for `webhook_url`.
        module WebhookURLMethod
          extend Telnyx::Internal::Type::Enum

          POST = :POST
          GET = :GET

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
