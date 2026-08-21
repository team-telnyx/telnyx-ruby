# typed: strong

module Telnyx
  module Models
    module Calls
      # A default prompt string or an ordered list of qualified prompts.
      module PayPromptValue
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              String,
              T::Array[Telnyx::Calls::PayPromptValue::PayPromptList]
            )
          end

        class PayPromptList < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::PayPromptValue::PayPromptList,
                Telnyx::Internal::AnyHash
              )
            end

          # Text spoken for the payment collection step.
          sig { returns(String) }
          attr_accessor :text

          # Space-separated 1-based attempt numbers for which this prompt applies.
          sig { returns(T.nilable(String)) }
          attr_reader :attempt

          sig { params(attempt: String).void }
          attr_writer :attempt

          # Lowercase, case-sensitive detected card type for which this prompt applies. Only
          # the listed brands are currently detected; accepted UnionPay and Maestro test
          # cards do not produce a card-type qualifier.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::OrSymbol
              )
            )
          end
          attr_reader :card_type

          sig do
            params(
              card_type:
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::OrSymbol
            ).void
          end
          attr_writer :card_type

          # Step error for which this prompt applies.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::OrSymbol
              )
            )
          end
          attr_reader :error_type

          sig do
            params(
              error_type:
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::OrSymbol
            ).void
          end
          attr_writer :error_type

          # A text-to-speech prompt with optional matching qualifiers.
          sig do
            params(
              text: String,
              attempt: String,
              card_type:
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::OrSymbol,
              error_type:
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Text spoken for the payment collection step.
            text:,
            # Space-separated 1-based attempt numbers for which this prompt applies.
            attempt: nil,
            # Lowercase, case-sensitive detected card type for which this prompt applies. Only
            # the listed brands are currently detected; accepted UnionPay and Maestro test
            # cards do not produce a card-type qualifier.
            card_type: nil,
            # Step error for which this prompt applies.
            error_type: nil
          )
          end

          sig do
            override.returns(
              {
                text: String,
                attempt: String,
                card_type:
                  Telnyx::Calls::PayPromptValue::PayPromptList::CardType::OrSymbol,
                error_type:
                  Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Lowercase, case-sensitive detected card type for which this prompt applies. Only
          # the listed brands are currently detected; accepted UnionPay and Maestro test
          # cards do not produce a card-type qualifier.
          module CardType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::PayPromptValue::PayPromptList::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISA =
              T.let(
                :visa,
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )
            MASTERCARD =
              T.let(
                :mastercard,
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )
            AMEX =
              T.let(
                :amex,
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )
            DISCOVER =
              T.let(
                :discover,
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )
            DINERS_CLUB =
              T.let(
                :"diners-club",
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )
            JCB =
              T.let(
                :jcb,
                Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::PayPromptValue::PayPromptList::CardType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Step error for which this prompt applies.
          module ErrorType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TIMEOUT =
              T.let(
                :timeout,
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_CARD_NUMBER =
              T.let(
                :"invalid-card-number",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_DATE =
              T.let(
                :"invalid-date",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_SECURITY_CODE =
              T.let(
                :"invalid-security-code",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_POSTAL_CODE =
              T.let(
                :"invalid-postal-code",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ROUTING_NUMBER =
              T.let(
                :"invalid-bank-routing-number",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT_NUMBER =
              T.let(
                :"invalid-bank-account-number",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )
            INPUT_MATCHING_FAILED =
              T.let(
                :"input-matching-failed",
                Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::PayPromptValue::PayPromptList::ErrorType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(T::Array[Telnyx::Calls::PayPromptValue::Variants])
        end
        def self.variants
        end

        PayPromptListArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Calls::PayPromptValue::PayPromptList
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
