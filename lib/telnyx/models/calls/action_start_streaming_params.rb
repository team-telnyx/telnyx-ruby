# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_streaming
      class ActionStartStreamingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

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

        # @!attribute dialogflow_config
        #
        #   @return [Telnyx::Models::DialogflowConfig, nil]
        optional :dialogflow_config, -> { Telnyx::DialogflowConfig }

        # @!attribute enable_dialogflow
        #   Enables Dialogflow for the current call. The default value is false.
        #
        #   @return [Boolean, nil]
        optional :enable_dialogflow, Telnyx::Internal::Type::Boolean

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

        # @!attribute stream_bidirectional_sampling_rate
        #   Audio sampling rate.
        #
        #   @return [Integer, Telnyx::Models::Calls::ActionStartStreamingParams::StreamBidirectionalSamplingRate, nil]
        optional :stream_bidirectional_sampling_rate,
                 enum: -> { Telnyx::Calls::ActionStartStreamingParams::StreamBidirectionalSamplingRate }

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
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartStreamingParams::StreamTrack, nil]
        optional :stream_track, enum: -> { Telnyx::Calls::ActionStartStreamingParams::StreamTrack }

        # @!attribute stream_url
        #   The destination WebSocket address where the stream is going to be delivered.
        #
        #   @return [String, nil]
        optional :stream_url, String

        # @!method initialize(client_state: nil, command_id: nil, dialogflow_config: nil, enable_dialogflow: nil, stream_bidirectional_codec: nil, stream_bidirectional_mode: nil, stream_bidirectional_sampling_rate: nil, stream_bidirectional_target_legs: nil, stream_codec: nil, stream_track: nil, stream_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartStreamingParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param dialogflow_config [Telnyx::Models::DialogflowConfig]
        #
        #   @param enable_dialogflow [Boolean] Enables Dialogflow for the current call. The default value is false.
        #
        #   @param stream_bidirectional_codec [Symbol, Telnyx::Models::StreamBidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
        #   stream\_
        #
        #   @param stream_bidirectional_mode [Symbol, Telnyx::Models::StreamBidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
        #
        #   @param stream_bidirectional_sampling_rate [Integer, Telnyx::Models::Calls::ActionStartStreamingParams::StreamBidirectionalSamplingRate] Audio sampling rate.
        #
        #   @param stream_bidirectional_target_legs [Symbol, Telnyx::Models::StreamBidirectionalTargetLegs] Specifies which call legs should receive the bidirectional stream audio.
        #
        #   @param stream_codec [Symbol, Telnyx::Models::StreamCodec] Specifies the codec to be used for the streamed audio. When set to 'default' or
        #
        #   @param stream_track [Symbol, Telnyx::Models::Calls::ActionStartStreamingParams::StreamTrack] Specifies which track should be streamed.
        #
        #   @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Audio sampling rate.
        module StreamBidirectionalSamplingRate
          extend Telnyx::Internal::Type::Enum

          STREAM_BIDIRECTIONAL_SAMPLING_RATE_8000 = 8000
          STREAM_BIDIRECTIONAL_SAMPLING_RATE_16000 = 16_000
          STREAM_BIDIRECTIONAL_SAMPLING_RATE_22050 = 22_050
          STREAM_BIDIRECTIONAL_SAMPLING_RATE_24000 = 24_000
          STREAM_BIDIRECTIONAL_SAMPLING_RATE_48000 = 48_000

          # @!method self.values
          #   @return [Array<Integer>]
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
      end
    end
  end
end
