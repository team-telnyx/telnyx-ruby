# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        module InsightGroups
          # @see Telnyx::Resources::AI::Conversations::InsightGroups::Insights#assign
          class InsightAssignParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute group_id
            #   The ID of the insight group
            #
            #   @return [String]
            required :group_id, String

            # @!method initialize(group_id:, request_options: {})
            #   @param group_id [String] The ID of the insight group
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
