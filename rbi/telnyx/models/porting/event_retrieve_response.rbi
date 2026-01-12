# typed: strong

module Telnyx
  module Models
    module Porting
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::EventRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::OrHash
              )
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::OrHash,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
            }
          )
        end
        def to_hash
        end

        module Data
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent,
                Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook
              )
            end

          class PortingEventDeletedPayload < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::OrSymbol
                  ]
              ).void
            end
            attr_writer :available_notification_methods

            # Identifies the event type
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::Payload
                )
              )
            end
            attr_reader :payload

            sig do
              params(
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::Payload::OrHash
              ).void
            end
            attr_writer :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::OrSymbol
                  ],
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::OrSymbol,
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::Payload::OrHash,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::OrSymbol,
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                    ],
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol,
                  payload:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::Payload,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::Payload,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventDeletedPayload::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PortingEventMessagingChangedPayload < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::OrSymbol
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
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            # The webhook payload for the porting_order.messaging_changed event
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload
                )
              )
            end
            attr_reader :payload

            sig do
              params(
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::OrHash
              ).void
            end
            attr_writer :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::OrSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::OrSymbol,
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::OrHash,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::OrSymbol,
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
              # The webhook payload for the porting_order.messaging_changed event
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                    ],
                  created_at: Time,
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol,
                  payload:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload,
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

              # The messaging portability status of the porting order.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging
                  )
                )
              end
              attr_reader :messaging

              sig do
                params(
                  messaging:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::OrHash
                ).void
              end
              attr_writer :messaging

              # Identifies the support key associated with the porting order.
              sig { returns(T.nilable(String)) }
              attr_reader :support_key

              sig { params(support_key: String).void }
              attr_writer :support_key

              # The webhook payload for the porting_order.messaging_changed event
              sig do
                params(
                  id: String,
                  customer_reference: String,
                  messaging:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::OrHash,
                  support_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Identifies the porting order that was moved.
                id: nil,
                # Identifies the customer reference associated with the porting order.
                customer_reference: nil,
                # The messaging portability status of the porting order.
                messaging: nil,
                # Identifies the support key associated with the porting order.
                support_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    customer_reference: String,
                    messaging:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging,
                    support_key: String
                  }
                )
              end
              def to_hash
              end

              class Messaging < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Indicates whether Telnyx will port messaging capabilities from the losing
                # carrier. If false, any messaging capabilities will stay with their current
                # provider.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :enable_messaging

                sig { params(enable_messaging: T::Boolean).void }
                attr_writer :enable_messaging

                # Indicates whether the porting order is messaging capable.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :messaging_capable

                sig { params(messaging_capable: T::Boolean).void }
                attr_writer :messaging_capable

                # Indicates whether the messaging port is completed.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :messaging_port_completed

                sig { params(messaging_port_completed: T::Boolean).void }
                attr_writer :messaging_port_completed

                # Indicates the messaging port status of the porting order.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  )
                end
                attr_reader :messaging_port_status

                sig do
                  params(
                    messaging_port_status:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::OrSymbol
                  ).void
                end
                attr_writer :messaging_port_status

                # The messaging portability status of the porting order.
                sig do
                  params(
                    enable_messaging: T::Boolean,
                    messaging_capable: T::Boolean,
                    messaging_port_completed: T::Boolean,
                    messaging_port_status:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Indicates whether Telnyx will port messaging capabilities from the losing
                  # carrier. If false, any messaging capabilities will stay with their current
                  # provider.
                  enable_messaging: nil,
                  # Indicates whether the porting order is messaging capable.
                  messaging_capable: nil,
                  # Indicates whether the messaging port is completed.
                  messaging_port_completed: nil,
                  # Indicates the messaging port status of the porting order.
                  messaging_port_status: nil
                )
                end

                sig do
                  override.returns(
                    {
                      enable_messaging: T::Boolean,
                      messaging_capable: T::Boolean,
                      messaging_port_completed: T::Boolean,
                      messaging_port_status:
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Indicates the messaging port status of the porting order.
                module MessagingPortStatus
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  NOT_APPLICABLE =
                    T.let(
                      :not_applicable,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  PENDING =
                    T.let(
                      :pending,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  ACTIVATING =
                    T.let(
                      :activating,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  EXCEPTION =
                    T.let(
                      :exception,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  CANCELED =
                    T.let(
                      :canceled,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  PARTIAL_PORT_COMPLETE =
                    T.let(
                      :partial_port_complete,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )
                  PORTED =
                    T.let(
                      :ported,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            # The status of the payload generation.
            module PayloadStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PortingEventStatusChangedEvent < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::OrSymbol
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
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            # The webhook payload for the porting_order.status_changed event
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::Payload
                )
              )
            end
            attr_reader :payload

            sig do
              params(
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::Payload::OrHash
              ).void
            end
            attr_writer :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::OrSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::OrSymbol,
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::Payload::OrHash,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::OrSymbol,
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                    ],
                  created_at: Time,
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol,
                  payload:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::Payload,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::Payload,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventStatusChangedEvent::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PortingEventNewCommentEvent < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::OrSymbol
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
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            # The webhook payload for the porting_order.new_comment event
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload
                )
              )
            end
            attr_reader :payload

            sig do
              params(
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::OrHash
              ).void
            end
            attr_writer :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::OrSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::OrSymbol,
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::OrHash,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::OrSymbol,
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
              # The webhook payload for the porting_order.new_comment event
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                    ],
                  created_at: Time,
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol,
                  payload:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The comment that was added to the porting order.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment
                  )
                )
              end
              attr_reader :comment

              sig do
                params(
                  comment:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::OrHash
                ).void
              end
              attr_writer :comment

              # Identifies the porting order that the comment was added to.
              sig { returns(T.nilable(String)) }
              attr_reader :porting_order_id

              sig { params(porting_order_id: String).void }
              attr_writer :porting_order_id

              # Identifies the support key associated with the porting order.
              sig { returns(T.nilable(String)) }
              attr_reader :support_key

              sig { params(support_key: String).void }
              attr_writer :support_key

              # The webhook payload for the porting_order.new_comment event
              sig do
                params(
                  comment:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::OrHash,
                  porting_order_id: String,
                  support_key: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The comment that was added to the porting order.
                comment: nil,
                # Identifies the porting order that the comment was added to.
                porting_order_id: nil,
                # Identifies the support key associated with the porting order.
                support_key: nil
              )
              end

              sig do
                override.returns(
                  {
                    comment:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment,
                    porting_order_id: String,
                    support_key: String
                  }
                )
              end
              def to_hash
              end

              class Comment < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Identifies the comment.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                # The body of the comment.
                sig { returns(T.nilable(String)) }
                attr_reader :body

                sig { params(body: String).void }
                attr_writer :body

                # ISO 8601 formatted date indicating when the comment was created.
                sig { returns(T.nilable(Time)) }
                attr_reader :inserted_at

                sig { params(inserted_at: Time).void }
                attr_writer :inserted_at

                # Identifies the user that create the comment.
                sig { returns(T.nilable(String)) }
                attr_reader :user_id

                sig { params(user_id: String).void }
                attr_writer :user_id

                # Identifies the type of the user that created the comment.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                    )
                  )
                end
                attr_reader :user_type

                sig do
                  params(
                    user_type:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::OrSymbol
                  ).void
                end
                attr_writer :user_type

                # The comment that was added to the porting order.
                sig do
                  params(
                    id: String,
                    body: String,
                    inserted_at: Time,
                    user_id: String,
                    user_type:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Identifies the comment.
                  id: nil,
                  # The body of the comment.
                  body: nil,
                  # ISO 8601 formatted date indicating when the comment was created.
                  inserted_at: nil,
                  # Identifies the user that create the comment.
                  user_id: nil,
                  # Identifies the type of the user that created the comment.
                  user_type: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      body: String,
                      inserted_at: Time,
                      user_id: String,
                      user_type:
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Identifies the type of the user that created the comment.
                module UserType
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  USER =
                    T.let(
                      :user,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                    )
                  ADMIN =
                    T.let(
                      :admin,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                    )
                  SYSTEM =
                    T.let(
                      :system,
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            # The status of the payload generation.
            module PayloadStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PortingEventSplitEvent < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::OrSymbol
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
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            # The webhook payload for the porting_order.split event
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload
                )
              )
            end
            attr_reader :payload

            sig do
              params(
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::OrHash
              ).void
            end
            attr_writer :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::OrSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::OrSymbol,
                payload:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::OrHash,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::OrSymbol,
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
              # The webhook payload for the porting_order.split event
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                    ],
                  created_at: Time,
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol,
                  payload:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The porting order that was split.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::From
                  )
                )
              end
              attr_reader :from

              sig do
                params(
                  from:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::From::OrHash
                ).void
              end
              attr_writer :from

              # The list of porting phone numbers that were moved to the new porting order.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::PortingPhoneNumber
                    ]
                  )
                )
              end
              attr_reader :porting_phone_numbers

              sig do
                params(
                  porting_phone_numbers:
                    T::Array[
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::PortingPhoneNumber::OrHash
                    ]
                ).void
              end
              attr_writer :porting_phone_numbers

              # The new porting order that the phone numbers was moved to.
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::To
                  )
                )
              end
              attr_reader :to

              sig do
                params(
                  to:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::To::OrHash
                ).void
              end
              attr_writer :to

              # The webhook payload for the porting_order.split event
              sig do
                params(
                  from:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::From::OrHash,
                  porting_phone_numbers:
                    T::Array[
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::PortingPhoneNumber::OrHash
                    ],
                  to:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::To::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # The porting order that was split.
                from: nil,
                # The list of porting phone numbers that were moved to the new porting order.
                porting_phone_numbers: nil,
                # The new porting order that the phone numbers was moved to.
                to: nil
              )
              end

              sig do
                override.returns(
                  {
                    from:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::From,
                    porting_phone_numbers:
                      T::Array[
                        Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::PortingPhoneNumber
                      ],
                    to:
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::To
                  }
                )
              end
              def to_hash
              end

              class From < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::From,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Identifies the porting order that was split.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                # The porting order that was split.
                sig { params(id: String).returns(T.attached_class) }
                def self.new(
                  # Identifies the porting order that was split.
                  id: nil
                )
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class PortingPhoneNumber < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::PortingPhoneNumber,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Identifies the porting phone number that was moved.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                sig { params(id: String).returns(T.attached_class) }
                def self.new(
                  # Identifies the porting phone number that was moved.
                  id: nil
                )
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end

              class To < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::Payload::To,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Identifies the porting order that was split.
                sig { returns(T.nilable(String)) }
                attr_reader :id

                sig { params(id: String).void }
                attr_writer :id

                # The new porting order that the phone numbers was moved to.
                sig { params(id: String).returns(T.attached_class) }
                def self.new(
                  # Identifies the porting order that was split.
                  id: nil
                )
                end

                sig { override.returns({ id: String }) }
                def to_hash
                end
              end
            end

            # The status of the payload generation.
            module PayloadStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class PortingEventWithoutWebhook < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :available_notification_methods

            sig do
              params(
                available_notification_methods:
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::OrSymbol
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
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              )
            end
            attr_reader :event_type

            sig do
              params(
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::OrSymbol
              ).void
            end
            attr_writer :event_type

            sig { returns(NilClass) }
            attr_accessor :payload

            # The status of the payload generation.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
                )
              )
            end
            attr_reader :payload_status

            sig do
              params(
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::OrSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::OrSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::OrSymbol,
                payload: NilClass,
                payload_status:
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::OrSymbol,
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
                      Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                    ],
                  created_at: Time,
                  event_type:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol,
                  payload: NilClass,
                  payload_status:
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol,
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL =
                T.let(
                  :email,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK =
                T.let(
                  :webhook,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                )
              WEBHOOK_V1 =
                T.let(
                  :webhook_v1,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::AvailableNotificationMethod::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PORTING_ORDER_DELETED =
                T.let(
                  :"porting_order.deleted",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_LOA_UPDATED =
                T.let(
                  :"porting_order.loa_updated",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_MESSAGING_CHANGED =
                T.let(
                  :"porting_order.messaging_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_STATUS_CHANGED =
                T.let(
                  :"porting_order.status_changed",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_SHARING_TOKEN_EXPIRED =
                T.let(
                  :"porting_order.sharing_token_expired",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_NEW_COMMENT =
                T.let(
                  :"porting_order.new_comment",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )
              PORTING_ORDER_SPLIT =
                T.let(
                  :"porting_order.split",
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::EventType::TaggedSymbol
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
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CREATED =
                T.let(
                  :created,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Porting::EventRetrieveResponse::Data::PortingEventWithoutWebhook::PayloadStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Porting::EventRetrieveResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
