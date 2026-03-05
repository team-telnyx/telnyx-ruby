# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#chat
      class AssistantChatParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute content
        #   The message content sent by the client to the assistant
        #
        #   @return [String]
        required :content, String

        # @!attribute conversation_id
        #   A unique identifier for the conversation thread, used to maintain context
        #
        #   @return [String]
        required :conversation_id, String

        # @!attribute name
        #   The optional display name of the user sending the message
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(assistant_id:, content:, conversation_id:, name: nil, request_options: {})
        #   @param assistant_id [String]
        #
        #   @param content [String] The message content sent by the client to the assistant
        #
        #   @param conversation_id [String] A unique identifier for the conversation thread, used to maintain context
        #
        #   @param name [String] The optional display name of the user sending the message
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
