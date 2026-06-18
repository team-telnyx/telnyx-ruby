# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class AIAssistantJoinParticipant < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The call_control_id of the participant to add to the conversation.
        #
        #   @return [String]
        required :id, String

        # @!attribute role
        #   The role of the participant in the conversation.
        #
        #   @return [Symbol, Telnyx::Models::Calls::AIAssistantJoinParticipant::Role]
        required :role, enum: -> { Telnyx::Calls::AIAssistantJoinParticipant::Role }

        # @!attribute name
        #   Display name for the participant.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute on_hangup
        #   Determines what happens to the conversation when this participant hangs up.
        #
        #   @return [Symbol, Telnyx::Models::Calls::AIAssistantJoinParticipant::OnHangup, nil]
        optional :on_hangup, enum: -> { Telnyx::Calls::AIAssistantJoinParticipant::OnHangup }

        # @!method initialize(id:, role:, name: nil, on_hangup: nil)
        #   @param id [String] The call_control_id of the participant to add to the conversation.
        #
        #   @param role [Symbol, Telnyx::Models::Calls::AIAssistantJoinParticipant::Role] The role of the participant in the conversation.
        #
        #   @param name [String] Display name for the participant.
        #
        #   @param on_hangup [Symbol, Telnyx::Models::Calls::AIAssistantJoinParticipant::OnHangup] Determines what happens to the conversation when this participant hangs up.

        # The role of the participant in the conversation.
        #
        # @see Telnyx::Models::Calls::AIAssistantJoinParticipant#role
        module Role
          extend Telnyx::Internal::Type::Enum

          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Determines what happens to the conversation when this participant hangs up.
        #
        # @see Telnyx::Models::Calls::AIAssistantJoinParticipant#on_hangup
        module OnHangup
          extend Telnyx::Internal::Type::Enum

          CONTINUE_CONVERSATION = :continue_conversation
          END_CONVERSATION = :end_conversation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
