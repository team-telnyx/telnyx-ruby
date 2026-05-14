# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_conversation_relay
      class ActionStartConversationRelayResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data]

        # @see Telnyx::Models::Calls::ActionStartConversationRelayResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute conversation_relay_id
          #   The ID of the Conversation Relay session created by the command.
          #
          #   @return [String, nil]
          optional :conversation_relay_id, String

          # @!attribute result
          #
          #   @return [String, nil]
          optional :result, String

          # @!method initialize(conversation_relay_id: nil, result: nil)
          #   @param conversation_relay_id [String] The ID of the Conversation Relay session created by the command.
          #
          #   @param result [String]
        end
      end
    end
  end
end
