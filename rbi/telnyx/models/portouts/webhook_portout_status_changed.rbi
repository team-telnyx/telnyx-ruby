# typed: strong

module Telnyx
  module Models
    module Portouts
      class WebhookPortoutStatusChanged < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::WebhookPortoutStatusChanged,
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the portout.status_changed event
        sig do
          returns(
            T.nilable(Telnyx::Portouts::WebhookPortoutStatusChanged::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::OrSymbol
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::OrSymbol,
            payload:
              Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::OrHash,
            payload_status:
              Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::OrSymbol,
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
          # The webhook payload for the portout.status_changed event
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
                  Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol,
              payload: Telnyx::Portouts::WebhookPortoutStatusChanged::Payload,
              payload_status:
                Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::TaggedSymbol,
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutStatusChanged::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTOUT_STATUS_CHANGED =
            T.let(
              :"portout.status_changed",
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol
            )
          PORTOUT_FOC_DATE_CHANGED =
            T.let(
              :"portout.foc_date_changed",
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol
            )
          PORTOUT_NEW_COMMENT =
            T.let(
              :"portout.new_comment",
              Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutStatusChanged::EventType::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the port out that was moved.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The PIN that was attempted to be used to authorize the port out.
          sig { returns(T.nilable(String)) }
          attr_reader :attempted_pin

          sig { params(attempted_pin: String).void }
          attr_writer :attempted_pin

          # Carrier the number will be ported out to
          sig { returns(T.nilable(String)) }
          attr_reader :carrier_name

          sig { params(carrier_name: String).void }
          attr_writer :carrier_name

          # Phone numbers associated with this port-out order
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_numbers

          sig { params(phone_numbers: T::Array[String]).void }
          attr_writer :phone_numbers

          # The reason why the order is being rejected by the user. If the order is
          # authorized, this field can be left null
          sig { returns(T.nilable(String)) }
          attr_accessor :rejection_reason

          # The new carrier SPID.
          sig { returns(T.nilable(String)) }
          attr_reader :spid

          sig { params(spid: String).void }
          attr_writer :spid

          # The new status of the port out.
          sig do
            returns(
              T.nilable(
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # The name of the port-out's end user.
          sig { returns(T.nilable(String)) }
          attr_reader :subscriber_name

          sig { params(subscriber_name: String).void }
          attr_writer :subscriber_name

          # Identifies the user that the port-out order belongs to.
          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          # The webhook payload for the portout.status_changed event
          sig do
            params(
              id: String,
              attempted_pin: String,
              carrier_name: String,
              phone_numbers: T::Array[String],
              rejection_reason: T.nilable(String),
              spid: String,
              status:
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::OrSymbol,
              subscriber_name: String,
              user_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the port out that was moved.
            id: nil,
            # The PIN that was attempted to be used to authorize the port out.
            attempted_pin: nil,
            # Carrier the number will be ported out to
            carrier_name: nil,
            # Phone numbers associated with this port-out order
            phone_numbers: nil,
            # The reason why the order is being rejected by the user. If the order is
            # authorized, this field can be left null
            rejection_reason: nil,
            # The new carrier SPID.
            spid: nil,
            # The new status of the port out.
            status: nil,
            # The name of the port-out's end user.
            subscriber_name: nil,
            # Identifies the user that the port-out order belongs to.
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                attempted_pin: String,
                carrier_name: String,
                phone_numbers: T::Array[String],
                rejection_reason: T.nilable(String),
                spid: String,
                status:
                  Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol,
                subscriber_name: String,
                user_id: String
              }
            )
          end
          def to_hash
          end

          # The new status of the port out.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            AUTHORIZED =
              T.let(
                :authorized,
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            PORTED =
              T.let(
                :ported,
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            REJECTED_PENDING =
              T.let(
                :"rejected-pending",
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::WebhookPortoutStatusChanged::Payload::Status::TaggedSymbol
                ]
              )
            end
            def self.values
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
                Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutStatusChanged::PayloadStatus::TaggedSymbol
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
