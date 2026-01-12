# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::InsightGroups#retrieve_insight_groups
        class InsightTemplateGroup < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute insights
          #
          #   @return [Array<Telnyx::Models::AI::Conversations::InsightTemplate>, nil]
          optional :insights, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Conversations::InsightTemplate] }

          # @!attribute webhook
          #
          #   @return [String, nil]
          optional :webhook, String

          # @!method initialize(id:, created_at:, name:, description: nil, insights: nil, webhook: nil)
          #   @param id [String]
          #   @param created_at [Time]
          #   @param name [String]
          #   @param description [String]
          #   @param insights [Array<Telnyx::Models::AI::Conversations::InsightTemplate>]
          #   @param webhook [String]
        end
      end
    end
  end
end
