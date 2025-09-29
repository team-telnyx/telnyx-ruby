# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::InsightGroups#retrieve
        class InsightTemplateGroupDetail < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Conversations::InsightTemplateGroup]
          required :data, -> { Telnyx::AI::Conversations::InsightTemplateGroup }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Conversations::InsightTemplateGroup]
        end
      end
    end
  end
end
