# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Insights#create
        class InsightTemplateDetail < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Conversations::InsightTemplate]
          required :data, -> { Telnyx::AI::Conversations::InsightTemplate }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Conversations::InsightTemplate]
        end
      end
    end
  end
end
