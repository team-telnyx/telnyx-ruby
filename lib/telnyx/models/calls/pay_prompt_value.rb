# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # A default prompt string or an ordered list of qualified prompts.
      module PayPromptValue
        extend Telnyx::Internal::Type::Union

        variant String

        variant -> { Telnyx::Models::Calls::PayPromptValue::UnionMember1Array }

        class UnionMember1 < Telnyx::Internal::Type::BaseModel
          # @!attribute text
          #   Text spoken for the payment collection step.
          #
          #   @return [String]
          required :text, String

          # @!attribute attempt
          #   Space-separated 1-based attempt numbers for which this prompt applies.
          #
          #   @return [String, nil]
          optional :attempt, String

          # @!attribute card_type
          #   Lowercase, case-sensitive detected card type for which this prompt applies. Only
          #   the listed brands are currently detected; accepted UnionPay and Maestro test
          #   cards do not produce a card-type qualifier.
          #
          #   @return [Symbol, Telnyx::Models::Calls::PayPromptValue::UnionMember1::CardType, nil]
          optional :card_type, enum: -> { Telnyx::Calls::PayPromptValue::UnionMember1::CardType }

          # @!attribute error_type
          #   Step error for which this prompt applies.
          #
          #   @return [Symbol, Telnyx::Models::Calls::PayPromptValue::UnionMember1::ErrorType, nil]
          optional :error_type, enum: -> { Telnyx::Calls::PayPromptValue::UnionMember1::ErrorType }

          # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::PayPromptValue::UnionMember1} for more details.
          #
          #   A text-to-speech prompt with optional matching qualifiers.
          #
          #   @param text [String] Text spoken for the payment collection step.
          #
          #   @param attempt [String] Space-separated 1-based attempt numbers for which this prompt applies.
          #
          #   @param card_type [Symbol, Telnyx::Models::Calls::PayPromptValue::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies. Only
          #
          #   @param error_type [Symbol, Telnyx::Models::Calls::PayPromptValue::UnionMember1::ErrorType] Step error for which this prompt applies.

          # Lowercase, case-sensitive detected card type for which this prompt applies. Only
          # the listed brands are currently detected; accepted UnionPay and Maestro test
          # cards do not produce a card-type qualifier.
          #
          # @see Telnyx::Models::Calls::PayPromptValue::UnionMember1#card_type
          module CardType
            extend Telnyx::Internal::Type::Enum

            VISA = :visa
            MASTERCARD = :mastercard
            AMEX = :amex
            DISCOVER = :discover
            DINERS_CLUB = :"diners-club"
            JCB = :jcb

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Step error for which this prompt applies.
          #
          # @see Telnyx::Models::Calls::PayPromptValue::UnionMember1#error_type
          module ErrorType
            extend Telnyx::Internal::Type::Enum

            TIMEOUT = :timeout
            INVALID_CARD_NUMBER = :"invalid-card-number"
            INVALID_DATE = :"invalid-date"
            INVALID_SECURITY_CODE = :"invalid-security-code"
            INVALID_POSTAL_CODE = :"invalid-postal-code"
            INVALID_BANK_ROUTING_NUMBER = :"invalid-bank-routing-number"
            INVALID_BANK_ACCOUNT_NUMBER = :"invalid-bank-account-number"
            INPUT_MATCHING_FAILED = :"input-matching-failed"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>)]

        # @type [Telnyx::Internal::Type::Converter]
        UnionMember1Array = Telnyx::Internal::Type::ArrayOf[-> {
          Telnyx::Calls::PayPromptValue::UnionMember1
        }]
      end
    end
  end
end
