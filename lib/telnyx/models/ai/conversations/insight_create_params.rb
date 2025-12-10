# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::Insights#create
        class InsightCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute instructions
          #
          #   @return [String]
          required :instructions, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute json_schema
          #   If specified, the output will follow the JSON schema.
          #
          #   @return [String, Hash{Symbol=>Object}, nil]
          optional :json_schema, union: -> { Telnyx::AI::Conversations::InsightCreateParams::JsonSchema }

          # @!attribute webhook
          #
          #   @return [String, nil]
          optional :webhook, String

          # @!method initialize(instructions:, name:, json_schema: nil, webhook: nil, request_options: {})
          #   @param instructions [String]
          #
          #   @param name [String]
          #
          #   @param json_schema [String, Hash{Symbol=>Object}] If specified, the output will follow the JSON schema.
          #
          #   @param webhook [String]
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # If specified, the output will follow the JSON schema.
          module JsonSchema
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::Conversations::InsightCreateParams::JsonSchema::JsonSchemaObjectMap }

            # @!method self.variants
            #   @return [Array(String, Hash{Symbol=>Object})]

            # @type [Telnyx::Internal::Type::Converter]
            JsonSchemaObjectMap = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
          end
        end
      end
    end
  end
end
