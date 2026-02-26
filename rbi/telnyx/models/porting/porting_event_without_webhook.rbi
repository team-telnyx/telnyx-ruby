# typed: strong

module Telnyx
  module Models
    PortingEventWithoutWebhook = Porting::PortingEventWithoutWebhook

    module Porting
      class PortingEventWithoutWebhook < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventWithoutWebhook,
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
                Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig { returns(NilClass) }
        attr_accessor :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::OrSymbol
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
                Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::OrSymbol,
            payload: NilClass,
            payload_status:
              Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::OrSymbol,
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
                  Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol,
              payload: NilClass,
              payload_status:
                Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol,
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
                Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Porting::PortingEventWithoutWebhook::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_DELETED =
            T.let(
              :"porting_order.deleted",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_LOA_UPDATED =
            T.let(
              :"porting_order.loa_updated",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_MESSAGING_CHANGED =
            T.let(
              :"porting_order.messaging_changed",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_STATUS_CHANGED =
            T.let(
              :"porting_order.status_changed",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_SHARING_TOKEN_EXPIRED =
            T.let(
              :"porting_order.sharing_token_expired",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_NEW_COMMENT =
            T.let(
              :"porting_order.new_comment",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )
          PORTING_ORDER_SPLIT =
            T.let(
              :"porting_order.split",
              Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventWithoutWebhook::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the payload generation.
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
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
