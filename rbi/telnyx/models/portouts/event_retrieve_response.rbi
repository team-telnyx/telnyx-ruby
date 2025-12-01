# typed: strong

module Telnyx
  module Models
    module Portouts
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::EventRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::Portouts::EventRetrieveResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Portouts::EventRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Portouts::EventRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Portouts::EventRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Portouts::EventRetrieveResponse::Data,
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
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::TaggedSymbol
                ]
              )
            )
          end
          attr_reader :available_notification_methods

          sig do
            params(
              available_notification_methods:
                T::Array[
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::OrSymbol
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
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol
              )
            )
          end
          attr_reader :event_type

          sig do
            params(
              event_type:
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::OrSymbol
            ).void
          end
          attr_writer :event_type

          # The webhook payload for the portout.status_changed event
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::Variants
              )
            )
          end
          attr_reader :payload

          sig do
            params(
              payload:
                T.any(
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::OrHash,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutNewCommentPayload::OrHash,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutFocDateChangedPayload::OrHash
                )
            ).void
          end
          attr_writer :payload

          # The status of the payload generation.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::TaggedSymbol
              )
            )
          end
          attr_reader :payload_status

          sig do
            params(
              payload_status:
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::OrSymbol
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
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::OrSymbol
                ],
              created_at: Time,
              event_type:
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::OrSymbol,
              payload:
                T.any(
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::OrHash,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutNewCommentPayload::OrHash,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutFocDateChangedPayload::OrHash
                ),
              payload_status:
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::OrSymbol,
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
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::TaggedSymbol
                  ],
                created_at: Time,
                event_type:
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol,
                payload:
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::Variants,
                payload_status:
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::TaggedSymbol,
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
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :email,
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::TaggedSymbol
              )
            WEBHOOK =
              T.let(
                :webhook,
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::AvailableNotificationMethod::TaggedSymbol
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
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTOUT_STATUS_CHANGED =
              T.let(
                :"portout.status_changed",
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol
              )
            PORTOUT_FOC_DATE_CHANGED =
              T.let(
                :"portout.foc_date_changed",
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol
              )
            PORTOUT_NEW_COMMENT =
              T.let(
                :"portout.new_comment",
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::EventType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The webhook payload for the portout.status_changed event
          module Payload
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutNewCommentPayload,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutFocDateChangedPayload
                )
              end

            class WebhookPortoutStatusChangedPayload < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload,
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
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                )
              end
              attr_reader :status

              sig do
                params(
                  status:
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::OrSymbol
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
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::OrSymbol,
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
                      Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol,
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
                      Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                AUTHORIZED =
                  T.let(
                    :authorized,
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                PORTED =
                  T.let(
                    :ported,
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                REJECTED =
                  T.let(
                    :rejected,
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                REJECTED_PENDING =
                  T.let(
                    :"rejected-pending",
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )
                CANCELED =
                  T.let(
                    :canceled,
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutStatusChangedPayload::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class WebhookPortoutNewCommentPayload < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutNewCommentPayload,
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

            class WebhookPortoutFocDateChangedPayload < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::WebhookPortoutFocDateChangedPayload,
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
                override.returns(
                  { id: String, foc_date: Time, user_id: String }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::Payload::Variants
                ]
              )
            end
            def self.variants
            end
          end

          # The status of the payload generation.
          module PayloadStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED =
              T.let(
                :created,
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Portouts::EventRetrieveResponse::Data::PayloadStatus::TaggedSymbol
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
end
