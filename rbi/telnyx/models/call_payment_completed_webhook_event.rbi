# typed: strong

module Telnyx
  module Models
    class CallPaymentCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallPaymentCompletedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallPaymentCompletedWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::CallPaymentCompletedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::CallPaymentCompletedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::CallPaymentCompletedWebhookEvent::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallPaymentCompletedWebhookEvent::Data,
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
              Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::OrSymbol
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
            T.nilable(Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload)
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_PAYMENT_COMPLETED =
            T.let(
              :"call.payment.completed",
              Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

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

          # Charge identifier returned for a successful charge transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :charge_id

          sig { params(charge_id: String).void }
          attr_writer :charge_id

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

          # Additional connector error information, when supplied by the processor.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::Variants
              )
            )
          end
          attr_reader :connector_error

          sig do
            params(
              connector_error:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::Variants
            ).void
          end
          attr_writer :connector_error

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

          # Error code returned by the payment connector or processor.
          sig { returns(T.nilable(String)) }
          attr_reader :pay_error_code

          sig { params(pay_error_code: String).void }
          attr_writer :pay_error_code

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
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            )
          end
          attr_reader :payment_card_type

          sig do
            params(
              payment_card_type:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::OrSymbol
            ).void
          end
          attr_writer :payment_card_type

          # Payment confirmation code returned by the processor, when available.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_confirmation_code

          sig { params(payment_confirmation_code: String).void }
          attr_writer :payment_confirmation_code

          # Name of the Pay connector used.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_connector

          sig { params(payment_connector: String).void }
          attr_writer :payment_connector

          # Step-level or processor error associated with the final result.
          sig { returns(T.nilable(String)) }
          attr_reader :payment_error

          sig { params(payment_error: String).void }
          attr_writer :payment_error

          # Payment method being collected.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )
            )
          end
          attr_reader :payment_method

          sig do
            params(
              payment_method:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::OrSymbol
            ).void
          end
          attr_writer :payment_method

          # Final Pay session result.
          sig do
            returns(
              T.nilable(
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            )
          end
          attr_reader :result

          sig do
            params(
              result:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::OrSymbol
            ).void
          end
          attr_writer :result

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

          # Token identifier returned for a successful tokenize transaction.
          sig { returns(T.nilable(String)) }
          attr_reader :token_id

          sig { params(token_id: String).void }
          attr_writer :token_id

          sig do
            params(
              bank_account_number: String,
              bank_account_type: String,
              bank_routing_number: String,
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              charge_id: String,
              client_state: String,
              connection_id: String,
              connector_error:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::Variants,
              expiration_date: String,
              from: String,
              pay_error_code: String,
              payment_card_number: String,
              payment_card_postal_code: String,
              payment_card_type:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::OrSymbol,
              payment_confirmation_code: String,
              payment_connector: String,
              payment_error: String,
              payment_method:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::OrSymbol,
              result:
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::OrSymbol,
              security_code: String,
              to: String,
              token_id: String
            ).returns(T.attached_class)
          end
          def self.new(
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
            # Charge identifier returned for a successful charge transaction.
            charge_id: nil,
            # Base64-encoded state received from the command.
            client_state: nil,
            # Call Control App ID used in the call.
            connection_id: nil,
            # Additional connector error information, when supplied by the processor.
            connector_error: nil,
            # Card expiration date in MMYY format.
            expiration_date: nil,
            # Number or SIP URI placing the call.
            from: nil,
            # Error code returned by the payment connector or processor.
            pay_error_code: nil,
            # Masked card number with only the last four digits visible.
            payment_card_number: nil,
            # Billing postal code collected from the caller.
            payment_card_postal_code: nil,
            # Detected card type. Present only for the recognized card brands listed below.
            payment_card_type: nil,
            # Payment confirmation code returned by the processor, when available.
            payment_confirmation_code: nil,
            # Name of the Pay connector used.
            payment_connector: nil,
            # Step-level or processor error associated with the final result.
            payment_error: nil,
            # Payment method being collected.
            payment_method: nil,
            # Final Pay session result.
            result: nil,
            # Fully masked card security code.
            security_code: nil,
            # Destination number or SIP URI of the call.
            to: nil,
            # Token identifier returned for a successful tokenize transaction.
            token_id: nil
          )
          end

          sig do
            override.returns(
              {
                bank_account_number: String,
                bank_account_type: String,
                bank_routing_number: String,
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                charge_id: String,
                client_state: String,
                connection_id: String,
                connector_error:
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::Variants,
                expiration_date: String,
                from: String,
                pay_error_code: String,
                payment_card_number: String,
                payment_card_postal_code: String,
                payment_card_type:
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol,
                payment_confirmation_code: String,
                payment_connector: String,
                payment_error: String,
                payment_method:
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol,
                result:
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol,
                security_code: String,
                to: String,
                token_id: String
              }
            )
          end
          def to_hash
          end

          # Additional connector error information, when supplied by the processor.
          module ConnectorError
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias { T.any(String, T::Hash[Symbol, T.anything]) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::Variants
                ]
              )
            end
            def self.variants
            end

            ConnectorErrorDetailMap =
              T.let(
                Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                Telnyx::Internal::Type::Converter
              )
          end

          # Detected card type. Present only for the recognized card brands listed below.
          module PaymentCardType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISA =
              T.let(
                :visa,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            MASTERCARD =
              T.let(
                :mastercard,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            AMEX =
              T.let(
                :amex,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            OPTIMA =
              T.let(
                :optima,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            DISCOVER =
              T.let(
                :discover,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            DINERS_CLUB =
              T.let(
                :"diners-club",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            JCB =
              T.let(
                :jcb,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            MAESTRO =
              T.let(
                :maestro,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )
            ENROUTE =
              T.let(
                :enroute,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType::TaggedSymbol
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
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_CARD =
              T.let(
                :"credit-card",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )
            ACH_DEBIT =
              T.let(
                :"ach-debit",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Final Pay session result.
          module Result
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCESS =
              T.let(
                :success,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            PAYMENT_CONNECTOR_ERROR =
              T.let(
                :"payment-connector-error",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            INTERNAL_ERROR =
              T.let(
                :"internal-error",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            TOO_MANY_FAILED_ATTEMPTS =
              T.let(
                :"too-many-failed-attempts",
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result::TaggedSymbol
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
                Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType::TaggedSymbol
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
