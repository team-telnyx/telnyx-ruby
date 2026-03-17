# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#join_ai_assistant
      class ActionJoinAIAssistantParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute conversation_id
        #   The ID of the AI assistant conversation to join.
        #
        #   @return [String]
        required :conversation_id, String

        # @!attribute participant
        #
        #   @return [Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant]
        required :participant, -> { Telnyx::Calls::ActionJoinAIAssistantParams::Participant }

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!method initialize(call_control_id:, conversation_id:, participant:, client_state: nil, command_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionJoinAIAssistantParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param conversation_id [String] The ID of the AI assistant conversation to join.
        #
        #   @param participant [Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant]
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Participant < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The call_control_id of the participant to add to the conversation.
          #
          #   @return [String]
          required :id, String

          # @!attribute role
          #   The role of the participant in the conversation.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant::Role]
          required :role, enum: -> { Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role }

          # @!attribute name
          #   Display name for the participant.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute on_hangup
          #   Determines what happens to the conversation when this participant hangs up.
          #
          #   @return [Symbol, Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant::OnHangup, nil]
          optional :on_hangup, enum: -> { Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup }

          # @!method initialize(id:, role:, name: nil, on_hangup: nil)
          #   @param id [String] The call_control_id of the participant to add to the conversation.
          #
          #   @param role [Symbol, Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant::Role] The role of the participant in the conversation.
          #
          #   @param name [String] Display name for the participant.
          #
          #   @param on_hangup [Symbol, Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant::OnHangup] Determines what happens to the conversation when this participant hangs up.

          # The role of the participant in the conversation.
          #
          # @see Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant#role
          module Role
            extend Telnyx::Internal::Type::Enum

            USER = :user

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Determines what happens to the conversation when this participant hangs up.
          #
          # @see Telnyx::Models::Calls::ActionJoinAIAssistantParams::Participant#on_hangup
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
end
