# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#create
        class SourceCreateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Collections::CollectionsSource, nil]
          optional :data, -> { Telnyx::AI::Collections::CollectionsSource }

          # @!method initialize(data: nil)
          #   Envelope containing a single collection source.
          #
          #   @param data [Telnyx::Models::AI::Collections::CollectionsSource]
        end
      end
    end
  end
end
