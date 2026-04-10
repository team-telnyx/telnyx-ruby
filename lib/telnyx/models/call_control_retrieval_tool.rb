# frozen_string_literal: true

module Telnyx
  module Models
    class CallControlRetrievalTool < Telnyx::Internal::Type::BaseModel
      # @!attribute retrieval
      #
      #   @return [Telnyx::Models::CallControlBucketIDs]
      required :retrieval, -> { Telnyx::CallControlBucketIDs }

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::CallControlRetrievalTool::Type]
      required :type, enum: -> { Telnyx::CallControlRetrievalTool::Type }

      # @!method initialize(retrieval:, type:)
      #   @param retrieval [Telnyx::Models::CallControlBucketIDs]
      #   @param type [Symbol, Telnyx::Models::CallControlRetrievalTool::Type]

      # @see Telnyx::Models::CallControlRetrievalTool#type
      module Type
        extend Telnyx::Internal::Type::Enum

        RETRIEVAL = :retrieval

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
