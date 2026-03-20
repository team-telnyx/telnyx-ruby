# frozen_string_literal: true

module Telnyx
  module Models
    class CallCostWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallCostWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallCostWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallCostWebhookEvent::Data]

      # @see Telnyx::Models::CallCostWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallCostWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallCostWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallCostWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallCostWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Unique identifier of the event.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallCostWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallCostWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_COST = :"call.cost"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallCostWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute billed_duration_secs
          #   The longest billed duration across all cost parts, in seconds.
          #
          #   @return [Integer, nil]
          optional :billed_duration_secs, Integer, nil?: true

          # @!attribute billing_group_id
          #   Identifies the billing group associated with the call.
          #
          #   @return [String, nil]
          optional :billing_group_id, String, nil?: true

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
          #   State received from a command. Base64-encoded.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute cost_parts
          #   Breakdown of costs by call part.
          #
          #   @return [Array<Telnyx::Models::CallCostWebhookEvent::Data::Payload::CostPart>, nil]
          optional :cost_parts,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallCostWebhookEvent::Data::Payload::CostPart] }

          # @!attribute occurred_at
          #   ISO 8601 datetime of when the event occurred.
          #
          #   @return [Time, nil]
          optional :occurred_at, Time

          # @!attribute status
          #   The status of the cost calculation (`success` or `error`).
          #
          #   @return [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::Payload::Status, nil]
          optional :status, enum: -> { Telnyx::CallCostWebhookEvent::Data::Payload::Status }

          # @!attribute total_cost
          #   The total cost of the call.
          #
          #   @return [String, nil]
          optional :total_cost, String, nil?: true

          # @!method initialize(billed_duration_secs: nil, billing_group_id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, cost_parts: nil, occurred_at: nil, status: nil, total_cost: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallCostWebhookEvent::Data::Payload} for more details.
          #
          #   @param billed_duration_secs [Integer, nil] The longest billed duration across all cost parts, in seconds.
          #
          #   @param billing_group_id [String, nil] Identifies the billing group associated with the call.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String] State received from a command. Base64-encoded.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param cost_parts [Array<Telnyx::Models::CallCostWebhookEvent::Data::Payload::CostPart>] Breakdown of costs by call part.
          #
          #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
          #
          #   @param status [Symbol, Telnyx::Models::CallCostWebhookEvent::Data::Payload::Status] The status of the cost calculation (`success` or `error`).
          #
          #   @param total_cost [String, nil] The total cost of the call.

          class CostPart < Telnyx::Internal::Type::BaseModel
            # @!attribute billed_duration_secs
            #   The billed duration in seconds for this part of the call.
            #
            #   @return [Integer, nil]
            optional :billed_duration_secs, Integer

            # @!attribute call_part
            #   The product component this cost applies to. Values are determined by the billing
            #   system (e.g. sip-trunking, call-control, call-recording). Not a fixed set — new
            #   values may appear as products evolve.
            #
            #   @return [String, nil]
            optional :call_part, String

            # @!attribute cost
            #   The cost for this part of the call.
            #
            #   @return [String, nil]
            optional :cost, String

            # @!attribute currency
            #   The currency of the cost.
            #
            #   @return [String, nil]
            optional :currency, String

            # @!attribute rate
            #   The per-minute rate applied.
            #
            #   @return [String, nil]
            optional :rate, String

            # @!method initialize(billed_duration_secs: nil, call_part: nil, cost: nil, currency: nil, rate: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::CallCostWebhookEvent::Data::Payload::CostPart} for more
            #   details.
            #
            #   @param billed_duration_secs [Integer] The billed duration in seconds for this part of the call.
            #
            #   @param call_part [String] The product component this cost applies to. Values are determined by the billing
            #
            #   @param cost [String] The cost for this part of the call.
            #
            #   @param currency [String] The currency of the cost.
            #
            #   @param rate [String] The per-minute rate applied.
          end

          # The status of the cost calculation (`success` or `error`).
          #
          # @see Telnyx::Models::CallCostWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SUCCESS = :success
            ERROR = :error

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallCostWebhookEvent::Data#record_type
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
