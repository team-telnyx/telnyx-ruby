# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#chat
      class AssistantChatResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute content
        #   The assistant's generated response based on the input message and context.
        #
        #   @return [String]
        required :content, String

        # @!method initialize(content:)
        #   @param content [String] The assistant's generated response based on the input message and context.
      end
    end
  end
end
