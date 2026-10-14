# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationStartFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   The AI assistant requested for the call could not be started, so no conversation
      #   was created. No `call.conversation.created` or `call.conversation.ended` is sent
      #   for this attempt.
      #
      #   @return [Telnyx::Models::CallConversationStartFailedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallConversationStartFailedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallConversationStartFailedWebhookEvent} for more details.
      #
      #   @param data [Telnyx::Models::CallConversationStartFailedWebhookEvent::Data] The AI assistant requested for the call could not be started, so no conversation

      # @see Telnyx::Models::CallConversationStartFailedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   Timestamp when the event was created in the system.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallConversationStartFailedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallConversationStartFailedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, created_at: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   The AI assistant requested for the call could not be started, so no conversation
        #   was created. No `call.conversation.created` or `call.conversation.ended` is sent
        #   for this attempt.
        #
        #   @param id [String] Unique identifier for the event.
        #
        #   @param created_at [Time] Timestamp when the event was created in the system.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallConversationStartFailedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_CONVERSATION_START_FAILED = :"call.conversation.start_failed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallConversationStartFailedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute assistant_id
          #   Identifier of the AI assistant that failed to start.
          #
          #   @return [String, nil]
          optional :assistant_id, String

          # @!attribute call_control_id
          #   Call ID used to issue commands via Call Control API.
          #
          #   @return [String, nil]
          optional :call_control_id, String

          # @!attribute call_leg_id
          #   ID that is unique to the call leg.
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_session_id
          #   ID that is unique to the call session (group of related call legs).
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute calling_party_type
          #   The type of calling party connection.
          #
          #   @return [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType, nil]
          optional :calling_party_type,
                   enum: -> { Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType }

          # @!attribute client_state
          #   Base64-encoded state received from a command.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute from
          #   The caller's number or identifier.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute reason
          #   Why the conversation could not be started. `invalid_request`: the assistant
          #   request was rejected, for example because the assistant ID does not exist.
          #   `service_error`: the assistant could not be started because of an error on the
          #   Telnyx side.
          #
          #   @return [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload::Reason, nil]
          optional :reason, enum: -> { Telnyx::CallConversationStartFailedWebhookEvent::Data::Payload::Reason }

          # @!attribute to
          #   The callee's number or SIP address.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(assistant_id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, from: nil, reason: nil, to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload} for
          #   more details.
          #
          #   @param assistant_id [String] Identifier of the AI assistant that failed to start.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call leg.
          #
          #   @param call_session_id [String] ID that is unique to the call session (group of related call legs).
          #
          #   @param calling_party_type [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload::CallingPartyType] The type of calling party connection.
          #
          #   @param client_state [String] Base64-encoded state received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param from [String] The caller's number or identifier.
          #
          #   @param reason [Symbol, Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload::Reason] Why the conversation could not be started. `invalid_request`: the assistant requ
          #
          #   @param to [String] The callee's number or SIP address.

          # The type of calling party connection.
          #
          # @see Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload#calling_party_type
          module CallingPartyType
            extend Telnyx::Internal::Type::Enum

            PSTN = :pstn
            SIP = :sip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Why the conversation could not be started. `invalid_request`: the assistant
          # request was rejected, for example because the assistant ID does not exist.
          # `service_error`: the assistant could not be started because of an error on the
          # Telnyx side.
          #
          # @see Telnyx::Models::CallConversationStartFailedWebhookEvent::Data::Payload#reason
          module Reason
            extend Telnyx::Internal::Type::Enum

            INVALID_REQUEST = :invalid_request
            SERVICE_ERROR = :service_error

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallConversationStartFailedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
