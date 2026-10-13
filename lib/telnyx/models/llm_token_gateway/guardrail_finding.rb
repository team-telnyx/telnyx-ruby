# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      class GuardrailFinding < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::GuardrailFinding::Action]
        required :action, enum: -> { Telnyx::LlmTokenGateway::GuardrailFinding::Action }

        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!attribute count
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute detector
        #
        #   @return [Symbol, Telnyx::Models::LlmTokenGateway::GuardrailFinding::Detector]
        required :detector, enum: -> { Telnyx::LlmTokenGateway::GuardrailFinding::Detector }

        # @!method initialize(action:, code:, count:, detector:)
        #   @param action [Symbol, Telnyx::Models::LlmTokenGateway::GuardrailFinding::Action]
        #   @param code [String]
        #   @param count [Integer]
        #   @param detector [Symbol, Telnyx::Models::LlmTokenGateway::GuardrailFinding::Detector]

        # @see Telnyx::Models::LlmTokenGateway::GuardrailFinding#action
        module Action
          extend Telnyx::Internal::Type::Enum

          FLAG = :flag
          BLOCK = :block

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::LlmTokenGateway::GuardrailFinding#detector
        module Detector
          extend Telnyx::Internal::Type::Enum

          SECRETS = :secrets
          DLP = :dlp
          SAFETY = :safety

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
