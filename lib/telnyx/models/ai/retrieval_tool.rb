# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class RetrievalTool < Telnyx::Internal::Type::BaseModel
        # @!attribute retrieval
        #
        #   @return [Telnyx::Models::AI::BucketIDs]
        required :retrieval, -> { Telnyx::AI::BucketIDs }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::AI::RetrievalTool::Type]
        required :type, enum: -> { Telnyx::AI::RetrievalTool::Type }

        response_only do
          # @!attribute shared
          #   Whether this tool comes from the shared Tools Library. Responses merge shared
          #   tools into `tools` with `shared: true`; inline tools carry `shared: false`.
          #   Read-only: set by the server, not accepted in requests. When updating an
          #   assistant, omit `shared: true` tools from the request `tools` array and manage
          #   them through `tool_ids` instead — re-sending their definitions creates an inline
          #   duplicate (rejected with error code 10015 when the type allows only one instance
          #   per assistant).
          #
          #   @return [Boolean, nil]
          optional :shared, Telnyx::Internal::Type::Boolean
        end

        # @!method initialize(retrieval:, type:, shared: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::RetrievalTool} for more details.
        #
        #   @param retrieval [Telnyx::Models::AI::BucketIDs]
        #
        #   @param type [Symbol, Telnyx::Models::AI::RetrievalTool::Type]
        #
        #   @param shared [Boolean] Whether this tool comes from the shared Tools Library. Responses merge shared to

        # @see Telnyx::Models::AI::RetrievalTool#type
        module Type
          extend Telnyx::Internal::Type::Enum

          RETRIEVAL = :retrieval

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
