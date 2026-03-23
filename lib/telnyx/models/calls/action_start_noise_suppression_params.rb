# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_noise_suppression
      class ActionStartNoiseSuppressionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

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

        # @!attribute direction
        #   The direction of the audio stream to be noise suppressed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::Direction, nil]
        optional :direction, enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction }

        # @!attribute noise_suppression_engine
        #   The engine to use for noise suppression. For backward compatibility, engines A,
        #   B, C, and D are also supported, but are deprecated: A - Denoiser B -
        #   DeepFilterNet C - Krisp D - AiCoustics
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine, nil]
        optional :noise_suppression_engine,
                 enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine }

        # @!attribute noise_suppression_engine_config
        #   Configuration parameters for noise suppression engines. Different engines
        #   support different parameters.
        #
        #   @return [Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig, nil]
        optional :noise_suppression_engine_config,
                 -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig }

        # @!method initialize(call_control_id:, client_state: nil, command_id: nil, direction: nil, noise_suppression_engine: nil, noise_suppression_engine_config: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartNoiseSuppressionParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param direction [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::Direction] The direction of the audio stream to be noise suppressed.
        #
        #   @param noise_suppression_engine [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine] The engine to use for noise suppression.
        #
        #   @param noise_suppression_engine_config [Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig] Configuration parameters for noise suppression engines. Different engines suppor
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The direction of the audio stream to be noise suppressed.
        module Direction
          extend Telnyx::Internal::Type::Enum

          INBOUND = :inbound
          OUTBOUND = :outbound
          BOTH = :both

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The engine to use for noise suppression. For backward compatibility, engines A,
        # B, C, and D are also supported, but are deprecated: A - Denoiser B -
        # DeepFilterNet C - Krisp D - AiCoustics
        module NoiseSuppressionEngine
          extend Telnyx::Internal::Type::Enum

          DENOISER = :Denoiser
          DEEP_FILTER_NET = :DeepFilterNet
          KRISP = :Krisp
          AI_COUSTICS = :AiCoustics

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class NoiseSuppressionEngineConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute attenuation_limit
          #   The attenuation limit for noise suppression (0-100). Only applicable for
          #   DeepFilterNet.
          #
          #   @return [Integer, nil]
          optional :attenuation_limit, Integer

          # @!attribute enhancement_level
          #   Enhancement intensity (0.0-1.0). Only applicable for AiCoustics.
          #
          #   @return [Float, nil]
          optional :enhancement_level, Float

          # @!attribute family
          #   AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail'
          #   optimized for Voice AI/STT. Only applicable for AiCoustics.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family, nil]
          optional :family,
                   enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family }

          # @!attribute mode
          #   Processing mode. Only applicable for DeepFilterNet.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode, nil]
          optional :mode,
                   enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode }

          # @!attribute model
          #   The Krisp model to use. Only applicable for Krisp.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model, nil]
          optional :model,
                   enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model }

          # @!attribute size
          #   AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are
          #   sparrow-only. 'vf_l' and 'vf_1_1_l' are quail-only. Only applicable for
          #   AiCoustics.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size, nil]
          optional :size,
                   enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size }

          # @!attribute suppression_level
          #   Suppression level (0.0-100.0). Only applicable for Krisp.
          #
          #   @return [Float, nil]
          optional :suppression_level, Float

          # @!attribute voice_gain
          #   Voice gain multiplier (0.1-4.0). Only applicable for AiCoustics.
          #
          #   @return [Float, nil]
          optional :voice_gain, Float

          # @!method initialize(attenuation_limit: nil, enhancement_level: nil, family: nil, mode: nil, model: nil, size: nil, suppression_level: nil, voice_gain: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig}
          #   for more details.
          #
          #   Configuration parameters for noise suppression engines. Different engines
          #   support different parameters.
          #
          #   @param attenuation_limit [Integer] The attenuation limit for noise suppression (0-100). Only applicable for DeepFil
          #
          #   @param enhancement_level [Float] Enhancement intensity (0.0-1.0). Only applicable for AiCoustics.
          #
          #   @param family [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Family] AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail' o
          #
          #   @param mode [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Mode] Processing mode. Only applicable for DeepFilterNet.
          #
          #   @param model [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Model] The Krisp model to use. Only applicable for Krisp.
          #
          #   @param size [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig::Size] AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are s
          #
          #   @param suppression_level [Float] Suppression level (0.0-100.0). Only applicable for Krisp.
          #
          #   @param voice_gain [Float] Voice gain multiplier (0.1-4.0). Only applicable for AiCoustics.

          # AiCoustics model family. 'sparrow' optimized for human-to-human calls, 'quail'
          # optimized for Voice AI/STT. Only applicable for AiCoustics.
          #
          # @see Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig#family
          module Family
            extend Telnyx::Internal::Type::Enum

            SPARROW = :sparrow
            QUAIL = :quail

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Processing mode. Only applicable for DeepFilterNet.
          #
          # @see Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig#mode
          module Mode
            extend Telnyx::Internal::Type::Enum

            STANDARD = :standard
            ADVANCED = :advanced

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The Krisp model to use. Only applicable for Krisp.
          #
          # @see Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig#model
          module Model
            extend Telnyx::Internal::Type::Enum

            KRISP_VIVA_TEL_V2_KEF = :"krisp-viva-tel-v2.kef"
            KRISP_VIVA_TEL_LITE_V1_KEF = :"krisp-viva-tel-lite-v1.kef"
            KRISP_VIVA_PRO_V1_KEF = :"krisp-viva-pro-v1.kef"
            KRISP_VIVA_SS_V1_KEF = :"krisp-viva-ss-v1.kef"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # AiCoustics model size. 's' and 'l' work with both families. 'xs' and 'xxs' are
          # sparrow-only. 'vf_l' and 'vf_1_1_l' are quail-only. Only applicable for
          # AiCoustics.
          #
          # @see Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig#size
          module Size
            extend Telnyx::Internal::Type::Enum

            S = :s
            L = :l
            XS = :xs
            XXS = :xxs
            VF_L = :vf_l
            VF_1_1_L = :vf_1_1_l

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
