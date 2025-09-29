# frozen_string_literal: true

module Telnyx
  module Models
    class CustomerServiceRecordStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Meta, nil]
      optional :meta, -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data]
      #   @param meta [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Meta]

      # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the callback event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of the callback event.
        #
        #   @return [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 formatted date indicating when the callback event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType, nil]
        optional :record_type,
                 enum: -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Uniquely identifies the callback event.
        #
        #   @param event_type [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType] The type of the callback event.
        #
        #   @param occurred_at [Time] ISO 8601 formatted date indicating when the callback event occurred.
        #
        #   @param payload [Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of the callback event.
        #
        # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CUSTOMER_SERVICE_RECORD_STATUS_CHANGED = :"customer_service_record.status_changed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the customer service record.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute phone_number
          #   The phone number of the customer service record.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #   The status of the customer service record
          #
          #   @return [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status, nil]
          optional :status,
                   enum: -> { Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status }

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating the last time where the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, phone_number: nil, status: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload}
          #   for more details.
          #
          #   @param id [String] Uniquely identifies the customer service record.
          #
          #   @param phone_number [String] The phone number of the customer service record.
          #
          #   @param status [Symbol, Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status] The status of the customer service record
          #
          #   @param updated_at [Time] ISO 8601 formatted date indicating the last time where the resource was updated.

          # The status of the customer service record
          #
          # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::CustomerServiceRecordStatusChangedWebhookEvent#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute attempt
        #   The number of times the callback webhook has been attempted.
        #
        #   @return [Integer, nil]
        optional :attempt, Integer

        # @!attribute delivered_to
        #   The URL that the callback webhook was delivered to.
        #
        #   @return [String, nil]
        optional :delivered_to, String

        # @!method initialize(attempt: nil, delivered_to: nil)
        #   @param attempt [Integer] The number of times the callback webhook has been attempted.
        #
        #   @param delivered_to [String] The URL that the callback webhook was delivered to.
      end
    end
  end
end
