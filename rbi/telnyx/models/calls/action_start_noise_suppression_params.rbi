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

        sig { returns(String) }
        attr_accessor :call_control_id

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
        # B, C, and D are also supported, but are deprecated: A - Denoiser B -
        # DeepFilterNet C - Krisp D - AiCoustics
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

        # Configuration parameters for noise suppression engines. Different engines
        # support different parameters.
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
            call_control_id: String,
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
          call_control_id:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The direction of the audio stream to be noise suppressed.
          direction: nil,
          # The engine to use for noise suppression. For backward compatibility, engines A,
          # B, C, and D are also supported, but are deprecated: A - Denoiser B -
          # DeepFilterNet C - Krisp D - AiCoustics
          noise_suppression_engine: nil,
          # Configuration parameters for noise suppression engines. Different engines
          # support different parameters.
          noise_suppression_engine_config: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
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
        # B, C, and D are also supported, but are deprecated: A - Denoiser B -
        # DeepFilterNet C - Krisp D - AiCoustics
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
          AI_COUSTICS =
            T.let(
              :AiCoustics,
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

          # Enhancement intensity (0.0-1.0). Only applicable for AiCoustics.
          sig { returns(T.nilable(Float)) }
          attr_reader :enhancement_level

          sig { params(enhancement_level: Float).void }
          attr_writer :enhancement_level

          # AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail'
          # optimized for Voice AI/STT. Only applicable for AiCoustics.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::OrSymbol
              )
            )
          end
          attr_reader :family

          sig do
            params(
              family:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::OrSymbol
            ).void
          end
          attr_writer :family

          # Processing mode. Only applicable for DeepFilterNet.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::OrSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # The Krisp model to use. Only applicable for Krisp.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::OrSymbol
              )
            )
          end
          attr_reader :model

          sig do
            params(
              model:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::OrSymbol
            ).void
          end
          attr_writer :model

          # AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are
          # sparrow-only. 'vf_l' and 'vf_1_1_l' are quail-only. Only applicable for
          # AiCoustics.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::OrSymbol
              )
            )
          end
          attr_reader :size

          sig do
            params(
              size:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::OrSymbol
            ).void
          end
          attr_writer :size

          # Suppression level (0.0-100.0). Only applicable for Krisp.
          sig { returns(T.nilable(Float)) }
          attr_reader :suppression_level

          sig { params(suppression_level: Float).void }
          attr_writer :suppression_level

          # Voice gain multiplier (0.1-4.0). Only applicable for AiCoustics.
          sig { returns(T.nilable(Float)) }
          attr_reader :voice_gain

          sig { params(voice_gain: Float).void }
          attr_writer :voice_gain

          # Configuration parameters for noise suppression engines. Different engines
          # support different parameters.
          sig do
            params(
              attenuation_limit: Integer,
              enhancement_level: Float,
              family:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::OrSymbol,
              mode:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::OrSymbol,
              model:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::OrSymbol,
              size:
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::OrSymbol,
              suppression_level: Float,
              voice_gain: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # The attenuation limit for noise suppression (0-100). Only applicable for
            # DeepFilterNet.
            attenuation_limit: nil,
            # Enhancement intensity (0.0-1.0). Only applicable for AiCoustics.
            enhancement_level: nil,
            # AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail'
            # optimized for Voice AI/STT. Only applicable for AiCoustics.
            family: nil,
            # Processing mode. Only applicable for DeepFilterNet.
            mode: nil,
            # The Krisp model to use. Only applicable for Krisp.
            model: nil,
            # AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are
            # sparrow-only. 'vf_l' and 'vf_1_1_l' are quail-only. Only applicable for
            # AiCoustics.
            size: nil,
            # Suppression level (0.0-100.0). Only applicable for Krisp.
            suppression_level: nil,
            # Voice gain multiplier (0.1-4.0). Only applicable for AiCoustics.
            voice_gain: nil
          )
          end

          sig do
            override.returns(
              {
                attenuation_limit: Integer,
                enhancement_level: Float,
                family:
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::OrSymbol,
                mode:
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::OrSymbol,
                model:
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::OrSymbol,
                size:
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::OrSymbol,
                suppression_level: Float,
                voice_gain: Float
              }
            )
          end
          def to_hash
          end

          # AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail'
          # optimized for Voice AI/STT. Only applicable for AiCoustics.
          module Family
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SPARROW =
              T.let(
                :sparrow,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::TaggedSymbol
              )
            QUAIL =
              T.let(
                :quail,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Processing mode. Only applicable for DeepFilterNet.
          module Mode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STANDARD =
              T.let(
                :standard,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::TaggedSymbol
              )
            ADVANCED =
              T.let(
                :advanced,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The Krisp model to use. Only applicable for Krisp.
          module Model
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KRISP_VIVA_TEL_V2_KEF =
              T.let(
                :"krisp-viva-tel-v2.kef",
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::TaggedSymbol
              )
            KRISP_VIVA_TEL_LITE_V1_KEF =
              T.let(
                :"krisp-viva-tel-lite-v1.kef",
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::TaggedSymbol
              )
            KRISP_VIVA_PRO_V1_KEF =
              T.let(
                :"krisp-viva-pro-v1.kef",
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::TaggedSymbol
              )
            KRISP_VIVA_SS_V1_KEF =
              T.let(
                :"krisp-viva-ss-v1.kef",
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are
          # sparrow-only. 'vf_l' and 'vf_1_1_l' are quail-only. Only applicable for
          # AiCoustics.
          module Size
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            S =
              T.let(
                :s,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )
            L =
              T.let(
                :l,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )
            XS =
              T.let(
                :xs,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )
            XXS =
              T.let(
                :xxs,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )
            VF_L =
              T.let(
                :vf_l,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )
            VF_1_1_L =
              T.let(
                :vf_1_1_l,
                Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size::TaggedSymbol
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
end
