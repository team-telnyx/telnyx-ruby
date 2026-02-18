# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#add_message
      class ConversationAddMessageParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute role
        #
        #   @return [String]
        required :role, String

        # @!attribute content
        #
        #   @return [String, nil]
        optional :content, String

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>String, Integer, Boolean, Array<String, Integer, Boolean>}, nil]
        optional :metadata,
                 -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::ConversationAddMessageParams::Metadata] }

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute sent_at
        #
        #   @return [Time, nil]
        optional :sent_at, Time

        # @!attribute tool_call_id
        #
        #   @return [String, nil]
        optional :tool_call_id, String

        # @!attribute tool_calls
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :tool_calls,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute tool_choice
        #
        #   @return [String, Hash{Symbol=>Object}, nil]
        optional :tool_choice, union: -> { Telnyx::AI::ConversationAddMessageParams::ToolChoice }

        # @!method initialize(role:, content: nil, metadata: nil, name: nil, sent_at: nil, tool_call_id: nil, tool_calls: nil, tool_choice: nil, request_options: {})
        #   @param role [String]
        #   @param content [String]
        #   @param metadata [Hash{Symbol=>String, Integer, Boolean, Array<String, Integer, Boolean>}]
        #   @param name [String]
        #   @param sent_at [Time]
        #   @param tool_call_id [String]
        #   @param tool_calls [Array<Hash{Symbol=>Object}>]
        #   @param tool_choice [String, Hash{Symbol=>Object}]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module Metadata
          extend Telnyx::Internal::Type::Union

          variant String

          variant Integer

          variant Telnyx::Internal::Type::Boolean

          variant -> { Telnyx::Models::AI::ConversationAddMessageParams::Metadata::UnionArrayVariant3Array }

          module UnionArrayVariant3
            extend Telnyx::Internal::Type::Union

            variant String

            variant Integer

            variant Telnyx::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Integer, Boolean)]
          end

          # @!method self.variants
          #   @return [Array(String, Integer, Boolean, Array<String, Integer, Boolean>)]

          # @type [Telnyx::Internal::Type::Converter]
          UnionArrayVariant3Array =
            Telnyx::Internal::Type::ArrayOf[union: -> {
              Telnyx::AI::ConversationAddMessageParams::Metadata::UnionArrayVariant3
            }]
        end

        module ToolChoice
          extend Telnyx::Internal::Type::Union

          variant String

          variant -> { Telnyx::Models::AI::ConversationAddMessageParams::ToolChoice::ToolChoiceObjectMap }

          # @!method self.variants
          #   @return [Array(String, Hash{Symbol=>Object})]

          # @type [Telnyx::Internal::Type::Converter]
          ToolChoiceObjectMap = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
        end
      end
    end
  end
end
