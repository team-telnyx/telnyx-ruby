# typed: strong

module Telnyx
  module Models
    PortingEventNewCommentEvent = Porting::PortingEventNewCommentEvent

    module Porting
      class PortingEventNewCommentEvent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingEventNewCommentEvent,
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
                Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_notification_methods

        sig do
          params(
            available_notification_methods:
              T::Array[
                Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::OrSymbol
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
              Telnyx::Porting::PortingEventNewCommentEvent::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::Porting::PortingEventNewCommentEvent::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # The webhook payload for the porting_order.new_comment event
        sig do
          returns(
            T.nilable(Telnyx::Porting::PortingEventNewCommentEvent::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Porting::PortingEventNewCommentEvent::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # The status of the payload generation.
        sig do
          returns(
            T.nilable(
              Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
            )
          )
        end
        attr_reader :payload_status

        sig do
          params(
            payload_status:
              Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::OrSymbol
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
                Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::OrSymbol
              ],
            created_at: Time,
            event_type:
              Telnyx::Porting::PortingEventNewCommentEvent::EventType::OrSymbol,
            payload:
              Telnyx::Porting::PortingEventNewCommentEvent::Payload::OrHash,
            payload_status:
              Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::OrSymbol,
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
                  Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Porting::PortingEventNewCommentEvent::EventType::TaggedSymbol,
              payload: Telnyx::Porting::PortingEventNewCommentEvent::Payload,
              payload_status:
                Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol,
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
                Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :email,
              Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
            )
          WEBHOOK_V1 =
            T.let(
              :webhook_v1,
              Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod::TaggedSymbol
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
                Telnyx::Porting::PortingEventNewCommentEvent::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PORTING_ORDER_NEW_COMMENT =
            T.let(
              :"porting_order.new_comment",
              Telnyx::Porting::PortingEventNewCommentEvent::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventNewCommentEvent::EventType::TaggedSymbol
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
                Telnyx::Porting::PortingEventNewCommentEvent::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # The comment that was added to the porting order.
          sig do
            returns(
              T.nilable(
                Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment
              )
            )
          end
          attr_reader :comment

          sig do
            params(
              comment:
                Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::OrHash
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
                Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::OrHash,
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
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment,
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
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment,
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
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                )
              )
            end
            attr_reader :user_type

            sig do
              params(
                user_type:
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::OrSymbol
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
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::OrSymbol
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
                    Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
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
                    Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              USER =
                T.let(
                  :user,
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                )
              ADMIN =
                T.let(
                  :admin,
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                )
              SYSTEM =
                T.let(
                  :system,
                  Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType::TaggedSymbol
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
                Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(
              :created,
              Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus::TaggedSymbol
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
