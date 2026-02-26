# typed: strong

module Telnyx
  module Models
    PortingEventSplitEvent = Porting::PortingEventSplitEvent

    module Porting
      class PortingEventSplitEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventSplitEvent,
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
                Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventSplitEvent::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the porting_order.split event
        sig do
          returns(T.nilable(Telnyx::Porting::PortingEventSplitEvent::Payload))
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::Porting::PortingEventSplitEvent::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::OrSymbol
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
                Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Porting::PortingEventSplitEvent::EventType::OrSymbol,
            payload: Telnyx::Porting::PortingEventSplitEvent::Payload::OrHash,
            payload_status:
              Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::OrSymbol,
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
                  Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol,
              payload: Telnyx::Porting::PortingEventSplitEvent::Payload,
              payload_status:
                Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::TaggedSymbol,
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
                Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod::TaggedSymbol
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
              T.all(Symbol, Telnyx::Porting::PortingEventSplitEvent::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_DELETED =
            T.let(
              :"porting_order.deleted",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_LOA_UPDATED =
            T.let(
              :"porting_order.loa_updated",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_MESSAGING_CHANGED =
            T.let(
              :"porting_order.messaging_changed",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_STATUS_CHANGED =
            T.let(
              :"porting_order.status_changed",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_SHARING_TOKEN_EXPIRED =
            T.let(
              :"porting_order.sharing_token_expired",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_NEW_COMMENT =
            T.let(
              :"porting_order.new_comment",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )
          PORTING_ORDER_SPLIT =
            T.let(
              :"porting_order.split",
              Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventSplitEvent::EventType::TaggedSymbol
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
                Telnyx::Porting::PortingEventSplitEvent::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # The porting order that was split.
          sig do
            returns(
              T.nilable(Telnyx::Porting::PortingEventSplitEvent::Payload::From)
            )
          end
          attr_reader :from

          sig do
            params(
              from:
                Telnyx::Porting::PortingEventSplitEvent::Payload::From::OrHash
            ).void
          end
          attr_writer :from

          # The list of porting phone numbers that were moved to the new porting order.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber
                ]
              )
            )
          end
          attr_reader :porting_phone_numbers

          sig do
            params(
              porting_phone_numbers:
                T::Array[
                  Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber::OrHash
                ]
            ).void
          end
          attr_writer :porting_phone_numbers

          # The new porting order that the phone numbers was moved to.
          sig do
            returns(
              T.nilable(Telnyx::Porting::PortingEventSplitEvent::Payload::To)
            )
          end
          attr_reader :to

          sig do
            params(
              to: Telnyx::Porting::PortingEventSplitEvent::Payload::To::OrHash
            ).void
          end
          attr_writer :to

          # The webhook payload for the porting_order.split event
          sig do
            params(
              from:
                Telnyx::Porting::PortingEventSplitEvent::Payload::From::OrHash,
              porting_phone_numbers:
                T::Array[
                  Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber::OrHash
                ],
              to: Telnyx::Porting::PortingEventSplitEvent::Payload::To::OrHash
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
                from: Telnyx::Porting::PortingEventSplitEvent::Payload::From,
                porting_phone_numbers:
                  T::Array[
                    Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber
                  ],
                to: Telnyx::Porting::PortingEventSplitEvent::Payload::To
              }
            )
          end
          def to_hash
          end

          class From < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Porting::PortingEventSplitEvent::Payload::From,
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
                  Telnyx::Porting::PortingEventSplitEvent::Payload::PortingPhoneNumber,
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
                  Telnyx::Porting::PortingEventSplitEvent::Payload::To,
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
                Telnyx::Porting::PortingEventSplitEvent::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventSplitEvent::PayloadStatus::TaggedSymbol
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
