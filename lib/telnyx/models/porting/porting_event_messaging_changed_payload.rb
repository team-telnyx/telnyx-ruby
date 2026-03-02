# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventMessagingChangedPayload < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventMessagingChangedPayload::EventType }

        # @!attribute payload
        #   The webhook payload for the porting_order.messaging_changed event
        #
        #   @return [Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload, nil]
        optional :payload, -> { Telnyx::Porting::PortingEventMessagingChangedPayload::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus }

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
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload] The webhook payload for the porting_order.messaging_changed event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::PayloadStatus] The status of the payload generation.
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
        # @see Telnyx::Models::Porting::PortingEventMessagingChangedPayload#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTING_ORDER_MESSAGING_CHANGED = :"porting_order.messaging_changed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Porting::PortingEventMessagingChangedPayload#payload
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
          #   @return [Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging, nil]
          optional :messaging, -> { Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging }

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
          #   @param messaging [Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging] The messaging portability status of the porting order.
          #
          #   @param support_key [String] Identifies the support key associated with the porting order.

          # @see Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload#messaging
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
            #   @return [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus, nil]
            optional :messaging_port_status,
                     enum: -> { Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus }

            # @!method initialize(enable_messaging: nil, messaging_capable: nil, messaging_port_completed: nil, messaging_port_status: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging}
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
            #   @param messaging_port_status [Symbol, Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus] Indicates the messaging port status of the porting order.

            # Indicates the messaging port status of the porting order.
            #
            # @see Telnyx::Models::Porting::PortingEventMessagingChangedPayload::Payload::Messaging#messaging_port_status
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
        # @see Telnyx::Models::Porting::PortingEventMessagingChangedPayload#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventMessagingChangedPayload = Porting::PortingEventMessagingChangedPayload
  end
end
