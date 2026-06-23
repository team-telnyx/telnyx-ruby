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
        #   @return [Telnyx::Models::Calls::AIAssistantJoinParticipant]
        required :participant, -> { Telnyx::Calls::AIAssistantJoinParticipant }

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
        #   @param participant [Telnyx::Models::Calls::AIAssistantJoinParticipant]
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
