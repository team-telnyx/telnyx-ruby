# frozen_string_literal: true

module Telnyx
  module Models
    class CallDeepfakeDetectionResultWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data]

      # @see Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_DEEPFAKE_DETECTION_RESULT = :"call.deepfake_detection.result"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data#payload
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

          # @!attribute consistency
          #   Percentage (0-100) indicating how consistently the model classified the audio
          #   across frames. High consistency (>90%) means confident classification
          #   throughout; low consistency suggests mixed signals. Null for silence_timeout.
          #
          #   @return [Float, nil]
          optional :consistency, Float, nil?: true

          # @!attribute result
          #   Detection outcome. 'real' = human voice, 'fake' = AI-generated voice,
          #   'silence_timeout' = no analyzable speech detected before timeout.
          #
          #   @return [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result, nil]
          optional :result, enum: -> { Telnyx::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result }

          # @!attribute score
          #   Probability that the audio is AI-generated, from 0.0 (likely real) to 1.0
          #   (likely deepfake). Based on the model's aggregated confidence across analyzed
          #   audio frames. Null for silence_timeout.
          #
          #   @return [Float, nil]
          optional :score, Float, nil?: true

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, consistency: nil, result: nil, score: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload} for
          #   more details.
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
          #   @param consistency [Float, nil] Percentage (0-100) indicating how consistently the model classified the audio ac
          #
          #   @param result [Symbol, Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload::Result] Detection outcome. 'real' = human voice, 'fake' = AI-generated voice, 'silence_t
          #
          #   @param score [Float, nil] Probability that the audio is AI-generated, from 0.0 (likely real) to 1.0 (likel

          # Detection outcome. 'real' = human voice, 'fake' = AI-generated voice,
          # 'silence_timeout' = no analyzable speech detected before timeout.
          #
          # @see Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data::Payload#result
          module Result
            extend Telnyx::Internal::Type::Enum

            REAL = :real
            FAKE = :fake
            SILENCE_TIMEOUT = :silence_timeout

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallDeepfakeDetectionResultWebhookEvent::Data#record_type
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
