# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightTemplate < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute instructions
          #
          #   @return [String]
          required :instructions, String

          # @!attribute insight_type
          #
          #   @return [Symbol, Telnyx::Models::AI::Conversations::InsightTemplate::InsightType, nil]
          optional :insight_type, enum: -> { Telnyx::AI::Conversations::InsightTemplate::InsightType }

          # @!attribute json_schema
          #   If specified, the output will follow the JSON schema.
          #
          #   @return [String, Object, nil]
          optional :json_schema, union: -> { Telnyx::AI::Conversations::InsightTemplate::JsonSchema }

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute webhook
          #
          #   @return [String, nil]
          optional :webhook, String

          # @!method initialize(id:, created_at:, instructions:, insight_type: nil, json_schema: nil, name: nil, webhook: nil)
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param instructions [String]
          #
          #   @param insight_type [Symbol, Telnyx::Models::AI::Conversations::InsightTemplate::InsightType]
          #
          #   @param json_schema [String, Object] If specified, the output will follow the JSON schema.
          #
          #   @param name [String]
          #
          #   @param webhook [String]

          # @see Telnyx::Models::AI::Conversations::InsightTemplate#insight_type
          module InsightType
            extend Telnyx::Internal::Type::Enum

            CUSTOM = :custom
            DEFAULT = :default

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # If specified, the output will follow the JSON schema.
          #
          # @see Telnyx::Models::AI::Conversations::InsightTemplate#json_schema
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
