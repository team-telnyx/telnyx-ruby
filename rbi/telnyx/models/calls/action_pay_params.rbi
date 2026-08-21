# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionPayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionPayParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        # Amount to charge. Required when `transaction_type` is `charge`.
        sig { returns(T.nilable(Float)) }
        attr_reader :amount

        sig { params(amount: Float).void }
        attr_writer :amount

        # Base64-encoded state included in subsequent webhooks.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Idempotency key for the command. Telnyx ignores a duplicate command with the
        # same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Name of the Pay connector used to process the transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :connector_name

        sig { params(connector_name: String).void }
        attr_writer :connector_name

        # Currency used for the transaction. Pay currently supports USD only.
        sig do
          returns(T.nilable(Telnyx::Calls::ActionPayParams::Currency::OrSymbol))
        end
        attr_reader :currency

        sig do
          params(
            currency: Telnyx::Calls::ActionPayParams::Currency::OrSymbol
          ).void
        end
        attr_writer :currency

        # Optional description forwarded with the payment transaction.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Time in milliseconds to wait between consecutive DTMF digits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # Language used for payment prompts.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Maximum number of attempts for each payment collection step.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_attempts

        sig { params(max_attempts: Integer).void }
        attr_writer :max_attempts

        # Metadata forwarded to the Pay connector.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # Additional parameters forwarded to the Pay connector.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :parameters

        sig { params(parameters: T::Hash[Symbol, T.anything]).void }
        attr_writer :parameters

        # Payment method to collect.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionPayParams::PaymentMethod::OrSymbol)
          )
        end
        attr_reader :payment_method

        sig do
          params(
            payment_method:
              Telnyx::Calls::ActionPayParams::PaymentMethod::OrSymbol
          ).void
        end
        attr_writer :payment_method

        # Existing payment token. When supplied, payment-detail collection is skipped.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_token

        sig { params(payment_token: String).void }
        attr_writer :payment_token

        # Custom text-to-speech prompts keyed by payment collection step.
        sig { returns(T.nilable(Telnyx::Calls::ActionPayParams::Prompts)) }
        attr_reader :prompts

        sig do
          params(prompts: Telnyx::Calls::ActionPayParams::Prompts::OrHash).void
        end
        attr_writer :prompts

        # Speech synthesis service level used for payment prompts. Pay defaults to
        # `premium`.
        sig { returns(T.nilable(String)) }
        attr_reader :service_level

        sig { params(service_level: String).void }
        attr_writer :service_level

        # Time in milliseconds to wait for DTMF input for each collection step.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is
        # absent or zero and `charge` when `amount` is positive.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionPayParams::TransactionType::OrSymbol)
          )
        end
        attr_reader :transaction_type

        sig do
          params(
            transaction_type:
              Telnyx::Calls::ActionPayParams::TransactionType::OrSymbol
          ).void
        end
        attr_writer :transaction_type

        # Restricts accepted card numbers to the listed card types. When the caller enters
        # a card number that does not match one of the listed types, Pay treats the input
        # as invalid and re-prompts for the card number. Cannot be used together with
        # `payment_token`.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Calls::ActionPayParams::ValidCardType::OrSymbol]
            )
          )
        end
        attr_reader :valid_card_types

        sig do
          params(
            valid_card_types:
              T::Array[Telnyx::Calls::ActionPayParams::ValidCardType::OrSymbol]
          ).void
        end
        attr_writer :valid_card_types

        # Voice used for payment prompts. Accepts `male`, `female`, or a provider voice in
        # `<Provider>.<Model>.<VoiceId>` format, for example `AWS.Polly.Joanna` or
        # `Telnyx.KokoroTTS.af`.
        sig { returns(T.nilable(String)) }
        attr_reader :voice

        sig { params(voice: String).void }
        attr_writer :voice

        sig do
          params(
            call_control_id: String,
            amount: Float,
            client_state: String,
            command_id: String,
            connector_name: String,
            currency: Telnyx::Calls::ActionPayParams::Currency::OrSymbol,
            description: String,
            inter_digit_timeout_millis: Integer,
            language: String,
            max_attempts: Integer,
            metadata: T::Hash[Symbol, T.anything],
            parameters: T::Hash[Symbol, T.anything],
            payment_method:
              Telnyx::Calls::ActionPayParams::PaymentMethod::OrSymbol,
            payment_token: String,
            prompts: Telnyx::Calls::ActionPayParams::Prompts::OrHash,
            service_level: String,
            timeout_millis: Integer,
            transaction_type:
              Telnyx::Calls::ActionPayParams::TransactionType::OrSymbol,
            valid_card_types:
              T::Array[Telnyx::Calls::ActionPayParams::ValidCardType::OrSymbol],
            voice: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # Amount to charge. Required when `transaction_type` is `charge`.
          amount: nil,
          # Base64-encoded state included in subsequent webhooks.
          client_state: nil,
          # Idempotency key for the command. Telnyx ignores a duplicate command with the
          # same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Name of the Pay connector used to process the transaction.
          connector_name: nil,
          # Currency used for the transaction. Pay currently supports USD only.
          currency: nil,
          # Optional description forwarded with the payment transaction.
          description: nil,
          # Time in milliseconds to wait between consecutive DTMF digits.
          inter_digit_timeout_millis: nil,
          # Language used for payment prompts.
          language: nil,
          # Maximum number of attempts for each payment collection step.
          max_attempts: nil,
          # Metadata forwarded to the Pay connector.
          metadata: nil,
          # Additional parameters forwarded to the Pay connector.
          parameters: nil,
          # Payment method to collect.
          payment_method: nil,
          # Existing payment token. When supplied, payment-detail collection is skipped.
          payment_token: nil,
          # Custom text-to-speech prompts keyed by payment collection step.
          prompts: nil,
          # Speech synthesis service level used for payment prompts. Pay defaults to
          # `premium`.
          service_level: nil,
          # Time in milliseconds to wait for DTMF input for each collection step.
          timeout_millis: nil,
          # Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is
          # absent or zero and `charge` when `amount` is positive.
          transaction_type: nil,
          # Restricts accepted card numbers to the listed card types. When the caller enters
          # a card number that does not match one of the listed types, Pay treats the input
          # as invalid and re-prompts for the card number. Cannot be used together with
          # `payment_token`.
          valid_card_types: nil,
          # Voice used for payment prompts. Accepts `male`, `female`, or a provider voice in
          # `<Provider>.<Model>.<VoiceId>` format, for example `AWS.Polly.Joanna` or
          # `Telnyx.KokoroTTS.af`.
          voice: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              amount: Float,
              client_state: String,
              command_id: String,
              connector_name: String,
              currency: Telnyx::Calls::ActionPayParams::Currency::OrSymbol,
              description: String,
              inter_digit_timeout_millis: Integer,
              language: String,
              max_attempts: Integer,
              metadata: T::Hash[Symbol, T.anything],
              parameters: T::Hash[Symbol, T.anything],
              payment_method:
                Telnyx::Calls::ActionPayParams::PaymentMethod::OrSymbol,
              payment_token: String,
              prompts: Telnyx::Calls::ActionPayParams::Prompts,
              service_level: String,
              timeout_millis: Integer,
              transaction_type:
                Telnyx::Calls::ActionPayParams::TransactionType::OrSymbol,
              valid_card_types:
                T::Array[
                  Telnyx::Calls::ActionPayParams::ValidCardType::OrSymbol
                ],
              voice: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Currency used for the transaction. Pay currently supports USD only.
        module Currency
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionPayParams::Currency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USD_UPPERCASE =
            T.let(:USD, Telnyx::Calls::ActionPayParams::Currency::TaggedSymbol)
          USD_LOWERCASE =
            T.let(:usd, Telnyx::Calls::ActionPayParams::Currency::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionPayParams::Currency::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Payment method to collect.
        module PaymentMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionPayParams::PaymentMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_CARD =
            T.let(
              :"credit-card",
              Telnyx::Calls::ActionPayParams::PaymentMethod::TaggedSymbol
            )
          ACH_DEBIT =
            T.let(
              :"ach-debit",
              Telnyx::Calls::ActionPayParams::PaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionPayParams::PaymentMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Prompts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionPayParams::Prompts,
                Telnyx::Internal::AnyHash
              )
            end

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :bank_account_number

          sig do
            params(
              bank_account_number: Telnyx::Calls::PayPromptValue::Variants
            ).void
          end
          attr_writer :bank_account_number

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :bank_routing_number

          sig do
            params(
              bank_routing_number: Telnyx::Calls::PayPromptValue::Variants
            ).void
          end
          attr_writer :bank_routing_number

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :expiration_date

          sig do
            params(
              expiration_date: Telnyx::Calls::PayPromptValue::Variants
            ).void
          end
          attr_writer :expiration_date

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :payment_card_number

          sig do
            params(
              payment_card_number: Telnyx::Calls::PayPromptValue::Variants
            ).void
          end
          attr_writer :payment_card_number

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :postal_code

          sig do
            params(postal_code: Telnyx::Calls::PayPromptValue::Variants).void
          end
          attr_writer :postal_code

          # A default prompt string or an ordered list of qualified prompts.
          sig { returns(T.nilable(Telnyx::Calls::PayPromptValue::Variants)) }
          attr_reader :security_code

          sig do
            params(security_code: Telnyx::Calls::PayPromptValue::Variants).void
          end
          attr_writer :security_code

          # Custom text-to-speech prompts keyed by payment collection step.
          sig do
            params(
              bank_account_number: Telnyx::Calls::PayPromptValue::Variants,
              bank_routing_number: Telnyx::Calls::PayPromptValue::Variants,
              expiration_date: Telnyx::Calls::PayPromptValue::Variants,
              payment_card_number: Telnyx::Calls::PayPromptValue::Variants,
              postal_code: Telnyx::Calls::PayPromptValue::Variants,
              security_code: Telnyx::Calls::PayPromptValue::Variants
            ).returns(T.attached_class)
          end
          def self.new(
            # A default prompt string or an ordered list of qualified prompts.
            bank_account_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            bank_routing_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            expiration_date: nil,
            # A default prompt string or an ordered list of qualified prompts.
            payment_card_number: nil,
            # A default prompt string or an ordered list of qualified prompts.
            postal_code: nil,
            # A default prompt string or an ordered list of qualified prompts.
            security_code: nil
          )
          end

          sig do
            override.returns(
              {
                bank_account_number: Telnyx::Calls::PayPromptValue::Variants,
                bank_routing_number: Telnyx::Calls::PayPromptValue::Variants,
                expiration_date: Telnyx::Calls::PayPromptValue::Variants,
                payment_card_number: Telnyx::Calls::PayPromptValue::Variants,
                postal_code: Telnyx::Calls::PayPromptValue::Variants,
                security_code: Telnyx::Calls::PayPromptValue::Variants
              }
            )
          end
          def to_hash
          end
        end

        # Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is
        # absent or zero and `charge` when `amount` is positive.
        module TransactionType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionPayParams::TransactionType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHARGE =
            T.let(
              :charge,
              Telnyx::Calls::ActionPayParams::TransactionType::TaggedSymbol
            )
          TOKENIZE =
            T.let(
              :tokenize,
              Telnyx::Calls::ActionPayParams::TransactionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionPayParams::TransactionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ValidCardType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionPayParams::ValidCardType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VISA =
            T.let(
              :visa,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          MASTERCARD =
            T.let(
              :mastercard,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          AMEX =
            T.let(
              :amex,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          MAESTRO =
            T.let(
              :maestro,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          DISCOVER =
            T.let(
              :discover,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          OPTIMA =
            T.let(
              :optima,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          JCB =
            T.let(
              :jcb,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          DINERS_CLUB =
            T.let(
              :"diners-club",
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )
          ENROUTE =
            T.let(
              :enroute,
              Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionPayParams::ValidCardType::TaggedSymbol
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
