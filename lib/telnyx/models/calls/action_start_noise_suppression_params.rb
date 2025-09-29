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
        #   The engine to use for noise suppression. A - rnnoise engine B - deepfilter
        #   engine.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine, nil]
        optional :noise_suppression_engine,
                 enum: -> { Telnyx::Calls::ActionStartNoiseSuppressionParams::NoiseSuppressionEngine }

        # @!method initialize(client_state: nil, command_id: nil, direction: nil, noise_suppression_engine: nil, request_options: {})
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

        # The engine to use for noise suppression. A - rnnoise engine B - deepfilter
        # engine.
        module NoiseSuppressionEngine
          extend Telnyx::Internal::Type::Enum

          A = :A
          B = :B

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
