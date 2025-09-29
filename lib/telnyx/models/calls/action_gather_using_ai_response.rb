# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather_using_ai
      class ActionGatherUsingAIResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data]

        # @see Telnyx::Models::Calls::ActionGatherUsingAIResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute conversation_id
          #   The ID of the conversation created by the command.
          #
          #   @return [String, nil]
          optional :conversation_id, String

          # @!attribute result
          #
          #   @return [String, nil]
          optional :result, String

          # @!method initialize(conversation_id: nil, result: nil)
          #   @param conversation_id [String] The ID of the conversation created by the command.
          #
          #   @param result [String]
        end
      end
    end
  end
end
