# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      class WebhookPortoutFocDateChanged < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType }

        # @!attribute payload
        #   The webhook payload for the portout.foc_date_changed event
        #
        #   @return [Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::Payload, nil]
        optional :payload, -> { Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus }

        # @!attribute portout_id
        #   Identifies the port-out order associated with the event.
        #
        #   @return [String, nil]
        optional :portout_id, String

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

        # @!method initialize(id: nil, available_notification_methods: nil, created_at: nil, event_type: nil, payload: nil, payload_status: nil, portout_id: nil, record_type: nil, updated_at: nil)
        #   @param id [String] Uniquely identifies the event.
        #
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::Payload] The webhook payload for the portout.foc_date_changed event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Portouts::WebhookPortoutFocDateChanged::PayloadStatus] The status of the payload generation.
        #
        #   @param portout_id [String] Identifies the port-out order associated with the event.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        module AvailableNotificationMethod
          extend Telnyx::Internal::Type::Enum

          EMAIL = :email
          WEBHOOK = :webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the event type
        #
        # @see Telnyx::Models::Portouts::WebhookPortoutFocDateChanged#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTOUT_STATUS_CHANGED = :"portout.status_changed"
          PORTOUT_FOC_DATE_CHANGED = :"portout.foc_date_changed"
          PORTOUT_NEW_COMMENT = :"portout.new_comment"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Portouts::WebhookPortoutFocDateChanged#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the port-out order that have the FOC date changed.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute foc_date
          #   ISO 8601 formatted date indicating the new FOC date.
          #
          #   @return [Time, nil]
          optional :foc_date, Time

          # @!attribute user_id
          #   Identifies the organization that port-out order belongs to.
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(id: nil, foc_date: nil, user_id: nil)
          #   The webhook payload for the portout.foc_date_changed event
          #
          #   @param id [String] Identifies the port-out order that have the FOC date changed.
          #
          #   @param foc_date [Time] ISO 8601 formatted date indicating the new FOC date.
          #
          #   @param user_id [String] Identifies the organization that port-out order belongs to.
        end

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Portouts::WebhookPortoutFocDateChanged#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
