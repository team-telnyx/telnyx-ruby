# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class HangupTool < Telnyx::Internal::Type::BaseModel
        # @!attribute hangup
        #
        #   @return [Telnyx::Models::AI::HangupToolParams]
        required :hangup, -> { Telnyx::AI::HangupToolParams }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::HangupTool::Type]
        required :type, enum: -> { Telnyx::AI::HangupTool::Type }

        # @!method initialize(hangup:, type:)
        #   @param hangup [Telnyx::Models::AI::HangupToolParams]
        #   @param type [Symbol, Telnyx::Models::AI::HangupTool::Type]

        # @see Telnyx::Models::AI::HangupTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          HANGUP = :hangup

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
