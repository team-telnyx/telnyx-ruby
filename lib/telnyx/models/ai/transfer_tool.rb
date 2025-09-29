# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TransferTool < Telnyx::Internal::Type::BaseModel
        # @!attribute transfer
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingTransferToolParams]
        required :transfer, -> { Telnyx::AI::InferenceEmbeddingTransferToolParams }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::TransferTool::Type]
        required :type, enum: -> { Telnyx::AI::TransferTool::Type }

        # @!method initialize(transfer:, type:)
        #   @param transfer [Telnyx::Models::AI::InferenceEmbeddingTransferToolParams]
        #   @param type [Symbol, Telnyx::Models::AI::TransferTool::Type]

        # @see Telnyx::Models::AI::TransferTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TRANSFER = :transfer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
