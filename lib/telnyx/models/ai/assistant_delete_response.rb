# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#delete
      class AssistantDeleteResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute deleted
        #
        #   @return [Boolean]
        required :deleted, Telnyx::Internal::Type::Boolean

        # @!attribute object
        #
        #   @return [String]
        required :object, String

        # @!method initialize(id:, deleted:, object:)
        #   Aligns with the OpenAI API:
        #   https://platform.openai.com/docs/api-reference/assistants/deleteAssistant
        #
        #   @param id [String]
        #   @param deleted [Boolean]
        #   @param object [String]
      end
    end
  end
end
