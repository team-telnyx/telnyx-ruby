# frozen_string_literal: true

module Telnyx
  module Models
    class HostedNumberOrderEventWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data]

      # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered. Internal transfer events are only emitted for
        #   orders where the numbers are already active on another Telnyx account.
        #
        #   @return [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 formatted date indicating when the event was generated.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #   Payload delivered with every messaging*hosted_numbers_orders.\* event.
        #   `approval_deadline` and `decision` are meaningful only for
        #   `internal_transfer*\*` events.
        #
        #   @return [Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data} for more details.
        #
        #   @param id [String] Unique identifier for the event.
        #
        #   @param event_type [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::EventType] The type of event being delivered. Internal transfer events are only emitted for
        #
        #   @param occurred_at [Time] ISO 8601 formatted date indicating when the event was generated.
        #
        #   @param payload [Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload] Payload delivered with every messaging*hosted_numbers_orders.\* event.
        #   `approval*
        #
        #   @param record_type [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered. Internal transfer events are only emitted for
        # orders where the numbers are already active on another Telnyx account.
        #
        # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          MESSAGING_HOSTED_NUMBERS_ORDERS_CREATED = :"messaging_hosted_numbers_orders.created"
          MESSAGING_HOSTED_NUMBERS_ORDERS_UPDATED = :"messaging_hosted_numbers_orders.updated"
          MESSAGING_HOSTED_NUMBERS_ORDERS_DELETED = :"messaging_hosted_numbers_orders.deleted"
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_DETECTED =
            :"messaging_hosted_numbers_orders.internal_transfer_detected"
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_APPROVAL_REQUESTED =
            :"messaging_hosted_numbers_orders.internal_transfer_approval_requested"
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_APPROVED =
            :"messaging_hosted_numbers_orders.internal_transfer_approved"
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_REJECTED =
            :"messaging_hosted_numbers_orders.internal_transfer_rejected"
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_AUTO_APPROVED =
            :"messaging_hosted_numbers_orders.internal_transfer_auto_approved"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute approval_deadline
          #   Unix timestamp (seconds) by which the losing organization must respond before
          #   auto-approval. Populated on internal-transfer events once an approval window has
          #   been issued.
          #
          #   @return [Integer, nil]
          optional :approval_deadline, Integer, nil?: true

          # @!attribute decision
          #   Approval decision for the internal transfer. Defaults to `pending` for
          #   non-internal-transfer events.
          #
          #   @return [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision, nil]
          optional :decision, enum: -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision }

          # @!attribute numbers
          #
          #   @return [Array<Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Number>, nil]
          optional :numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number] }

          # @!attribute order_id
          #   The ID of the hosted number order.
          #
          #   @return [String, nil]
          optional :order_id, String

          # @!attribute order_status
          #   Current status of the order.
          #
          #   @return [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus, nil]
          optional :order_status,
                   enum: -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus }

          # @!attribute profile_id
          #   The messaging profile associated with the order.
          #
          #   @return [String, nil]
          optional :profile_id, String

          # @!attribute user_id
          #   The organization that owns the order.
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(approval_deadline: nil, decision: nil, numbers: nil, order_id: nil, order_status: nil, profile_id: nil, user_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload} for more
          #   details.
          #
          #   Payload delivered with every messaging*hosted_numbers_orders.\* event.
          #   `approval_deadline` and `decision` are meaningful only for
          #   `internal_transfer*\*` events.
          #
          #   @param approval_deadline [Integer, nil] Unix timestamp (seconds) by which the losing organization must respond before au
          #
          #   @param decision [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision] Approval decision for the internal transfer. Defaults to `pending` for non-inter
          #
          #   @param numbers [Array<Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Number>]
          #
          #   @param order_id [String] The ID of the hosted number order.
          #
          #   @param order_status [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus] Current status of the order.
          #
          #   @param profile_id [String] The messaging profile associated with the order.
          #
          #   @param user_id [String] The organization that owns the order.

          # Approval decision for the internal transfer. Defaults to `pending` for
          # non-internal-transfer events.
          #
          # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload#decision
          module Decision
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            APPROVED = :approved
            REJECTED = :rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Number < Telnyx::Internal::Type::BaseModel
            # @!attribute status
            #   Current status of this phone number within the order.
            #
            #   @return [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status, nil]
            optional :status, enum: -> { Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status }

            # @!attribute value
            #   Phone number in +E.164 format.
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(status: nil, value: nil)
            #   @param status [Symbol, Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status] Current status of this phone number within the order.
            #
            #   @param value [String] Phone number in +E.164 format.

            # Current status of this phone number within the order.
            #
            # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload::Number#status
            module Status
              extend Telnyx::Internal::Type::Enum

              DELETED = :deleted
              FAILED = :failed
              FAILED_ACTIVATION = :failed_activation
              FAILED_CARRIER_REJECTED = :failed_carrier_rejected
              FAILED_INELIGIBLE_CARRIER = :failed_ineligible_carrier
              FAILED_NUMBER_ALREADY_HOSTED = :failed_number_already_hosted
              FAILED_NUMBER_NOT_FOUND = :failed_number_not_found
              FAILED_OWNERSHIP_VERIFICATION = :failed_ownership_verification
              FAILED_TIMEOUT = :failed_timeout
              OWNERSHIP_SUCCESSFUL = :ownership_successful
              PENDING = :pending
              PROVISIONING = :provisioning
              SUCCESSFUL = :successful

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Current status of the order.
          #
          # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data::Payload#order_status
          module OrderStatus
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            PROVISIONING = :provisioning
            SUCCESSFUL = :successful
            FAILED = :failed
            DELETED = :deleted
            CARRIER_REJECTED = :carrier_rejected
            COMPLIANCE_REVIEW_FAILED = :compliance_review_failed
            INCOMPLETE_DOCUMENTATION = :incomplete_documentation
            INCORRECT_BILLING_INFORMATION = :incorrect_billing_information
            INELIGIBLE_CARRIER = :ineligible_carrier
            LOA_FILE_INVALID = :loa_file_invalid
            LOA_FILE_SUCCESSFUL = :loa_file_successful

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::HostedNumberOrderEventWebhookEvent::Data#record_type
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
