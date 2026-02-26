# typed: strong

module Telnyx
  module Models
    PortingEventDeletedPayload = Porting::PortingEventDeletedPayload

    module Porting
      class PortingEventDeletedPayload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventDeletedPayload,
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
                Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::OrSymbol
              ]
          ).void
        end
        attr_writer :available_notification_methods

        # Identifies the event type
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventDeletedPayload::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        sig do
          returns(
            T.nilable(Telnyx::Porting::PortingEventDeletedPayload::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Porting::PortingEventDeletedPayload::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::OrSymbol
          ).void
        end
        attr_writer :payload_status

        # Identifies the porting order associated with the event.
        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        sig do
          params(
            id: String,
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::OrSymbol
              ],
            event_type:
              Telnyx::Porting::PortingEventDeletedPayload::EventType::OrSymbol,
            payload:
              Telnyx::Porting::PortingEventDeletedPayload::Payload::OrHash,
            payload_status:
              Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::OrSymbol,
            porting_order_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the event.
          id: nil,
          # Indicates the notification methods used.
          available_notification_methods: nil,
          # Identifies the event type
          event_type: nil,
          payload: nil,
          # The status of the payload generation.
          payload_status: nil,
          # Identifies the porting order associated with the event.
          porting_order_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              available_notification_methods:
                T::Array[
                  Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                ],
              event_type:
                Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol,
              payload: Telnyx::Porting::PortingEventDeletedPayload::Payload,
              payload_status:
                Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol,
              porting_order_id: String
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
                Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Porting::PortingEventDeletedPayload::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_DELETED =
            T.let(
              :"porting_order.deleted",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_LOA_UPDATED =
            T.let(
              :"porting_order.loa_updated",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_MESSAGING_CHANGED =
            T.let(
              :"porting_order.messaging_changed",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_STATUS_CHANGED =
            T.let(
              :"porting_order.status_changed",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_SHARING_TOKEN_EXPIRED =
            T.let(
              :"porting_order.sharing_token_expired",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_NEW_COMMENT =
            T.let(
              :"porting_order.new_comment",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )
          PORTING_ORDER_SPLIT =
            T.let(
              :"porting_order.split",
              Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventDeletedPayload::EventType::TaggedSymbol
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
                Telnyx::Porting::PortingEventDeletedPayload::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the porting order that was deleted.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # ISO 8601 formatted date indicating when the resource was created.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Identifies the customer reference associated with the porting order.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_reference

          sig { params(customer_reference: String).void }
          attr_writer :customer_reference

          # ISO 8601 formatted date indicating when the porting order was deleted.
          sig { returns(T.nilable(Time)) }
          attr_reader :deleted_at

          sig { params(deleted_at: Time).void }
          attr_writer :deleted_at

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
              created_at: Time,
              customer_reference: String,
              deleted_at: Time,
              record_type: String,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the porting order that was deleted.
            id: nil,
            # ISO 8601 formatted date indicating when the resource was created.
            created_at: nil,
            # Identifies the customer reference associated with the porting order.
            customer_reference: nil,
            # ISO 8601 formatted date indicating when the porting order was deleted.
            deleted_at: nil,
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
                created_at: Time,
                customer_reference: String,
                deleted_at: Time,
                record_type: String,
                updated_at: Time
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
                Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
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
