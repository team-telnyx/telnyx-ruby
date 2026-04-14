# frozen_string_literal: true

module Telnyx
  module Models
    class CallDeepfakeDetectionErrorWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallDeepfakeDetectionErrorWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data]

      # @see Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallDeepfakeDetectionErrorWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallDeepfakeDetectionErrorWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_DEEPFAKE_DETECTION_ERROR = :"call.deepfake_detection.error"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data#payload
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
          optional :client_state, String, nil?: true

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute error_message
          #   The error that occurred. 'detection_timeout' = no DFD response received,
          #   'rtp_timeout' = no RTP audio received, 'dfd_connection_error'/'dfd_stream_error'
          #   = service connectivity issues.
          #
          #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload::ErrorMessage, nil]
          optional :error_message,
                   enum: -> { Telnyx::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload::ErrorMessage }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, error_message: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload} for more
          #   details.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String, nil] State received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param error_message [Symbol, Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload::ErrorMessage] The error that occurred. 'detection_timeout' = no DFD response received, 'rtp_ti

          # The error that occurred. 'detection_timeout' = no DFD response received,
          # 'rtp_timeout' = no RTP audio received, 'dfd_connection_error'/'dfd_stream_error'
          # = service connectivity issues.
          #
          # @see Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data::Payload#error_message
          module ErrorMessage
            extend Telnyx::Internal::Type::Enum

            DETECTION_TIMEOUT = :detection_timeout
            RTP_TIMEOUT = :rtp_timeout
            DFD_CONNECTION_ERROR = :dfd_connection_error
            DFD_STREAM_ERROR = :dfd_stream_error

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallDeepfakeDetectionErrorWebhookEvent::Data#record_type
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
