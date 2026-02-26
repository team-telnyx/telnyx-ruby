# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventDeletedPayload < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod] }

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventDeletedPayload::EventType }

        # @!attribute payload
        #
        #   @return [Telnyx::Models::Porting::PortingEventDeletedPayload::Payload, nil]
        optional :payload, -> { Telnyx::Porting::PortingEventDeletedPayload::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus }

        # @!attribute porting_order_id
        #   Identifies the porting order associated with the event.
        #
        #   @return [String, nil]
        optional :porting_order_id, String

        # @!method initialize(id: nil, available_notification_methods: nil, event_type: nil, payload: nil, payload_status: nil, porting_order_id: nil)
        #   @param id [String] Uniquely identifies the event.
        #
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Porting::PortingEventDeletedPayload::Payload]
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventDeletedPayload::PayloadStatus] The status of the payload generation.
        #
        #   @param porting_order_id [String] Identifies the porting order associated with the event.

        module AvailableNotificationMethod
          extend Telnyx::Internal::Type::Enum

          EMAIL = :email
          WEBHOOK = :webhook
          WEBHOOK_V1 = :webhook_v1

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the event type
        #
        # @see Telnyx::Models::Porting::PortingEventDeletedPayload#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTING_ORDER_DELETED = :"porting_order.deleted"
          PORTING_ORDER_LOA_UPDATED = :"porting_order.loa_updated"
          PORTING_ORDER_MESSAGING_CHANGED = :"porting_order.messaging_changed"
          PORTING_ORDER_STATUS_CHANGED = :"porting_order.status_changed"
          PORTING_ORDER_SHARING_TOKEN_EXPIRED = :"porting_order.sharing_token_expired"
          PORTING_ORDER_NEW_COMMENT = :"porting_order.new_comment"
          PORTING_ORDER_SPLIT = :"porting_order.split"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Porting::PortingEventDeletedPayload#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the porting order that was deleted.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute customer_reference
          #   Identifies the customer reference associated with the porting order.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute deleted_at
          #   ISO 8601 formatted date indicating when the porting order was deleted.
          #
          #   @return [Time, nil]
          optional :deleted_at, Time

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id: nil, created_at: nil, customer_reference: nil, deleted_at: nil, record_type: nil, updated_at: nil)
          #   @param id [String] Identifies the porting order that was deleted.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param customer_reference [String] Identifies the customer reference associated with the porting order.
          #
          #   @param deleted_at [Time] ISO 8601 formatted date indicating when the porting order was deleted.
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
        end

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Porting::PortingEventDeletedPayload#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventDeletedPayload = Porting::PortingEventDeletedPayload
  end
end
