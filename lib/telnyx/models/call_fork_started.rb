# frozen_string_literal: true

module Telnyx
  module Models
    class CallForkStarted < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallForkStarted::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallForkStarted::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallForkStarted::Payload, nil]
      optional :payload, -> { Telnyx::CallForkStarted::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallForkStarted::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallForkStarted::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallForkStarted::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallForkStarted::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallForkStarted::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallForkStarted#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_FORK_STARTED = :"call.fork.started"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallForkStarted#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Unique ID for controlling the call.
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

        # @!attribute stream_type
        #   Type of media streamed. It can be either 'raw' or 'decrypted'.
        #
        #   @return [Symbol, Telnyx::Models::CallForkStarted::Payload::StreamType, nil]
        optional :stream_type, enum: -> { Telnyx::CallForkStarted::Payload::StreamType }

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, stream_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallForkStarted::Payload} for more details.
        #
        #   @param call_control_id [String] Unique ID for controlling the call.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param stream_type [Symbol, Telnyx::Models::CallForkStarted::Payload::StreamType] Type of media streamed. It can be either 'raw' or 'decrypted'.

        # Type of media streamed. It can be either 'raw' or 'decrypted'.
        #
        # @see Telnyx::Models::CallForkStarted::Payload#stream_type
        module StreamType
          extend Telnyx::Internal::Type::Enum

          DECRYPTED = :decrypted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallForkStarted#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
