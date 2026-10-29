# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class PayToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute connector_name
        #   The name of the pay connector configured in the Telnyx API. Must reference an
        #   existing pay connector for this organization.
        #
        #   @return [String]
        required :connector_name, String

        # @!attribute connector_parameters
        #   Custom key/value parameters forwarded to the pay connector as `parameters` in
        #   the processor request. String values may use `{{dynamic_variable}}` templating,
        #   resolved per call.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :connector_parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute currency
        #   Default currency for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute description
        #   Description of the pay tool shown to the assistant so it knows when to call the
        #   tool. Not sent to the payment connector — the per-call `description` argument
        #   the assistant passes is what reaches the processor.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute inter_digit_timeout_millis
        #   Time in milliseconds to wait between consecutive DTMF digits. Omitted means the
        #   platform default (5000) applies.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute max_attempts
        #   Maximum number of attempts for each payment collection step. Omitted means the
        #   platform default (3) applies.
        #
        #   @return [Integer, nil]
        optional :max_attempts, Integer

        # @!attribute min_postal_code_length
        #   Minimum number of digits the caller must enter when collecting a credit-card
        #   billing postal code. Applies only when `postal_code` prompts the caller. Omitted
        #   means the platform default (1) applies. The maximum number of digits collected
        #   is the greater of 10 and this value. This does not validate the length of a
        #   postal code supplied directly in `postal_code`.
        #
        #   @return [Integer, nil]
        optional :min_postal_code_length, Integer

        # @!attribute payment_method
        #   Default payment method for payments processed by this tool.
        #
        #   @return [String, nil]
        optional :payment_method, String

        # @!attribute postal_code
        #   Controls billing postal code collection for credit-card payments. Set to `false`
        #   to skip the postal code prompt without supplying a postal code to the payment
        #   connector (non-US cards, e.g. Irish Eircodes). Set to `true` to prompt the
        #   caller. Supply a non-empty string, such as `"90210"`, to use that postal code
        #   without prompting. This option does not affect ACH debit payments or payments
        #   using an existing token.
        #
        #   @return [String, Boolean, nil]
        optional :postal_code, union: -> { Telnyx::AI::PayToolParams::PostalCode }

        # @!attribute prompts
        #   Custom text-to-speech prompts keyed by payment collection step. The AI assistant
        #   merges its own card-number prompt into this map, matching on the same step keys.
        #
        #   @return [Telnyx::Models::AI::PayToolParams::Prompts, nil]
        optional :prompts, -> { Telnyx::AI::PayToolParams::Prompts }

        # @!attribute timeout_millis
        #   Time in milliseconds to wait for DTMF input for each collection step. Omitted
        #   means the platform default (5000) applies. Increase this for slower entry, e.g.
        #   a 16-digit card number.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute valid_card_types
        #   Restricts accepted card numbers to the listed card types. When the caller enters
        #   a card number that does not match one of the listed types, Pay treats the input
        #   as invalid and re-prompts for the card number.
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::PayToolParams::ValidCardType>, nil]
        optional :valid_card_types,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::PayToolParams::ValidCardType] }

        # @!method initialize(connector_name:, connector_parameters: nil, currency: nil, description: nil, inter_digit_timeout_millis: nil, max_attempts: nil, min_postal_code_length: nil, payment_method: nil, postal_code: nil, prompts: nil, timeout_millis: nil, valid_card_types: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::PayToolParams} for more details.
        #
        #   @param connector_name [String] The name of the pay connector configured in the Telnyx API. Must reference an ex
        #
        #   @param connector_parameters [Hash{Symbol=>Object}] Custom key/value parameters forwarded to the pay connector as `parameters` in th
        #
        #   @param currency [String] Default currency for payments processed by this tool.
        #
        #   @param description [String, nil] Description of the pay tool shown to the assistant so it knows when to call the
        #
        #   @param inter_digit_timeout_millis [Integer] Time in milliseconds to wait between consecutive DTMF digits. Omitted means the
        #
        #   @param max_attempts [Integer] Maximum number of attempts for each payment collection step. Omitted means the p
        #
        #   @param min_postal_code_length [Integer] Minimum number of digits the caller must enter when collecting a credit-card bil
        #
        #   @param payment_method [String] Default payment method for payments processed by this tool.
        #
        #   @param postal_code [String, Boolean] Controls billing postal code collection for credit-card payments. Set to `false`
        #
        #   @param prompts [Telnyx::Models::AI::PayToolParams::Prompts] Custom text-to-speech prompts keyed by payment collection step. The AI assistant
        #
        #   @param timeout_millis [Integer] Time in milliseconds to wait for DTMF input for each collection step. Omitted me
        #
        #   @param valid_card_types [Array<Symbol, Telnyx::Models::AI::PayToolParams::ValidCardType>] Restricts accepted card numbers to the listed card types. When the caller enters

        # Controls billing postal code collection for credit-card payments. Set to `false`
        # to skip the postal code prompt without supplying a postal code to the payment
        # connector (non-US cards, e.g. Irish Eircodes). Set to `true` to prompt the
        # caller. Supply a non-empty string, such as `"90210"`, to use that postal code
        # without prompting. This option does not affect ACH debit payments or payments
        # using an existing token.
        #
        # @see Telnyx::Models::AI::PayToolParams#postal_code
        module PostalCode
          extend Telnyx::Internal::Type::Union

          variant String

          variant Telnyx::Internal::Type::Boolean

          # @!method self.variants
          #   @return [Array(String, Boolean)]
        end

        # @see Telnyx::Models::AI::PayToolParams#prompts
        class Prompts < Telnyx::Internal::Type::BaseModel
          # @!attribute bank_account_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1>, nil]
          optional :bank_account_number,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::BankAccountNumber },
                   api_name: :"bank-account-number"

          # @!attribute bank_routing_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1>, nil]
          optional :bank_routing_number,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber },
                   api_name: :"bank-routing-number"

          # @!attribute expiration_date
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1>, nil]
          optional :expiration_date,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::ExpirationDate },
                   api_name: :"expiration-date"

          # @!attribute payment_card_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1>, nil]
          optional :payment_card_number,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber },
                   api_name: :"payment-card-number"

          # @!attribute postal_code
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1>, nil]
          optional :postal_code,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::PostalCode },
                   api_name: :"postal-code"

          # @!attribute security_code
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1>, nil]
          optional :security_code,
                   union: -> { Telnyx::AI::PayToolParams::Prompts::SecurityCode },
                   api_name: :"security-code"

          # @!method initialize(bank_account_number: nil, bank_routing_number: nil, expiration_date: nil, payment_card_number: nil, postal_code: nil, security_code: nil)
          #   Custom text-to-speech prompts keyed by payment collection step. The AI assistant
          #   merges its own card-number prompt into this map, matching on the same step keys.
          #
          #   @param bank_account_number [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param bank_routing_number [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param expiration_date [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param payment_card_number [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param postal_code [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param security_code [String, Array<Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1>] A default prompt string or an ordered list of qualified prompts.

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#bank_account_number
          module BankAccountNumber
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType, nil]
              optional :card_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType, nil]
              optional :error_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1}
              #   for more details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::BankAccountNumber::UnionMember1
              }]
          end

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#bank_routing_number
          module BankRoutingNumber
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType, nil]
              optional :card_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType, nil]
              optional :error_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1}
              #   for more details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::BankRoutingNumber::UnionMember1
              }]
          end

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#expiration_date
          module ExpirationDate
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType, nil]
              optional :card_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType, nil]
              optional :error_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1} for
              #   more details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::ExpirationDate::UnionMember1
              }]
          end

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#payment_card_number
          module PaymentCardNumber
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType, nil]
              optional :card_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType, nil]
              optional :error_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1}
              #   for more details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::PaymentCardNumber::UnionMember1
              }]
          end

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#postal_code
          module PostalCode
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType, nil]
              optional :card_type, enum: -> { Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType, nil]
              optional :error_type, enum: -> { Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1} for more
              #   details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::PostalCode::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::PostalCode::UnionMember1
              }]
          end

          # A default prompt string or an ordered list of qualified prompts.
          #
          # @see Telnyx::Models::AI::PayToolParams::Prompts#security_code
          module SecurityCode
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1Array }

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              # @!attribute text
              #   Text spoken for the payment collection step.
              #
              #   @return [String]
              required :text, String

              # @!attribute attempt
              #   Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g.
              #   `"2 3"`) for which this prompt applies. A prompt qualified with an attempt
              #   number above `max_attempts` (default 3) is rejected at write time — it could
              #   never play.
              #
              #   @return [String, nil]
              optional :attempt, String

              # @!attribute card_type
              #   Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType, nil]
              optional :card_type, enum: -> { Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType }

              # @!attribute error_type
              #   Step error for which this prompt applies.
              #
              #   @return [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType, nil]
              optional :error_type,
                       enum: -> { Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType }

              # @!method initialize(text:, attempt: nil, card_type: nil, error_type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1} for
              #   more details.
              #
              #   A text-to-speech prompt with optional matching qualifiers, mirroring the Voice
              #   API PayPrompt schema.
              #
              #   @param text [String] Text spoken for the payment collection step.
              #
              #   @param attempt [String] Space-separated 1-based attempt numbers (1-9 followed by digits only, e.g. `"2 3
              #
              #   @param card_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::CardType] Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              #   @param error_type [Symbol, Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1::ErrorType] Step error for which this prompt applies.

              # Lowercase, case-sensitive detected card type for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1#card_type
              module CardType
                extend Telnyx::Internal::Type::Enum

                VISA = :visa
                MASTERCARD = :mastercard
                AMEX = :amex
                OPTIMA = :optima
                DISCOVER = :discover
                DINERS_CLUB = :"diners-club"
                JCB = :jcb
                MAESTRO = :maestro
                ENROUTE = :enroute

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Step error for which this prompt applies.
              #
              # @see Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1#error_type
              module ErrorType
                extend Telnyx::Internal::Type::Enum

                TIMEOUT = :timeout
                INVALID_CARD_NUMBER = :"invalid-card-number"
                INVALID_CARD_TYPE = :"invalid-card-type"
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
            #   @return [Array(String, Array<Telnyx::Models::AI::PayToolParams::Prompts::SecurityCode::UnionMember1>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Array =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::PayToolParams::Prompts::SecurityCode::UnionMember1
              }]
          end
        end

        module ValidCardType
          extend Telnyx::Internal::Type::Enum

          VISA = :visa
          MASTERCARD = :mastercard
          AMEX = :amex
          MAESTRO = :maestro
          DISCOVER = :discover
          OPTIMA = :optima
          JCB = :jcb
          DINERS_CLUB = :"diners-club"
          ENROUTE = :enroute

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
