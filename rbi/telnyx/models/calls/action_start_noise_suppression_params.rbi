# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartNoiseSuppressionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartNoiseSuppressionParams,
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

        # The direction of the audio stream to be noise suppressed.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::OrSymbol
            )
          )
        end
        attr_reader :direction

        sig do
          params(
            direction:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # The engine to use for noise suppression. For backward compatibility, engines A,
        # B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
        # C - Krisp
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::OrSymbol
            )
          )
        end
        attr_reader :noise_suppression_engine

        sig do
          params(
            noise_suppression_engine:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::OrSymbol
          ).void
        end
        attr_writer :noise_suppression_engine

        # Configuration parameters for noise suppression engines.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig
            )
          )
        end
        attr_reader :noise_suppression_engine_config

        sig do
          params(
            noise_suppression_engine_config:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::OrHash
          ).void
        end
        attr_writer :noise_suppression_engine_config

        sig do
          params(
            client_state: String,
            command_id: String,
            direction:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::OrSymbol,
            noise_suppression_engine:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::OrSymbol,
            noise_suppression_engine_config:
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::OrHash,
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
          # The direction of the audio stream to be noise suppressed.
          direction: nil,
          # The engine to use for noise suppression. For backward compatibility, engines A,
          # B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
          # C - Krisp
          noise_suppression_engine: nil,
          # Configuration parameters for noise suppression engines.
          noise_suppression_engine_config: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              direction:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::OrSymbol,
              noise_suppression_engine:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::OrSymbol,
              noise_suppression_engine_config:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The direction of the audio stream to be noise suppressed.
        module Direction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The engine to use for noise suppression. For backward compatibility, engines A,
        # B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
        # C - Krisp
        module NoiseSuppressionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DENOISER =
            T.let(
              :Denoiser,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::TaggedSymbol
            )
          DEEP_FILTER_NET =
            T.let(
              :DeepFilterNet,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::TaggedSymbol
            )
          KRISP =
            T.let(
              :Krisp,
              Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class NoiseSuppressionEngineConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig,
                Telnyx::Internal::AnyHash
              )
            end

          # The attenuation limit for noise suppression (0-100). Only applicable for
          # DeepFilterNet.
          sig { returns(T.nilable(Integer)) }
          attr_reader :attenuation_limit

          sig { params(attenuation_limit: Integer).void }
          attr_writer :attenuation_limit

          # Configuration parameters for noise suppression engines.
          sig { params(attenuation_limit: Integer).returns(T.attached_class) }
          def self.new(
            # The attenuation limit for noise suppression (0-100). Only applicable for
            # DeepFilterNet.
            attenuation_limit: nil
          )
          end

          sig { override.returns({ attenuation_limit: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
