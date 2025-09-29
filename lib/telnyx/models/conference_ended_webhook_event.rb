# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceEndedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::ConferenceEndedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceEndedWebhookEvent::Data]

      # @see Telnyx::Models::ConferenceEndedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::ConferenceEndedWebhookEvent::Data::EventType }

        # @!attribute payload
        #
        #   @return [Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::ConferenceEndedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::ConferenceEndedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param payload [Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::ConferenceEndedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CONFERENCE_ENDED = :"conference.ended"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::ConferenceEndedWebhookEvent::Data#payload
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

          # @!attribute conference_id
          #   Conference ID that the participant joined.
          #
          #   @return [String, nil]
          optional :conference_id, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute occurred_at
          #   ISO 8601 datetime of when the event occurred.
          #
          #   @return [Time, nil]
          optional :occurred_at, Time

          # @!attribute reason
          #   Reason the conference ended.
          #
          #   @return [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload::Reason, nil]
          optional :reason, enum: -> { Telnyx::ConferenceEndedWebhookEvent::Data::Payload::Reason }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, conference_id: nil, connection_id: nil, occurred_at: nil, reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload} for more details.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param conference_id [String] Conference ID that the participant joined.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
          #
          #   @param reason [Symbol, Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload::Reason] Reason the conference ended.

          # Reason the conference ended.
          #
          # @see Telnyx::Models::ConferenceEndedWebhookEvent::Data::Payload#reason
          module Reason
            extend Telnyx::Internal::Type::Enum

            ALL_LEFT = :all_left
            HOST_LEFT = :host_left
            TIME_EXCEEDED = :time_exceeded

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::ConferenceEndedWebhookEvent::Data#record_type
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
