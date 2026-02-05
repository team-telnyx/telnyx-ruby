# frozen_string_literal: true

module Telnyx
  module Models
    class CallInitiated < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallInitiated::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallInitiated::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallInitiated::Payload, nil]
      optional :payload, -> { Telnyx::CallInitiated::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallInitiated::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallInitiated::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallInitiated::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallInitiated::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallInitiated::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallInitiated#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_INITIATED = :"call.initiated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallInitiated#payload
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

        # @!attribute call_screening_result
        #   Call screening result.
        #
        #   @return [String, nil]
        optional :call_screening_result, String

        # @!attribute call_session_id
        #   ID that is unique to the call session and can be used to correlate webhook
        #   events. Call session is a group of related call legs that logically belong to
        #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute caller_id_name
        #   Caller id.
        #
        #   @return [String, nil]
        optional :caller_id_name, String

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_codecs
        #   The list of comma-separated codecs enabled for the connection.
        #
        #   @return [String, nil]
        optional :connection_codecs, String

        # @!attribute connection_id
        #   Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute custom_headers
        #   Custom headers from sip invite
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute direction
        #   Whether the call is `incoming` or `outgoing`.
        #
        #   @return [Symbol, Telnyx::Models::CallInitiated::Payload::Direction, nil]
        optional :direction, enum: -> { Telnyx::CallInitiated::Payload::Direction }

        # @!attribute from
        #   Number or SIP URI placing the call.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute offered_codecs
        #   The list of comma-separated codecs offered by caller.
        #
        #   @return [String, nil]
        optional :offered_codecs, String

        # @!attribute shaken_stir_attestation
        #   SHAKEN/STIR attestation level.
        #
        #   @return [String, nil]
        optional :shaken_stir_attestation, String

        # @!attribute shaken_stir_validated
        #   Whether attestation was successfully validated or not.
        #
        #   @return [Boolean, nil]
        optional :shaken_stir_validated, Telnyx::Internal::Type::Boolean

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
        #   @return [Symbol, Telnyx::Models::CallInitiated::Payload::State, nil]
        optional :state, enum: -> { Telnyx::CallInitiated::Payload::State }

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

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_screening_result: nil, call_session_id: nil, caller_id_name: nil, client_state: nil, connection_codecs: nil, connection_id: nil, custom_headers: nil, direction: nil, from: nil, offered_codecs: nil, shaken_stir_attestation: nil, shaken_stir_validated: nil, sip_headers: nil, start_time: nil, state: nil, tags: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallInitiated::Payload} for more details.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_screening_result [String] Call screening result.
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param caller_id_name [String] Caller id.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_codecs [String] The list of comma-separated codecs enabled for the connection.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers from sip invite
        #
        #   @param direction [Symbol, Telnyx::Models::CallInitiated::Payload::Direction] Whether the call is `incoming` or `outgoing`.
        #
        #   @param from [String] Number or SIP URI placing the call.
        #
        #   @param offered_codecs [String] The list of comma-separated codecs offered by caller.
        #
        #   @param shaken_stir_attestation [String] SHAKEN/STIR attestation level.
        #
        #   @param shaken_stir_validated [Boolean] Whether attestation was successfully validated or not.
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] User-to-User and Diversion headers from sip invite.
        #
        #   @param start_time [Time] ISO 8601 datetime of when the call started.
        #
        #   @param state [Symbol, Telnyx::Models::CallInitiated::Payload::State] State received from a command.
        #
        #   @param tags [Array<String>] Array of tags associated to number.
        #
        #   @param to [String] Destination number or SIP URI of the call.

        # Whether the call is `incoming` or `outgoing`.
        #
        # @see Telnyx::Models::CallInitiated::Payload#direction
        module Direction
          extend Telnyx::Internal::Type::Enum

          INCOMING = :incoming
          OUTGOING = :outgoing

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # State received from a command.
        #
        # @see Telnyx::Models::CallInitiated::Payload#state
        module State
          extend Telnyx::Internal::Type::Enum

          PARKED = :parked
          BRIDGING = :bridging

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallInitiated#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
