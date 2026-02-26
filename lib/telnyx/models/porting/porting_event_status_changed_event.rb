# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventStatusChangedEvent < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventStatusChangedEvent::EventType }

        # @!attribute payload
        #   The webhook payload for the porting_order.status_changed event
        #
        #   @return [Telnyx::Models::Porting::PortingEventStatusChangedEvent::Payload, nil]
        optional :payload, -> { Telnyx::Porting::PortingEventStatusChangedEvent::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus }

        # @!attribute porting_order_id
        #   Identifies the porting order associated with the event.
        #
        #   @return [String, nil]
        optional :porting_order_id, String

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

        # @!method initialize(id: nil, available_notification_methods: nil, created_at: nil, event_type: nil, payload: nil, payload_status: nil, porting_order_id: nil, record_type: nil, updated_at: nil)
        #   @param id [String] Uniquely identifies the event.
        #
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Porting::PortingEventStatusChangedEvent::Payload] The webhook payload for the porting_order.status_changed event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventStatusChangedEvent::PayloadStatus] The status of the payload generation.
        #
        #   @param porting_order_id [String] Identifies the porting order associated with the event.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

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
        # @see Telnyx::Models::Porting::PortingEventStatusChangedEvent#event_type
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

        # @see Telnyx::Models::Porting::PortingEventStatusChangedEvent#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the porting order that was moved.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute customer_reference
          #   Identifies the customer reference associated with the porting order.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute status
          #   Porting order status
          #
          #   @return [Telnyx::Models::PortingOrderStatus, nil]
          optional :status, -> { Telnyx::PortingOrderStatus }

          # @!attribute support_key
          #   Identifies the support key associated with the porting order.
          #
          #   @return [String, nil]
          optional :support_key, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the porting order was moved.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute webhook_url
          #   The URL to send the webhook to.
          #
          #   @return [String, nil]
          optional :webhook_url, String

          # @!method initialize(id: nil, customer_reference: nil, status: nil, support_key: nil, updated_at: nil, webhook_url: nil)
          #   The webhook payload for the porting_order.status_changed event
          #
          #   @param id [String] Identifies the porting order that was moved.
          #
          #   @param customer_reference [String] Identifies the customer reference associated with the porting order.
          #
          #   @param status [Telnyx::Models::PortingOrderStatus] Porting order status
          #
          #   @param support_key [String] Identifies the support key associated with the porting order.
          #
          #   @param updated_at [Time] ISO 8601 formatted date indicating when the porting order was moved.
          #
          #   @param webhook_url [String] The URL to send the webhook to.
        end

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Porting::PortingEventStatusChangedEvent#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventStatusChangedEvent = Porting::PortingEventStatusChangedEvent
  end
end
