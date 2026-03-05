# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Insights#retrieve
        class InsightRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute insight_id
          #   The ID of the insight
          #
          #   @return [String]
          required :insight_id, String

          # @!method initialize(insight_id:, request_options: {})
          #   @param insight_id [String] The ID of the insight
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
