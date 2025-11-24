# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#send_sms
      class AssistantSendSMSParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute from
        #
        #   @return [String]
        required :from, String

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute to
        #
        #   @return [String]
        required :to, String

        # @!attribute conversation_metadata
        #
        #   @return [Hash{Symbol=>String, Integer, Boolean}, nil]
        optional :conversation_metadata,
                 -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::AssistantSendSMSParams::ConversationMetadata] }

        # @!attribute should_create_conversation
        #
        #   @return [Boolean, nil]
        optional :should_create_conversation, Telnyx::Internal::Type::Boolean

        # @!method initialize(from:, text:, to:, conversation_metadata: nil, should_create_conversation: nil, request_options: {})
        #   @param from [String]
        #   @param text [String]
        #   @param to [String]
        #   @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}]
        #   @param should_create_conversation [Boolean]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module ConversationMetadata
          extend Telnyx::Internal::Type::Union

          variant String

          variant Integer

          variant Telnyx::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Integer, Boolean)]
        end
      end
    end
  end
end
