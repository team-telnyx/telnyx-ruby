# typed: strong

module Telnyx
  module Models
    PortingEventMessagingChangedPayload =
      Porting::PortingEventMessagingChangedPayload

    module Porting
      class PortingEventMessagingChangedPayload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventMessagingChangedPayload,
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the porting_order.messaging_changed event
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventMessagingChangedPayload::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::OrSymbol
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::OrSymbol,
            payload:
              Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::OrHash,
            payload_status:
              Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::OrSymbol,
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
                  Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::TaggedSymbol,
              payload:
                Telnyx::Porting::PortingEventMessagingChangedPayload::Payload,
              payload_status:
                Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol,
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_MESSAGING_CHANGED =
            T.let(
              :"porting_order.messaging_changed",
              Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventMessagingChangedPayload::EventType::TaggedSymbol
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::Payload,
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging
              )
            )
          end
          attr_reader :messaging

          sig do
            params(
              messaging:
                Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::OrHash
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::OrHash,
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
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging,
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
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging,
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
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              )
            end
            attr_reader :messaging_port_status

            sig do
              params(
                messaging_port_status:
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::OrSymbol
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
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::OrSymbol
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
                    Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
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
                    Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NOT_APPLICABLE =
                T.let(
                  :not_applicable,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              ACTIVATING =
                T.let(
                  :activating,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              EXCEPTION =
                T.let(
                  :exception,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :canceled,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              PARTIAL_PORT_COMPLETE =
                T.let(
                  :partial_port_complete,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )
              PORTED =
                T.let(
                  :ported,
                  Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Porting::PortingEventMessagingChangedPayload::Payload::Messaging::MessagingPortStatus::TaggedSymbol
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
                Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus::TaggedSymbol
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
