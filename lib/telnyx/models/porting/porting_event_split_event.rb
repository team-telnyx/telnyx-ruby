# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventSplitEvent < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventSplitEvent::EventType }

        # @!attribute payload
        #   The webhook payload for the porting_order.split event
        #
        #   @return [Telnyx::Models::Porting::PortingEventSplitEvent::Payload, nil]
        optional :payload, -> { Telnyx::Porting::PortingEventSplitEvent::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventSplitEvent::PayloadStatus }

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
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Porting::PortingEventSplitEvent::Payload] The webhook payload for the porting_order.split event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventSplitEvent::PayloadStatus] The status of the payload generation.
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
        # @see Telnyx::Models::Porting::PortingEventSplitEvent#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTING_ORDER_SPLIT = :"porting_order.split"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Porting::PortingEventSplitEvent#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute from
          #   The porting order that was split.
          #
          #   @return [Telnyx::Models::Porting::PortingEventSplitEvent::Payload::From, nil]
          optional :from, -> { Telnyx::Porting::PortingEventSplitEvent::Payload::From }

          # @!attribute porting_phone_numbers
          #   The list of porting phone numbers that were moved to the new porting order.
          #
          #   @return [Array<Telnyx::Models::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber>, nil]
          optional :porting_phone_numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber] }

          # @!attribute to
          #   The new porting order that the phone numbers was moved to.
          #
          #   @return [Telnyx::Models::Porting::PortingEventSplitEvent::Payload::To, nil]
          optional :to, -> { Telnyx::Porting::PortingEventSplitEvent::Payload::To }

          # @!method initialize(from: nil, porting_phone_numbers: nil, to: nil)
          #   The webhook payload for the porting_order.split event
          #
          #   @param from [Telnyx::Models::Porting::PortingEventSplitEvent::Payload::From] The porting order that was split.
          #
          #   @param porting_phone_numbers [Array<Telnyx::Models::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber>] The list of porting phone numbers that were moved to the new porting order.
          #
          #   @param to [Telnyx::Models::Porting::PortingEventSplitEvent::Payload::To] The new porting order that the phone numbers was moved to.

          # @see Telnyx::Models::Porting::PortingEventSplitEvent::Payload#from
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

          # @see Telnyx::Models::Porting::PortingEventSplitEvent::Payload#to
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
        # @see Telnyx::Models::Porting::PortingEventSplitEvent#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventSplitEvent = Porting::PortingEventSplitEvent
  end
end
