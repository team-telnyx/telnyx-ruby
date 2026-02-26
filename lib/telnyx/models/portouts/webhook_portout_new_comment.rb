# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      class WebhookPortoutNewComment < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Portouts::WebhookPortoutNewComment::EventType }

        # @!attribute payload
        #   The webhook payload for the portout.new_comment event
        #
        #   @return [Telnyx::Models::Portouts::WebhookPortoutNewComment::Payload, nil]
        optional :payload, -> { Telnyx::Portouts::WebhookPortoutNewComment::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus }

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
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Portouts::WebhookPortoutNewComment::Payload] The webhook payload for the portout.new_comment event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Portouts::WebhookPortoutNewComment::PayloadStatus] The status of the payload generation.
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
        # @see Telnyx::Models::Portouts::WebhookPortoutNewComment#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTOUT_STATUS_CHANGED = :"portout.status_changed"
          PORTOUT_FOC_DATE_CHANGED = :"portout.foc_date_changed"
          PORTOUT_NEW_COMMENT = :"portout.new_comment"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Portouts::WebhookPortoutNewComment#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the comment that was added to the port-out order.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute comment
          #   The body of the comment.
          #
          #   @return [String, nil]
          optional :comment, String

          # @!attribute portout_id
          #   Identifies the port-out order that the comment was added to.
          #
          #   @return [String, nil]
          optional :portout_id, String

          # @!attribute user_id
          #   Identifies the user that added the comment.
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(id: nil, comment: nil, portout_id: nil, user_id: nil)
          #   The webhook payload for the portout.new_comment event
          #
          #   @param id [String] Identifies the comment that was added to the port-out order.
          #
          #   @param comment [String] The body of the comment.
          #
          #   @param portout_id [String] Identifies the port-out order that the comment was added to.
          #
          #   @param user_id [String] Identifies the user that added the comment.
        end

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Portouts::WebhookPortoutNewComment#payload_status
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
