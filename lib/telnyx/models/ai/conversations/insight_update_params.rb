# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Insights#update
        class InsightUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute instructions
          #
          #   @return [String, nil]
          optional :instructions, String

          # @!attribute json_schema
          #
          #   @return [String, Object, nil]
          optional :json_schema, union: -> { Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute webhook
          #
          #   @return [String, nil]
          optional :webhook, String

          # @!method initialize(instructions: nil, json_schema: nil, name: nil, webhook: nil, request_options: {})
          #   @param instructions [String]
          #   @param json_schema [String, Object]
          #   @param name [String]
          #   @param webhook [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          module JsonSchema
            extend Telnyx::Internal::Type::Union

            variant String

            variant Telnyx::Internal::Type::Unknown

            # @!method self.variants
            #   @return [Array(String, Object)]
          end
        end
      end
    end
  end
end
