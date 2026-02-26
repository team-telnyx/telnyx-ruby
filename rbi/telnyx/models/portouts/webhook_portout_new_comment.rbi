# typed: strong

module Telnyx
  module Models
    module Portouts
      class WebhookPortoutNewComment < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::WebhookPortoutNewComment,
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
                Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the portout.new_comment event
        sig do
          returns(
            T.nilable(Telnyx::Portouts::WebhookPortoutNewComment::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::Portouts::WebhookPortoutNewComment::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::OrSymbol
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
                Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::OrSymbol,
            payload:
              Telnyx::Portouts::WebhookPortoutNewComment::Payload::OrHash,
            payload_status:
              Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::OrSymbol,
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
          # The webhook payload for the portout.new_comment event
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
                  Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol,
              payload: Telnyx::Portouts::WebhookPortoutNewComment::Payload,
              payload_status:
                Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::TaggedSymbol,
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
                Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutNewComment::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutNewComment::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTOUT_STATUS_CHANGED =
            T.let(
              :"portout.status_changed",
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol
            )
          PORTOUT_FOC_DATE_CHANGED =
            T.let(
              :"portout.foc_date_changed",
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol
            )
          PORTOUT_NEW_COMMENT =
            T.let(
              :"portout.new_comment",
              Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutNewComment::EventType::TaggedSymbol
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
                Telnyx::Portouts::WebhookPortoutNewComment::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the comment that was added to the port-out order.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The body of the comment.
          sig { returns(T.nilable(String)) }
          attr_reader :comment

          sig { params(comment: String).void }
          attr_writer :comment

          # Identifies the port-out order that the comment was added to.
          sig { returns(T.nilable(String)) }
          attr_reader :portout_id

          sig { params(portout_id: String).void }
          attr_writer :portout_id

          # Identifies the user that added the comment.
          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          # The webhook payload for the portout.new_comment event
          sig do
            params(
              id: String,
              comment: String,
              portout_id: String,
              user_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the comment that was added to the port-out order.
            id: nil,
            # The body of the comment.
            comment: nil,
            # Identifies the port-out order that the comment was added to.
            portout_id: nil,
            # Identifies the user that added the comment.
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                comment: String,
                portout_id: String,
                user_id: String
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
                Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::WebhookPortoutNewComment::PayloadStatus::TaggedSymbol
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
