# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#list
        class SourceListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Collections::CollectionsSource>, nil]
          optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::CollectionsSource] }

          # @!method initialize(data: nil)
          #   @param data [Array<Telnyx::Models::AI::Collections::CollectionsSource>]
        end
      end
    end
  end
end
