# frozen_string_literal: true

module Telnyx
  module Models
    class CallConversationCreatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A conversation has been created for the call. Use the conversation ID to
      #   correlate subsequent conversation events.
      #
      #   @return [Telnyx::Models::CallConversationCreatedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallConversationCreatedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallConversationCreatedWebhookEvent} for more details.
      #
      #   @param data [Telnyx::Models::CallConversationCreatedWebhookEvent::Data] A conversation has been created for the call. Use the conversation ID to correla

      # @see Telnyx::Models::CallConversationCreatedWebhookEvent#data
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
        #   @return [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallConversationCreatedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallConversationCreatedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallConversationCreatedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallConversationCreatedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, created_at: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   A conversation has been created for the call. Use the conversation ID to
        #   correlate subsequent conversation events.
        #
        #   @param id [String] Unique identifier for the event.
        #
        #   @param created_at [Time] Timestamp when the event was created in the system.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallConversationCreatedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallConversationCreatedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_CONVERSATION_CREATED = :"call.conversation.created"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallConversationCreatedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
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
          #   @return [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType, nil]
          optional :calling_party_type,
                   enum: -> { Telnyx::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType }

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

          # @!attribute conversation_id
          #   Unique identifier of the conversation created for this call.
          #
          #   @return [String, nil]
          optional :conversation_id, String

          # @!attribute from
          #   The caller's number or identifier.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute to
          #   The callee's number or SIP address.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, conversation_id: nil, from: nil, to: nil)
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call leg.
          #
          #   @param call_session_id [String] ID that is unique to the call session (group of related call legs).
          #
          #   @param calling_party_type [Symbol, Telnyx::Models::CallConversationCreatedWebhookEvent::Data::Payload::CallingPartyType] The type of calling party connection.
          #
          #   @param client_state [String] Base64-encoded state received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param conversation_id [String] Unique identifier of the conversation created for this call.
          #
          #   @param from [String] The caller's number or identifier.
          #
          #   @param to [String] The callee's number or SIP address.

          # The type of calling party connection.
          #
          # @see Telnyx::Models::CallConversationCreatedWebhookEvent::Data::Payload#calling_party_type
          module CallingPartyType
            extend Telnyx::Internal::Type::Enum

            PSTN = :pstn
            SIP = :sip

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallConversationCreatedWebhookEvent::Data#record_type
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
