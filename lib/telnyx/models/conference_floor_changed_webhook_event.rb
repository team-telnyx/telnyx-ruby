# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceFloorChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::ConferenceFloorChangedWebhookEvent::EventType, nil]
      optional :event_type, enum: -> { Telnyx::ConferenceFloorChangedWebhookEvent::EventType }

      # @!attribute payload
      #
      #   @return [Telnyx::Models::ConferenceFloorChangedWebhookEvent::Payload, nil]
      optional :payload, -> { Telnyx::ConferenceFloorChangedWebhookEvent::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::ConferenceFloorChangedWebhookEvent::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::ConferenceFloorChangedWebhookEvent::RecordType }

      # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::ConferenceFloorChangedWebhookEvent::EventType] The type of event being delivered.
      #
      #   @param payload [Telnyx::Models::ConferenceFloorChangedWebhookEvent::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::ConferenceFloorChangedWebhookEvent::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::ConferenceFloorChangedWebhookEvent#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CONFERENCE_FLOOR_CHANGED = :"conference.floor.changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::ConferenceFloorChangedWebhookEvent#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Call Control ID of the new speaker.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   Call Leg ID of the new speaker.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   Call Session ID of the new speaker.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute conference_id
        #   Conference ID that had a speaker change event.
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

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, conference_id: nil, connection_id: nil, occurred_at: nil)
        #   @param call_control_id [String] Call Control ID of the new speaker.
        #
        #   @param call_leg_id [String] Call Leg ID of the new speaker.
        #
        #   @param call_session_id [String] Call Session ID of the new speaker.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param conference_id [String] Conference ID that had a speaker change event.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::ConferenceFloorChangedWebhookEvent#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
