# typed: strong

module Telnyx
  module Models
    module Portouts
      class WebhookPortoutFocDateChanged < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::WebhookPortoutFocDateChanged,
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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the portout.foc_date_changed event
        sig do
          returns(
            T.nilable(Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::OrSymbol
          ).void
        end
        attr_writer :payload_status

        # Identifies the port-out order associated with the event.
        sig { returns(T.nilable(String)) }
        attr_reader :portout_id

        sig { params(portout_id: String).void }
        attr_writer :portout_id

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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::OrSymbol,
            payload:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload::OrHash,
            payload_status:
              Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::OrSymbol,
            portout_id: String,
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
          # The webhook payload for the portout.foc_date_changed event
          payload: nil,
          # The status of the payload generation.
          payload_status: nil,
          # Identifies the port-out order associated with the event.
          portout_id: nil,
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
                  Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol,
              payload: Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload,
              payload_status:
                Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::TaggedSymbol,
              portout_id: String,
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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutFocDateChanged::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTOUT_STATUS_CHANGED =
            T.let(
              :"portout.status_changed",
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol
            )
          PORTOUT_FOC_DATE_CHANGED =
            T.let(
              :"portout.foc_date_changed",
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol
            )
          PORTOUT_NEW_COMMENT =
            T.let(
              :"portout.new_comment",
              Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutFocDateChanged::EventType::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the port-out order that have the FOC date changed.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # ISO 8601 formatted date indicating the new FOC date.
          sig { returns(T.nilable(Time)) }
          attr_reader :foc_date

          sig { params(foc_date: Time).void }
          attr_writer :foc_date

          # Identifies the organization that port-out order belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          # The webhook payload for the portout.foc_date_changed event
          sig do
            params(id: String, foc_date: Time, user_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Identifies the port-out order that have the FOC date changed.
            id: nil,
            # ISO 8601 formatted date indicating the new FOC date.
            foc_date: nil,
            # Identifies the organization that port-out order belongs to.
            user_id: nil
          )
          end

          sig do
            override.returns({ id: String, foc_date: Time, user_id: String })
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
                Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutFocDateChanged::PayloadStatus::TaggedSymbol
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
