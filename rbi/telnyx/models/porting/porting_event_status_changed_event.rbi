# typed: strong

module Telnyx
  module Models
    PortingEventStatusChangedEvent = Porting::PortingEventStatusChangedEvent

    module Porting
      class PortingEventStatusChangedEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventStatusChangedEvent,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Indicates the notification methods used.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::OrSymbol
              ]
          ).void
        end
        attr_writer :available_notification_methods

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Identifies the event type
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventStatusChangedEvent::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventStatusChangedEvent::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the porting_order.status_changed event
        sig do
          returns(
            T.nilable(Telnyx::Porting::PortingEventStatusChangedEvent::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Porting::PortingEventStatusChangedEvent::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::OrSymbol
          ).void
        end
        attr_writer :payload_status

        # Identifies the porting order associated with the event.
        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Porting::PortingEventStatusChangedEvent::EventType::OrSymbol,
            payload:
              Telnyx::Porting::PortingEventStatusChangedEvent::Payload::OrHash,
            payload_status:
              Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::OrSymbol,
            porting_order_id: String,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the event.
          id: nil,
          # Indicates the notification methods used.
          available_notification_methods: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Identifies the event type
          event_type: nil,
          # The webhook payload for the porting_order.status_changed event
          payload: nil,
          # The status of the payload generation.
          payload_status: nil,
          # Identifies the porting order associated with the event.
          porting_order_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              available_notification_methods:
                T::Array[
                  Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Porting::PortingEventStatusChangedEvent::EventType::TaggedSymbol,
              payload: Telnyx::Porting::PortingEventStatusChangedEvent::Payload,
              payload_status:
                Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol,
              porting_order_id: String,
              record_type: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module AvailableNotificationMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Identifies the event type
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Porting::PortingEventStatusChangedEvent::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_STATUS_CHANGED =
            T.let(
              :"porting_order.status_changed",
              Telnyx::Porting::PortingEventStatusChangedEvent::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::PortingEventStatusChangedEvent::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the porting order that was moved.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Identifies the customer reference associated with the porting order.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # Porting order status
          sig { returns(T.nilable(Telnyx::PortingOrderStatus)) }
          attr_reader :status

          sig { params(status: Telnyx::PortingOrderStatus::OrHash).void }
          attr_writer :status

          # Identifies the support key associated with the porting order.
          sig { returns(T.nilable(String)) }
          attr_reader :support_key

          sig { params(support_key: String).void }
          attr_writer :support_key

          # ISO 8601 formatted date indicating when the porting order was moved.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # The URL to send the webhook to.
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          # The webhook payload for the porting_order.status_changed event
          sig do
            params(
              id: String,
              customer_reference: String,
              status: Telnyx::PortingOrderStatus::OrHash,
              support_key: String,
              updated_at: Time,
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the porting order that was moved.
            id: nil,
            # Identifies the customer reference associated with the porting order.
            customer_reference: nil,
            # Porting order status
            status: nil,
            # Identifies the support key associated with the porting order.
            support_key: nil,
            # ISO 8601 formatted date indicating when the porting order was moved.
            updated_at: nil,
            # The URL to send the webhook to.
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_reference: String,
                status: Telnyx::PortingOrderStatus,
                support_key: String,
                updated_at: Time,
                webhook_url: String
              }
            )
          end
          def to_hash
          end
        end

        # The status of the payload generation.
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
