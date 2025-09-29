# frozen_string_literal: true

module Telnyx
  module Models
    class CallMachinePremiumGreetingEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data]

      # @see Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_MACHINE_PREMIUM_GREETING_ENDED = :"call.machine.premium.greeting.ended"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data#payload
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

          # @!attribute from
          #   Number or SIP URI placing the call.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute result
          #   Premium Answering Machine Greeting Ended result.
          #
          #   @return [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload::Result, nil]
          optional :result, enum: -> { Telnyx::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload::Result }

          # @!attribute to
          #   Destination number or SIP URI of the call.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, from: nil, result: nil, to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload} for
          #   more details.
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
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param result [Symbol, Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload::Result] Premium Answering Machine Greeting Ended result.
          #
          #   @param to [String] Destination number or SIP URI of the call.

          # Premium Answering Machine Greeting Ended result.
          #
          # @see Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data::Payload#result
          module Result
            extend Telnyx::Internal::Type::Enum

            BEEP_DETECTED = :beep_detected
            NO_BEEP_DETECTED = :no_beep_detected

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallMachinePremiumGreetingEndedWebhookEvent::Data#record_type
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
