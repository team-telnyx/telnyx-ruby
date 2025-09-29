# frozen_string_literal: true

module Telnyx
  module Models
    class CallAnsweredWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAnsweredWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallAnsweredWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAnsweredWebhookEvent::Data]

      # @see Telnyx::Models::CallAnsweredWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallAnsweredWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallAnsweredWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallAnsweredWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallAnsweredWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_ANSWERED = :"call.answered"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallAnsweredWebhookEvent::Data#payload
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
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute custom_headers
          #   Custom headers set on answer command
          #
          #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
          optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

          # @!attribute from
          #   Number or SIP URI placing the call.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute sip_headers
          #   User-to-User and Diversion headers from sip invite.
          #
          #   @return [Array<Telnyx::Models::SipHeader>, nil]
          optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

          # @!attribute start_time
          #   ISO 8601 datetime of when the call started.
          #
          #   @return [Time, nil]
          optional :start_time, Time

          # @!attribute state
          #   State received from a command.
          #
          #   @return [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload::State, nil]
          optional :state, enum: -> { Telnyx::CallAnsweredWebhookEvent::Data::Payload::State }

          # @!attribute tags
          #   Array of tags associated to number.
          #
          #   @return [Array<String>, nil]
          optional :tags, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute to
          #   Destination number or SIP URI of the call.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, custom_headers: nil, from: nil, sip_headers: nil, start_time: nil, state: nil, tags: nil, to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload} for more details.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers set on answer command
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param sip_headers [Array<Telnyx::Models::SipHeader>] User-to-User and Diversion headers from sip invite.
          #
          #   @param start_time [Time] ISO 8601 datetime of when the call started.
          #
          #   @param state [Symbol, Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload::State] State received from a command.
          #
          #   @param tags [Array<String>] Array of tags associated to number.
          #
          #   @param to [String] Destination number or SIP URI of the call.

          # State received from a command.
          #
          # @see Telnyx::Models::CallAnsweredWebhookEvent::Data::Payload#state
          module State
            extend Telnyx::Internal::Type::Enum

            ANSWERED = :answered

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallAnsweredWebhookEvent::Data#record_type
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
