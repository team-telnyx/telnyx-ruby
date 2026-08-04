# typed: strong

module Telnyx
  module Models
    class CallPaymentProgressWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallPaymentProgressWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallPaymentProgressWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallPaymentProgressWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallPaymentProgressWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallPaymentProgressWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallPaymentProgressWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(
            T.nilable(Telnyx::CallPaymentProgressWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
          # ISO 8601 datetime when the event occurred.
          occurred_at: nil,
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
                Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallPaymentProgressWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event being delivered.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CallPaymentProgressWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_PAYMENT_PROGRESS =
            T.let(
              :"call.payment.progress",
              Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallPaymentProgressWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Current 1-based attempt number for the step.
          sig { returns(T.nilable(Integer)) }
          attr_reader :attempt

          sig { params(attempt: Integer).void }
          attr_writer :attempt

          # Masked bank account number with only the last two digits visible.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_account_number

          sig { params(bank_account_number: String).void }
          attr_writer :bank_account_number

          # Bank account type, when available.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_account_type

          sig { params(bank_account_type: String).void }
          attr_writer :bank_account_type

          # Bank routing number collected from the caller.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_routing_number

          sig { params(bank_routing_number: String).void }
          attr_writer :bank_routing_number

          # Call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

          # ID unique to the call leg.
          sig { returns(T.nilable(String)) }
          attr_reader :call_leg_id

          sig { params(call_leg_id: String).void }
          attr_writer :call_leg_id

          # ID shared by related call legs in the same call session.
          sig { returns(T.nilable(String)) }
          attr_reader :call_session_id

          sig { params(call_session_id: String).void }
          attr_writer :call_session_id

          # Base64-encoded state received from the command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Step-level error when payment collection fails.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            )
          end
          attr_reader :error_type

          sig do
            params(
              error_type:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::OrSymbol
            ).void
          end
          attr_writer :error_type

          # Card expiration date in MMYY format.
          sig { returns(T.nilable(String)) }
          attr_reader :expiration_date

          sig { params(expiration_date: String).void }
          attr_writer :expiration_date

          # Number or SIP URI placing the call.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # Masked card number with only the last four digits visible.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_card_number

          sig { params(payment_card_number: String).void }
          attr_writer :payment_card_number

          # Billing postal code collected from the caller.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_card_postal_code

          sig { params(payment_card_postal_code: String).void }
          attr_writer :payment_card_postal_code

          # Detected card type. Present only for the recognized card brands listed below.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            )
          end
          attr_reader :payment_card_type

          sig do
            params(
              payment_card_type:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::OrSymbol
            ).void
          end
          attr_writer :payment_card_type

          # Name of the Pay connector used.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_connector

          sig { params(payment_connector: String).void }
          attr_writer :payment_connector

          # Payment method being collected.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )
            )
          end
          attr_reader :payment_method

          sig do
            params(
              payment_method:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::OrSymbol
            ).void
          end
          attr_writer :payment_method

          # Status of the current payment step.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol
              )
            )
          end
          attr_reader :payment_status

          sig do
            params(
              payment_status:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::OrSymbol
            ).void
          end
          attr_writer :payment_status

          # Current payment collection or processing step.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            )
          end
          attr_reader :payment_step

          sig do
            params(
              payment_step:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::OrSymbol
            ).void
          end
          attr_writer :payment_step

          # Fully masked card security code.
          sig { returns(T.nilable(String)) }
          attr_reader :security_code

          sig { params(security_code: String).void }
          attr_writer :security_code

          # Destination number or SIP URI of the call.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              attempt: Integer,
              bank_account_number: String,
              bank_account_type: String,
              bank_routing_number: String,
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              error_type:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::OrSymbol,
              expiration_date: String,
              from: String,
              payment_card_number: String,
              payment_card_postal_code: String,
              payment_card_type:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::OrSymbol,
              payment_connector: String,
              payment_method:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::OrSymbol,
              payment_status:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::OrSymbol,
              payment_step:
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::OrSymbol,
              security_code: String,
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Current 1-based attempt number for the step.
            attempt: nil,
            # Masked bank account number with only the last two digits visible.
            bank_account_number: nil,
            # Bank account type, when available.
            bank_account_type: nil,
            # Bank routing number collected from the caller.
            bank_routing_number: nil,
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID unique to the call leg.
            call_leg_id: nil,
            # ID shared by related call legs in the same call session.
            call_session_id: nil,
            # Base64-encoded state received from the command.
            client_state: nil,
            # Call Control App ID used in the call.
            connection_id: nil,
            # Step-level error when payment collection fails.
            error_type: nil,
            # Card expiration date in MMYY format.
            expiration_date: nil,
            # Number or SIP URI placing the call.
            from: nil,
            # Masked card number with only the last four digits visible.
            payment_card_number: nil,
            # Billing postal code collected from the caller.
            payment_card_postal_code: nil,
            # Detected card type. Present only for the recognized card brands listed below.
            payment_card_type: nil,
            # Name of the Pay connector used.
            payment_connector: nil,
            # Payment method being collected.
            payment_method: nil,
            # Status of the current payment step.
            payment_status: nil,
            # Current payment collection or processing step.
            payment_step: nil,
            # Fully masked card security code.
            security_code: nil,
            # Destination number or SIP URI of the call.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                attempt: Integer,
                bank_account_number: String,
                bank_account_type: String,
                bank_routing_number: String,
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: String,
                connection_id: String,
                error_type:
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol,
                expiration_date: String,
                from: String,
                payment_card_number: String,
                payment_card_postal_code: String,
                payment_card_type:
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol,
                payment_connector: String,
                payment_method:
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol,
                payment_status:
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol,
                payment_step:
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol,
                security_code: String,
                to: String
              }
            )
          end
          def to_hash
          end

          # Step-level error when payment collection fails.
          module ErrorType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TIMEOUT =
              T.let(
                :timeout,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_CARD_NUMBER =
              T.let(
                :"invalid-card-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_DATE =
              T.let(
                :"invalid-date",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_SECURITY_CODE =
              T.let(
                :"invalid-security-code",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_POSTAL_CODE =
              T.let(
                :"invalid-postal-code",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ROUTING_NUMBER =
              T.let(
                :"invalid-bank-routing-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT_NUMBER =
              T.let(
                :"invalid-bank-account-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )
            INPUT_MATCHING_FAILED =
              T.let(
                :"input-matching-failed",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Detected card type. Present only for the recognized card brands listed below.
          module PaymentCardType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISA =
              T.let(
                :visa,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            MASTERCARD =
              T.let(
                :mastercard,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            AMEX =
              T.let(
                :amex,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            DISCOVER =
              T.let(
                :discover,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            DINERS_CLUB =
              T.let(
                :"diners-club",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            JCB =
              T.let(
                :jcb,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Payment method being collected.
          module PaymentMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_CARD =
              T.let(
                :"credit-card",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )
            ACH_DEBIT =
              T.let(
                :"ach-debit",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Status of the current payment step.
          module PaymentStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPLETED =
              T.let(
                :completed,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Current payment collection or processing step.
          module PaymentStep
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_CARD_NUMBER =
              T.let(
                :"payment-card-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            EXPIRATION_DATE =
              T.let(
                :"expiration-date",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            POSTAL_CODE =
              T.let(
                :"postal-code",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            SECURITY_CODE =
              T.let(
                :"security-code",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            BANK_ROUTING_NUMBER =
              T.let(
                :"bank-routing-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            BANK_ACCOUNT_NUMBER =
              T.let(
                :"bank-account-number",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )
            PAYMENT_PROCESSING =
              T.let(
                :"payment-processing",
                Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep::TaggedSymbol
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
                Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType::TaggedSymbol
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
