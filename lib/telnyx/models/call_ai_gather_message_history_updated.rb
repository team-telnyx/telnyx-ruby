# frozen_string_literal: true

module Telnyx
  module Models
    class CallAIGatherMessageHistoryUpdated < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallAIGatherMessageHistoryUpdated::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload, nil]
      optional :payload, -> { Telnyx::CallAIGatherMessageHistoryUpdated::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallAIGatherMessageHistoryUpdated::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallAIGatherMessageHistoryUpdated#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_AI_GATHER_MESSAGE_HISTORY_UPDATED = :"call.ai_gather.message_history_updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallAIGatherMessageHistoryUpdated#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Call ID used to issue commands via Call Control API.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   ID that is unique to the call session and can be used to correlate webhook
        #   events. Call session is a group of related call legs that logically belong to
        #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_id
        #   Telnyx connection ID used in the call.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute from
        #   Number or SIP URI placing the call.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute message_history
        #   The history of the messages exchanged during the AI gather
        #
        #   @return [Array<Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory>, nil]
        optional :message_history,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory] }

        # @!attribute to
        #   Destination number or SIP URI of the call.
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, from: nil, message_history: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload} for more details.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] Telnyx connection ID used in the call.
        #
        #   @param from [String] Number or SIP URI placing the call.
        #
        #   @param message_history [Array<Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory>] The history of the messages exchanged during the AI gather
        #
        #   @param to [String] Destination number or SIP URI of the call.

        class MessageHistory < Telnyx::Internal::Type::BaseModel
          # @!attribute content
          #   The content of the message
          #
          #   @return [String, nil]
          optional :content, String

          # @!attribute role
          #   The role of the message sender
          #
          #   @return [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory::Role, nil]
          optional :role, enum: -> { Telnyx::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory::Role }

          # @!method initialize(content: nil, role: nil)
          #   @param content [String] The content of the message
          #
          #   @param role [Symbol, Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory::Role] The role of the message sender

          # The role of the message sender
          #
          # @see Telnyx::Models::CallAIGatherMessageHistoryUpdated::Payload::MessageHistory#role
          module Role
            extend Telnyx::Internal::Type::Enum

            ASSISTANT = :assistant
            USER = :user

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallAIGatherMessageHistoryUpdated#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
