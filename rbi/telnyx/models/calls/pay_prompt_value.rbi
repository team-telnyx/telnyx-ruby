# typed: strong

module Telnyx
  module Models
    module Calls
      # A default prompt string or an ordered list of qualified prompts.
      module PayPromptValue
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(String, T::Array[Telnyx::Calls::PayPromptValue::UnionMember1])
          end

        class UnionMember1 < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::PayPromptValue::UnionMember1,
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
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::OrSymbol
              )
            )
          end
          attr_reader :card_type

          sig do
            params(
              card_type:
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::OrSymbol
            ).void
          end
          attr_writer :card_type

          # Step error for which this prompt applies.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::OrSymbol
              )
            )
          end
          attr_reader :error_type

          sig do
            params(
              error_type:
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::OrSymbol
            ).void
          end
          attr_writer :error_type

          # A text-to-speech prompt with optional matching qualifiers.
          sig do
            params(
              text: String,
              attempt: String,
              card_type:
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::OrSymbol,
              error_type:
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::OrSymbol
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
                  Telnyx::Calls::PayPromptValue::UnionMember1::CardType::OrSymbol,
                error_type:
                  Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::OrSymbol
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
                  Telnyx::Calls::PayPromptValue::UnionMember1::CardType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VISA =
              T.let(
                :visa,
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )
            MASTERCARD =
              T.let(
                :mastercard,
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )
            AMEX =
              T.let(
                :amex,
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )
            DISCOVER =
              T.let(
                :discover,
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )
            DINERS_CLUB =
              T.let(
                :"diners-club",
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )
            JCB =
              T.let(
                :jcb,
                Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::PayPromptValue::UnionMember1::CardType::TaggedSymbol
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
                  Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TIMEOUT =
              T.let(
                :timeout,
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_CARD_NUMBER =
              T.let(
                :"invalid-card-number",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_DATE =
              T.let(
                :"invalid-date",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_SECURITY_CODE =
              T.let(
                :"invalid-security-code",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_POSTAL_CODE =
              T.let(
                :"invalid-postal-code",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ROUTING_NUMBER =
              T.let(
                :"invalid-bank-routing-number",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INVALID_BANK_ACCOUNT_NUMBER =
              T.let(
                :"invalid-bank-account-number",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )
            INPUT_MATCHING_FAILED =
              T.let(
                :"input-matching-failed",
                Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType::TaggedSymbol
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

        UnionMember1Array =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Calls::PayPromptValue::UnionMember1
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
