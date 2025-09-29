# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InsightSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute insight_group_id
        #   Reference to an Insight Group. Insights in this group will be run automatically
        #   for all the assistant's conversations.
        #
        #   @return [String, nil]
        optional :insight_group_id, String

        # @!method initialize(insight_group_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InsightSettings} for more details.
        #
        #   @param insight_group_id [String] Reference to an Insight Group. Insights in this group will be run automatically
      end
    end
  end
end
