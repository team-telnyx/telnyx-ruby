# typed: strong

module Telnyx
  module Models
    class HostedNumberOrderEventWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::HostedNumberOrderEventWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::HostedNumberOrderEventWebhookEvent::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::HostedNumberOrderEventWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::HostedNumberOrderEventWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::HostedNumberOrderEventWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::HostedNumberOrderEventWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered. Internal transfer events are only emitted for
        # orders where the numbers are already active on another Telnyx account.
        sig do
          returns(
            T.nilable(
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 formatted date indicating when the event was generated.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        # Payload delivered with every messaging*hosted_numbers_orders.\* event.
        # `approval_deadline` and `decision` are meaningful only for
        # `internal_transfer*\*` events.
        sig do
          returns(
            T.nilable(Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event.
          id: nil,
          # The type of event being delivered. Internal transfer events are only emitted for
          # orders where the numbers are already active on another Telnyx account.
          event_type: nil,
          # ISO 8601 formatted date indicating when the event was generated.
          occurred_at: nil,
          # Payload delivered with every messaging*hosted_numbers_orders.\* event.
          # `approval_deadline` and `decision` are meaningful only for
          # `internal_transfer*\*` events.
          payload: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload,
              record_type:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event being delivered. Internal transfer events are only emitted for
        # orders where the numbers are already active on another Telnyx account.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGING_HOSTED_NUMBERS_ORDERS_CREATED =
            T.let(
              :"messaging_hosted_numbers_orders.created",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_UPDATED =
            T.let(
              :"messaging_hosted_numbers_orders.updated",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_DELETED =
            T.let(
              :"messaging_hosted_numbers_orders.deleted",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_DETECTED =
            T.let(
              :"messaging_hosted_numbers_orders.internal_transfer_detected",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_APPROVAL_REQUESTED =
            T.let(
              :"messaging_hosted_numbers_orders.internal_transfer_approval_requested",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_APPROVED =
            T.let(
              :"messaging_hosted_numbers_orders.internal_transfer_approved",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_REJECTED =
            T.let(
              :"messaging_hosted_numbers_orders.internal_transfer_rejected",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )
          MESSAGING_HOSTED_NUMBERS_ORDERS_INTERNAL_TRANSFER_AUTO_APPROVED =
            T.let(
              :"messaging_hosted_numbers_orders.internal_transfer_auto_approved",
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Unix timestamp (seconds) by which the losing organization must respond before
          # auto-approval. Populated on internal-transfer events once an approval window has
          # been issued.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :approval_deadline

          # Approval decision for the internal transfer. Defaults to `pending` for
          # non-internal-transfer events.
          sig do
            returns(
              T.nilable(
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol
              )
            )
          end
          attr_reader :decision

          sig do
            params(
              decision:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::OrSymbol
            ).void
          end
          attr_writer :decision

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number
                ]
              )
            )
          end
          attr_reader :numbers

          sig do
            params(
              numbers:
                T::Array[
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::OrHash
                ]
            ).void
          end
          attr_writer :numbers

          # The ID of the hosted number order.
          sig { returns(T.nilable(String)) }
          attr_reader :order_id

          sig { params(order_id: String).void }
          attr_writer :order_id

          # Current status of the order.
          sig do
            returns(
              T.nilable(
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            )
          end
          attr_reader :order_status

          sig do
            params(
              order_status:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::OrSymbol
            ).void
          end
          attr_writer :order_status

          # The messaging profile associated with the order.
          sig { returns(T.nilable(String)) }
          attr_reader :profile_id

          sig { params(profile_id: String).void }
          attr_writer :profile_id

          # The organization that owns the order.
          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          # Payload delivered with every messaging*hosted_numbers_orders.\* event.
          # `approval_deadline` and `decision` are meaningful only for
          # `internal_transfer*\*` events.
          sig do
            params(
              approval_deadline: T.nilable(Integer),
              decision:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::OrSymbol,
              numbers:
                T::Array[
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::OrHash
                ],
              order_id: String,
              order_status:
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::OrSymbol,
              profile_id: String,
              user_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unix timestamp (seconds) by which the losing organization must respond before
            # auto-approval. Populated on internal-transfer events once an approval window has
            # been issued.
            approval_deadline: nil,
            # Approval decision for the internal transfer. Defaults to `pending` for
            # non-internal-transfer events.
            decision: nil,
            numbers: nil,
            # The ID of the hosted number order.
            order_id: nil,
            # Current status of the order.
            order_status: nil,
            # The messaging profile associated with the order.
            profile_id: nil,
            # The organization that owns the order.
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                approval_deadline: T.nilable(Integer),
                decision:
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol,
                numbers:
                  T::Array[
                    Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number
                  ],
                order_id: String,
                order_status:
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol,
                profile_id: String,
                user_id: String
              }
            )
          end
          def to_hash
          end

          # Approval decision for the internal transfer. Defaults to `pending` for
          # non-internal-transfer events.
          module Decision
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol
              )
            APPROVED =
              T.let(
                :approved,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Decision::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Number < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number,
                  Telnyx::Internal::AnyHash
                )
              end

            # Current status of this phone number within the order.
            sig do
              returns(
                T.nilable(
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # Phone number in +E.164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :value

            sig { params(value: String).void }
            attr_writer :value

            sig do
              params(
                status:
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Current status of this phone number within the order.
              status: nil,
              # Phone number in +E.164 format.
              value: nil
            )
            end

            sig do
              override.returns(
                {
                  status:
                    Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            # Current status of this phone number within the order.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DELETED =
                T.let(
                  :deleted,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_ACTIVATION =
                T.let(
                  :failed_activation,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_CARRIER_REJECTED =
                T.let(
                  :failed_carrier_rejected,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_INELIGIBLE_CARRIER =
                T.let(
                  :failed_ineligible_carrier,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_NUMBER_ALREADY_HOSTED =
                T.let(
                  :failed_number_already_hosted,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_NUMBER_NOT_FOUND =
                T.let(
                  :failed_number_not_found,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_OWNERSHIP_VERIFICATION =
                T.let(
                  :failed_ownership_verification,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              FAILED_TIMEOUT =
                T.let(
                  :failed_timeout,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              OWNERSHIP_SUCCESSFUL =
                T.let(
                  :ownership_successful,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              PROVISIONING =
                T.let(
                  :provisioning,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )
              SUCCESSFUL =
                T.let(
                  :successful,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::Number::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # Current status of the order.
          module OrderStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            PROVISIONING =
              T.let(
                :provisioning,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            SUCCESSFUL =
              T.let(
                :successful,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            DELETED =
              T.let(
                :deleted,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            CARRIER_REJECTED =
              T.let(
                :carrier_rejected,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            COMPLIANCE_REVIEW_FAILED =
              T.let(
                :compliance_review_failed,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            INCOMPLETE_DOCUMENTATION =
              T.let(
                :incomplete_documentation,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            INCORRECT_BILLING_INFORMATION =
              T.let(
                :incorrect_billing_information,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            INELIGIBLE_CARRIER =
              T.let(
                :ineligible_carrier,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            LOA_FILE_INVALID =
              T.let(
                :loa_file_invalid,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )
            LOA_FILE_SUCCESSFUL =
              T.let(
                :loa_file_successful,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::HostedNumberOrderEventWebhookEvent::Data::Payload::OrderStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::HostedNumberOrderEventWebhookEvent::Data::RecordType::TaggedSymbol
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
