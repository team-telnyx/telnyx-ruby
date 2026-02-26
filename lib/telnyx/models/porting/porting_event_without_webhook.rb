# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventWithoutWebhook < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventWithoutWebhook::EventType }

        # @!attribute payload
        #
        #   @return [nil]
        optional :payload, NilClass

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus }

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
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::EventType] Identifies the event type
        #
        #   @param payload [nil]
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventWithoutWebhook::PayloadStatus] The status of the payload generation.
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
        # @see Telnyx::Models::Porting::PortingEventWithoutWebhook#event_type
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

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Porting::PortingEventWithoutWebhook#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventWithoutWebhook = Porting::PortingEventWithoutWebhook
  end
end
