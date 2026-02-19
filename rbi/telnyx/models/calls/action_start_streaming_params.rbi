# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartStreamingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartStreamingParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Custom parameters to be sent as part of the WebSocket connection.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Calls::ActionStartStreamingParams::CustomParameter
              ]
            )
          )
        end
        attr_reader :custom_parameters

        sig do
          params(
            custom_parameters:
              T::Array[
                Telnyx::Calls::ActionStartStreamingParams::CustomParameter::OrHash
              ]
          ).void
        end
        attr_writer :custom_parameters

        sig { returns(T.nilable(Telnyx::DialogflowConfig)) }
        attr_reader :dialogflow_config

        sig { params(dialogflow_config: Telnyx::DialogflowConfig::OrHash).void }
        attr_writer :dialogflow_config

        # Enables Dialogflow for the current call. The default value is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_dialogflow

        sig { params(enable_dialogflow: T::Boolean).void }
        attr_writer :enable_dialogflow

        # An authentication token to be sent as part of the WebSocket connection. Maximum
        # length is 4000 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :stream_auth_token

        sig { params(stream_auth_token: String).void }
        attr_writer :stream_auth_token

        # Indicates codec for bidirectional streaming RTP payloads. Used only with
        # stream_bidirectional_mode=rtp. Case sensitive.
        sig { returns(T.nilable(Telnyx::StreamBidirectionalCodec::OrSymbol)) }
        attr_reader :stream_bidirectional_codec

        sig do
          params(
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_codec

        # Configures method of bidirectional streaming (mp3, rtp).
        sig { returns(T.nilable(Telnyx::StreamBidirectionalMode::OrSymbol)) }
        attr_reader :stream_bidirectional_mode

        sig do
          params(
            stream_bidirectional_mode: Telnyx::StreamBidirectionalMode::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_mode

        # Audio sampling rate.
        sig do
          returns(T.nilable(Telnyx::StreamBidirectionalSamplingRate::OrInteger))
        end
        attr_reader :stream_bidirectional_sampling_rate

        sig do
          params(
            stream_bidirectional_sampling_rate:
              Telnyx::StreamBidirectionalSamplingRate::OrInteger
          ).void
        end
        attr_writer :stream_bidirectional_sampling_rate

        # Specifies which call legs should receive the bidirectional stream audio.
        sig do
          returns(T.nilable(Telnyx::StreamBidirectionalTargetLegs::OrSymbol))
        end
        attr_reader :stream_bidirectional_target_legs

        sig do
          params(
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol
          ).void
        end
        attr_writer :stream_bidirectional_target_legs

        # Specifies the codec to be used for the streamed audio. When set to 'default' or
        # when transcoding is not possible, the codec from the call will be used.
        sig { returns(T.nilable(Telnyx::StreamCodec::OrSymbol)) }
        attr_reader :stream_codec

        sig { params(stream_codec: Telnyx::StreamCodec::OrSymbol).void }
        attr_writer :stream_codec

        # Specifies which track should be streamed.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::OrSymbol
            )
          )
        end
        attr_reader :stream_track

        sig do
          params(
            stream_track:
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::OrSymbol
          ).void
        end
        attr_writer :stream_track

        # The destination WebSocket address where the stream is going to be delivered.
        sig { returns(T.nilable(String)) }
        attr_reader :stream_url

        sig { params(stream_url: String).void }
        attr_writer :stream_url

        sig do
          params(
            client_state: String,
            command_id: String,
            custom_parameters:
              T::Array[
                Telnyx::Calls::ActionStartStreamingParams::CustomParameter::OrHash
              ],
            dialogflow_config: Telnyx::DialogflowConfig::OrHash,
            enable_dialogflow: T::Boolean,
            stream_auth_token: String,
            stream_bidirectional_codec:
              Telnyx::StreamBidirectionalCodec::OrSymbol,
            stream_bidirectional_mode:
              Telnyx::StreamBidirectionalMode::OrSymbol,
            stream_bidirectional_sampling_rate:
              Telnyx::StreamBidirectionalSamplingRate::OrInteger,
            stream_bidirectional_target_legs:
              Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
            stream_codec: Telnyx::StreamCodec::OrSymbol,
            stream_track:
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::OrSymbol,
            stream_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom parameters to be sent as part of the WebSocket connection.
          custom_parameters: nil,
          dialogflow_config: nil,
          # Enables Dialogflow for the current call. The default value is false.
          enable_dialogflow: nil,
          # An authentication token to be sent as part of the WebSocket connection. Maximum
          # length is 4000 characters.
          stream_auth_token: nil,
          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          stream_bidirectional_codec: nil,
          # Configures method of bidirectional streaming (mp3, rtp).
          stream_bidirectional_mode: nil,
          # Audio sampling rate.
          stream_bidirectional_sampling_rate: nil,
          # Specifies which call legs should receive the bidirectional stream audio.
          stream_bidirectional_target_legs: nil,
          # Specifies the codec to be used for the streamed audio. When set to 'default' or
          # when transcoding is not possible, the codec from the call will be used.
          stream_codec: nil,
          # Specifies which track should be streamed.
          stream_track: nil,
          # The destination WebSocket address where the stream is going to be delivered.
          stream_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              custom_parameters:
                T::Array[
                  Telnyx::Calls::ActionStartStreamingParams::CustomParameter
                ],
              dialogflow_config: Telnyx::DialogflowConfig,
              enable_dialogflow: T::Boolean,
              stream_auth_token: String,
              stream_bidirectional_codec:
                Telnyx::StreamBidirectionalCodec::OrSymbol,
              stream_bidirectional_mode:
                Telnyx::StreamBidirectionalMode::OrSymbol,
              stream_bidirectional_sampling_rate:
                Telnyx::StreamBidirectionalSamplingRate::OrInteger,
              stream_bidirectional_target_legs:
                Telnyx::StreamBidirectionalTargetLegs::OrSymbol,
              stream_codec: Telnyx::StreamCodec::OrSymbol,
              stream_track:
                Telnyx::Calls::ActionStartStreamingParams::StreamTrack::OrSymbol,
              stream_url: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class CustomParameter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartStreamingParams::CustomParameter,
                Telnyx::Internal::AnyHash
              )
            end

          # The name of the custom parameter.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The value of the custom parameter.
          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(name: String, value: String).returns(T.attached_class) }
          def self.new(
            # The name of the custom parameter.
            name: nil,
            # The value of the custom parameter.
            value: nil
          )
          end

          sig { override.returns({ name: String, value: String }) }
          def to_hash
          end
        end

        # Specifies which track should be streamed.
        module StreamTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartStreamingParams::StreamTrack
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND_TRACK =
            T.let(
              :inbound_track,
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::TaggedSymbol
            )
          OUTBOUND_TRACK =
            T.let(
              :outbound_track,
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::TaggedSymbol
            )
          BOTH_TRACKS =
            T.let(
              :both_tracks,
              Telnyx::Calls::ActionStartStreamingParams::StreamTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartStreamingParams::StreamTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
