# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Events#list
      class EventListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::EventListResponse::Data>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::EventListResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Portouts::EventListResponse::Data>]
        #   @param meta [Telnyx::Models::PaginationMeta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Portouts::EventListResponse::Data::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Portouts::EventListResponse::Data::AvailableNotificationMethod] }

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::EventType, nil]
          optional :event_type, enum: -> { Telnyx::Models::Portouts::EventListResponse::Data::EventType }

          # @!attribute payload
          #   The webhook payload for the portout.status_changed event
          #
          #   @return [Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutNewCommentPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutFocDateChangedPayload, nil]
          optional :payload, union: -> { Telnyx::Models::Portouts::EventListResponse::Data::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::PayloadStatus, nil]
          optional :payload_status, enum: -> { Telnyx::Models::Portouts::EventListResponse::Data::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Portouts::EventListResponse::Data::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutNewCommentPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutFocDateChangedPayload] The webhook payload for the portout.status_changed event
          #
          #   @param payload_status [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Portouts::EventListResponse::Data#event_type
          module EventType
            extend Telnyx::Internal::Type::Enum

            PORTOUT_STATUS_CHANGED = :"portout.status_changed"
            PORTOUT_FOC_DATE_CHANGED = :"portout.foc_date_changed"
            PORTOUT_NEW_COMMENT = :"portout.new_comment"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The webhook payload for the portout.status_changed event
          #
          # @see Telnyx::Models::Portouts::EventListResponse::Data#payload
          module Payload
            extend Telnyx::Internal::Type::Union

            # The webhook payload for the portout.status_changed event
            variant -> { Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload }

            # The webhook payload for the portout.new_comment event
            variant -> { Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutNewCommentPayload }

            # The webhook payload for the portout.foc_date_changed event
            variant -> { Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutFocDateChangedPayload }

            class WebhookPortoutStatusChangedPayload < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the port out that was moved.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute attempted_pin
              #   The PIN that was attempted to be used to authorize the port out.
              #
              #   @return [String, nil]
              optional :attempted_pin, String

              # @!attribute carrier_name
              #   Carrier the number will be ported out to
              #
              #   @return [String, nil]
              optional :carrier_name, String

              # @!attribute phone_numbers
              #   Phone numbers associated with this port-out order
              #
              #   @return [Array<String>, nil]
              optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute rejection_reason
              #   The reason why the order is being rejected by the user. If the order is
              #   authorized, this field can be left null
              #
              #   @return [String, nil]
              optional :rejection_reason, String

              # @!attribute spid
              #   The new carrier SPID.
              #
              #   @return [String, nil]
              optional :spid, String

              # @!attribute status
              #   The new status of the port out.
              #
              #   @return [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status, nil]
              optional :status,
                       enum: -> { Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status }

              # @!attribute subscriber_name
              #   The name of the port-out's end user.
              #
              #   @return [String, nil]
              optional :subscriber_name, String

              # @!attribute user_id
              #   Identifies the user that the port-out order belongs to.
              #
              #   @return [String, nil]
              optional :user_id, String

              # @!method initialize(id: nil, attempted_pin: nil, carrier_name: nil, phone_numbers: nil, rejection_reason: nil, spid: nil, status: nil, subscriber_name: nil, user_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload}
              #   for more details.
              #
              #   The webhook payload for the portout.status_changed event
              #
              #   @param id [String] Identifies the port out that was moved.
              #
              #   @param attempted_pin [String] The PIN that was attempted to be used to authorize the port out.
              #
              #   @param carrier_name [String] Carrier the number will be ported out to
              #
              #   @param phone_numbers [Array<String>] Phone numbers associated with this port-out order
              #
              #   @param rejection_reason [String] The reason why the order is being rejected by the user. If the order is authoriz
              #
              #   @param spid [String] The new carrier SPID.
              #
              #   @param status [Symbol, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status] The new status of the port out.
              #
              #   @param subscriber_name [String] The name of the port-out's end user.
              #
              #   @param user_id [String] Identifies the user that the port-out order belongs to.

              # The new status of the port out.
              #
              # @see Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload#status
              module Status
                extend Telnyx::Internal::Type::Enum

                PENDING = :pending
                AUTHORIZED = :authorized
                PORTED = :ported
                REJECTED = :rejected
                REJECTED_PENDING = :"rejected-pending"
                CANCELED = :canceled

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class WebhookPortoutNewCommentPayload < Telnyx::Internal::Type::BaseModel
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

            class WebhookPortoutFocDateChangedPayload < Telnyx::Internal::Type::BaseModel
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

            # @!method self.variants
            #   @return [Array(Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutStatusChangedPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutNewCommentPayload, Telnyx::Models::Portouts::EventListResponse::Data::Payload::WebhookPortoutFocDateChangedPayload)]
          end

          # The status of the payload generation.
          #
          # @see Telnyx::Models::Portouts::EventListResponse::Data#payload_status
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
end
