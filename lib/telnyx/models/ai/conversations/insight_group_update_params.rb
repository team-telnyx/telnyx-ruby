# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::InsightGroups#update
        class InsightGroupUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute webhook
          #
          #   @return [String, nil]
          optional :webhook, String

          # @!method initialize(description: nil, name: nil, webhook: nil, request_options: {})
          #   @param description [String]
          #   @param name [String]
          #   @param webhook [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
