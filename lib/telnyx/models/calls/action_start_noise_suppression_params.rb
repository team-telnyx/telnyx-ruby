# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_noise_suppression
      class ActionStartNoiseSuppressionParams < Telnyx::Internal::Type::BaseModel
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

        # @!attribute direction
        #   The direction of the audio stream to be noise suppressed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::Direction, nil]
        optional :direction, enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::Direction }

        # @!attribute noise_suppression_engine
        #   The engine to use for noise suppression. For backward compatibility, engines A,
        #   B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
        #   C - Krisp
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine, nil]
        optional :noise_suppression_engine,
                 enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine }

        # @!attribute noise_suppression_engine_config
        #   Configuration parameters for noise suppression engines.
        #
        #   @return [Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig, nil]
        optional :noise_suppression_engine_config,
                 -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig }

        # @!method initialize(client_state: nil, command_id: nil, direction: nil, noise_suppression_engine: nil, noise_suppression_engine_config: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartNoiseSuppressionParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param direction [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::Direction] The direction of the audio stream to be noise suppressed.
        #
        #   @param noise_suppression_engine [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine] The engine to use for noise suppression.
        #
        #   @param noise_suppression_engine_config [Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig] Configuration parameters for noise suppression engines.
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
        # B, and C are also supported, but are deprecated: A - Denoiser B - DeepFilterNet
        # C - Krisp
        module NoiseSuppressionEngine
          extend Telnyx::Internal::Type::Enum

          DENOISER = :Denoiser
          DEEP_FILTER_NET = :DeepFilterNet
          KRISP = :Krisp

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

          # @!method initialize(attenuation_limit: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngineConfig}
          #   for more details.
          #
          #   Configuration parameters for noise suppression engines.
          #
          #   @param attenuation_limit [Integer] The attenuation limit for noise suppression (0-100). Only applicable for DeepFil
        end
      end
    end
  end
end
