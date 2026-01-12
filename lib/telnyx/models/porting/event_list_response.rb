# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Events#list
      module EventListResponse
        extend Telnyx::Internal::Type::Union

        discriminator :event_type

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload }

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload }

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent }

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent }

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent }

        variant -> { Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook }

        class PortingEventDeletedPayload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::AvailableNotificationMethod] }

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::EventType }

          # @!attribute payload
          #
          #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::Payload, nil]
          optional :payload, -> { Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::PayloadStatus }

          # @!attribute porting_order_id
          #   Identifies the porting order associated with the event.
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!method initialize(id: nil, available_notification_methods: nil, event_type: nil, payload: nil, payload_status: nil, porting_order_id: nil)
          #   @param id [String] Uniquely identifies the event.
          #
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::Payload]
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload#event_type
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

          # @see Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload#payload
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PortingEventMessagingChangedPayload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> do
                     Telnyx::Internal::Type::ArrayOf[
                       enum: Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::AvailableNotificationMethod
                     ]
                   end

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::EventType }

          # @!attribute payload
          #   The webhook payload for the porting_order.messaging_changed event
          #
          #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload, nil]
          optional :payload,
                   -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload] The webhook payload for the porting_order.messaging_changed event
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload#event_type
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

          # @see Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload#payload
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

            # @!attribute messaging
            #   The messaging portability status of the porting order.
            #
            #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging, nil]
            optional :messaging,
                     -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging }

            # @!attribute support_key
            #   Identifies the support key associated with the porting order.
            #
            #   @return [String, nil]
            optional :support_key, String

            # @!method initialize(id: nil, customer_reference: nil, messaging: nil, support_key: nil)
            #   The webhook payload for the porting_order.messaging_changed event
            #
            #   @param id [String] Identifies the porting order that was moved.
            #
            #   @param customer_reference [String] Identifies the customer reference associated with the porting order.
            #
            #   @param messaging [Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging] The messaging portability status of the porting order.
            #
            #   @param support_key [String] Identifies the support key associated with the porting order.

            # @see Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload#messaging
            class Messaging < Telnyx::Internal::Type::BaseModel
              # @!attribute enable_messaging
              #   Indicates whether Telnyx will port messaging capabilities from the losing
              #   carrier. If false, any messaging capabilities will stay with their current
              #   provider.
              #
              #   @return [Boolean, nil]
              optional :enable_messaging, Telnyx::Internal::Type::Boolean

              # @!attribute messaging_capable
              #   Indicates whether the porting order is messaging capable.
              #
              #   @return [Boolean, nil]
              optional :messaging_capable, Telnyx::Internal::Type::Boolean

              # @!attribute messaging_port_completed
              #   Indicates whether the messaging port is completed.
              #
              #   @return [Boolean, nil]
              optional :messaging_port_completed, Telnyx::Internal::Type::Boolean

              # @!attribute messaging_port_status
              #   Indicates the messaging port status of the porting order.
              #
              #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus, nil]
              optional :messaging_port_status,
                       enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus }

              # @!method initialize(enable_messaging: nil, messaging_capable: nil, messaging_port_completed: nil, messaging_port_status: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging}
              #   for more details.
              #
              #   The messaging portability status of the porting order.
              #
              #   @param enable_messaging [Boolean] Indicates whether Telnyx will port messaging capabilities from the losing carrie
              #
              #   @param messaging_capable [Boolean] Indicates whether the porting order is messaging capable.
              #
              #   @param messaging_port_completed [Boolean] Indicates whether the messaging port is completed.
              #
              #   @param messaging_port_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus] Indicates the messaging port status of the porting order.

              # Indicates the messaging port status of the porting order.
              #
              # @see Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload::Payload::Messaging#messaging_port_status
              module MessagingPortStatus
                extend Telnyx::Internal::Type::Enum

                NOT_APPLICABLE = :not_applicable
                PENDING = :pending
                ACTIVATING = :activating
                EXCEPTION = :exception
                CANCELED = :canceled
                PARTIAL_PORT_COMPLETE = :partial_port_complete
                PORTED = :ported

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # The status of the payload generation.
          #
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PortingEventStatusChangedEvent < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> do
                     Telnyx::Internal::Type::ArrayOf[
                       enum: Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::AvailableNotificationMethod
                     ]
                   end

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::EventType }

          # @!attribute payload
          #   The webhook payload for the porting_order.status_changed event
          #
          #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::Payload, nil]
          optional :payload,
                   -> { Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::Payload] The webhook payload for the porting_order.status_changed event
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent#event_type
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

          # @see Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent#payload
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PortingEventNewCommentEvent < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::AvailableNotificationMethod] }

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::EventType }

          # @!attribute payload
          #   The webhook payload for the porting_order.new_comment event
          #
          #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload, nil]
          optional :payload, -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload] The webhook payload for the porting_order.new_comment event
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent#event_type
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

          # @see Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent#payload
          class Payload < Telnyx::Internal::Type::BaseModel
            # @!attribute comment
            #   The comment that was added to the porting order.
            #
            #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment, nil]
            optional :comment,
                     -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment }

            # @!attribute porting_order_id
            #   Identifies the porting order that the comment was added to.
            #
            #   @return [String, nil]
            optional :porting_order_id, String

            # @!attribute support_key
            #   Identifies the support key associated with the porting order.
            #
            #   @return [String, nil]
            optional :support_key, String

            # @!method initialize(comment: nil, porting_order_id: nil, support_key: nil)
            #   The webhook payload for the porting_order.new_comment event
            #
            #   @param comment [Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment] The comment that was added to the porting order.
            #
            #   @param porting_order_id [String] Identifies the porting order that the comment was added to.
            #
            #   @param support_key [String] Identifies the support key associated with the porting order.

            # @see Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload#comment
            class Comment < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the comment.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute body
              #   The body of the comment.
              #
              #   @return [String, nil]
              optional :body, String

              # @!attribute inserted_at
              #   ISO 8601 formatted date indicating when the comment was created.
              #
              #   @return [Time, nil]
              optional :inserted_at, Time

              # @!attribute user_id
              #   Identifies the user that create the comment.
              #
              #   @return [String, nil]
              optional :user_id, String

              # @!attribute user_type
              #   Identifies the type of the user that created the comment.
              #
              #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment::UserType, nil]
              optional :user_type,
                       enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment::UserType }

              # @!method initialize(id: nil, body: nil, inserted_at: nil, user_id: nil, user_type: nil)
              #   The comment that was added to the porting order.
              #
              #   @param id [String] Identifies the comment.
              #
              #   @param body [String] The body of the comment.
              #
              #   @param inserted_at [Time] ISO 8601 formatted date indicating when the comment was created.
              #
              #   @param user_id [String] Identifies the user that create the comment.
              #
              #   @param user_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment::UserType] Identifies the type of the user that created the comment.

              # Identifies the type of the user that created the comment.
              #
              # @see Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent::Payload::Comment#user_type
              module UserType
                extend Telnyx::Internal::Type::Enum

                USER = :user
                ADMIN = :admin
                SYSTEM = :system

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # The status of the payload generation.
          #
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PortingEventSplitEvent < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::AvailableNotificationMethod] }

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::EventType }

          # @!attribute payload
          #   The webhook payload for the porting_order.split event
          #
          #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload, nil]
          optional :payload, -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload }

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::EventType] Identifies the event type
          #
          #   @param payload [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload] The webhook payload for the porting_order.split event
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent#event_type
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

          # @see Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent#payload
          class Payload < Telnyx::Internal::Type::BaseModel
            # @!attribute from
            #   The porting order that was split.
            #
            #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::From, nil]
            optional :from, -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::From }

            # @!attribute porting_phone_numbers
            #   The list of porting phone numbers that were moved to the new porting order.
            #
            #   @return [Array<Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::PortingPhoneNumber>, nil]
            optional :porting_phone_numbers,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::PortingPhoneNumber] }

            # @!attribute to
            #   The new porting order that the phone numbers was moved to.
            #
            #   @return [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::To, nil]
            optional :to, -> { Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::To }

            # @!method initialize(from: nil, porting_phone_numbers: nil, to: nil)
            #   The webhook payload for the porting_order.split event
            #
            #   @param from [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::From] The porting order that was split.
            #
            #   @param porting_phone_numbers [Array<Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::PortingPhoneNumber>] The list of porting phone numbers that were moved to the new porting order.
            #
            #   @param to [Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload::To] The new porting order that the phone numbers was moved to.

            # @see Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload#from
            class From < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the porting order that was split.
              #
              #   @return [String, nil]
              optional :id, String

              # @!method initialize(id: nil)
              #   The porting order that was split.
              #
              #   @param id [String] Identifies the porting order that was split.
            end

            class PortingPhoneNumber < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the porting phone number that was moved.
              #
              #   @return [String, nil]
              optional :id, String

              # @!method initialize(id: nil)
              #   @param id [String] Identifies the porting phone number that was moved.
            end

            # @see Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent::Payload#to
            class To < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the porting order that was split.
              #
              #   @return [String, nil]
              optional :id, String

              # @!method initialize(id: nil)
              #   The new porting order that the phone numbers was moved to.
              #
              #   @param id [String] Identifies the porting order that was split.
            end
          end

          # The status of the payload generation.
          #
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PortingEventWithoutWebhook < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the event.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute available_notification_methods
          #   Indicates the notification methods used.
          #
          #   @return [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::AvailableNotificationMethod>, nil]
          optional :available_notification_methods,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::AvailableNotificationMethod] }

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute event_type
          #   Identifies the event type
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::EventType, nil]
          optional :event_type,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::EventType }

          # @!attribute payload
          #
          #   @return [nil]
          optional :payload, NilClass

          # @!attribute payload_status
          #   The status of the payload generation.
          #
          #   @return [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::PayloadStatus, nil]
          optional :payload_status,
                   enum: -> { Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::PayloadStatus }

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
          #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::AvailableNotificationMethod>] Indicates the notification methods used.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param event_type [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::EventType] Identifies the event type
          #
          #   @param payload [nil]
          #
          #   @param payload_status [Symbol, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook::PayloadStatus] The status of the payload generation.
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook#event_type
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
          # @see Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook#payload_status
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook)]
      end
    end
  end
end
