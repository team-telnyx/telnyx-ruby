# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#pay
      class ActionPayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute call_control_id
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute amount
        #   Amount to charge. Required when `transaction_type` is `charge`.
        #
        #   @return [Float, nil]
        optional :amount, Float

        # @!attribute client_state
        #   Base64-encoded state included in subsequent webhooks.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Idempotency key for the command. Telnyx ignores a duplicate command with the
        #   same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute connector_name
        #   Name of the Pay connector used to process the transaction.
        #
        #   @return [String, nil]
        optional :connector_name, String

        # @!attribute currency
        #   Currency used for the transaction. Pay currently supports USD only.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionPayParams::Currency, nil]
        optional :currency, enum: -> { Telnyx::Calls::ActionPayParams::Currency }

        # @!attribute description
        #   Optional description forwarded with the payment transaction.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute inter_digit_timeout_millis
        #   Time in milliseconds to wait between consecutive DTMF digits.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute language
        #   Language used for payment prompts.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute max_attempts
        #   Maximum number of attempts for each payment collection step.
        #
        #   @return [Integer, nil]
        optional :max_attempts, Integer

        # @!attribute metadata
        #   Metadata forwarded to the Pay connector.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute parameters
        #   Additional parameters forwarded to the Pay connector.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute payment_method
        #   Payment method to collect.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionPayParams::PaymentMethod, nil]
        optional :payment_method, enum: -> { Telnyx::Calls::ActionPayParams::PaymentMethod }

        # @!attribute payment_token
        #   Existing payment token. When supplied, payment-detail collection is skipped.
        #
        #   @return [String, nil]
        optional :payment_token, String

        # @!attribute prompts
        #   Custom text-to-speech prompts keyed by payment collection step.
        #
        #   @return [Telnyx::Models::Calls::ActionPayParams::Prompts, nil]
        optional :prompts, -> { Telnyx::Calls::ActionPayParams::Prompts }

        # @!attribute service_level
        #   Speech synthesis service level used for payment prompts. Pay defaults to
        #   `premium`.
        #
        #   @return [String, nil]
        optional :service_level, String

        # @!attribute timeout_millis
        #   Time in milliseconds to wait for DTMF input for each collection step.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute transaction_type
        #   Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is
        #   absent or zero and `charge` when `amount` is positive.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionPayParams::TransactionType, nil]
        optional :transaction_type, enum: -> { Telnyx::Calls::ActionPayParams::TransactionType }

        # @!attribute voice
        #   Voice used for payment prompts. Accepts `male`, `female`, or a provider voice in
        #   `<Provider>.<Model>.<VoiceId>` format, for example `AWS.Polly.Joanna` or
        #   `Telnyx.KokoroTTS.af`.
        #
        #   @return [String, nil]
        optional :voice, String

        # @!method initialize(call_control_id:, amount: nil, client_state: nil, command_id: nil, connector_name: nil, currency: nil, description: nil, inter_digit_timeout_millis: nil, language: nil, max_attempts: nil, metadata: nil, parameters: nil, payment_method: nil, payment_token: nil, prompts: nil, service_level: nil, timeout_millis: nil, transaction_type: nil, voice: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionPayParams} for more details.
        #
        #   @param call_control_id [String]
        #
        #   @param amount [Float] Amount to charge. Required when `transaction_type` is `charge`.
        #
        #   @param client_state [String] Base64-encoded state included in subsequent webhooks.
        #
        #   @param command_id [String] Idempotency key for the command. Telnyx ignores a duplicate command with the sam
        #
        #   @param connector_name [String] Name of the Pay connector used to process the transaction.
        #
        #   @param currency [Symbol, Telnyx::Models::Calls::ActionPayParams::Currency] Currency used for the transaction. Pay currently supports USD only.
        #
        #   @param description [String] Optional description forwarded with the payment transaction.
        #
        #   @param inter_digit_timeout_millis [Integer] Time in milliseconds to wait between consecutive DTMF digits.
        #
        #   @param language [String] Language used for payment prompts.
        #
        #   @param max_attempts [Integer] Maximum number of attempts for each payment collection step.
        #
        #   @param metadata [Hash{Symbol=>Object}] Metadata forwarded to the Pay connector.
        #
        #   @param parameters [Hash{Symbol=>Object}] Additional parameters forwarded to the Pay connector.
        #
        #   @param payment_method [Symbol, Telnyx::Models::Calls::ActionPayParams::PaymentMethod] Payment method to collect.
        #
        #   @param payment_token [String] Existing payment token. When supplied, payment-detail collection is skipped.
        #
        #   @param prompts [Telnyx::Models::Calls::ActionPayParams::Prompts] Custom text-to-speech prompts keyed by payment collection step.
        #
        #   @param service_level [String] Speech synthesis service level used for payment prompts. Pay defaults to `premiu
        #
        #   @param timeout_millis [Integer] Time in milliseconds to wait for DTMF input for each collection step.
        #
        #   @param transaction_type [Symbol, Telnyx::Models::Calls::ActionPayParams::TransactionType] Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is absen
        #
        #   @param voice [String] Voice used for payment prompts. Accepts `male`, `female`, or a provider voice in
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Currency used for the transaction. Pay currently supports USD only.
        module Currency
          extend Telnyx::Internal::Type::Enum

          USD = :USD
          USD_2 = :usd

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Payment method to collect.
        module PaymentMethod
          extend Telnyx::Internal::Type::Enum

          CREDIT_CARD = :"credit-card"
          ACH_DEBIT = :"ach-debit"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Prompts < Telnyx::Internal::Type::BaseModel
          # @!attribute bank_account_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :bank_account_number,
                   union: -> { Telnyx::Calls::PayPromptValue },
                   api_name: :"bank-account-number"

          # @!attribute bank_routing_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :bank_routing_number,
                   union: -> { Telnyx::Calls::PayPromptValue },
                   api_name: :"bank-routing-number"

          # @!attribute expiration_date
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :expiration_date, union: -> { Telnyx::Calls::PayPromptValue }, api_name: :"expiration-date"

          # @!attribute payment_card_number
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :payment_card_number,
                   union: -> { Telnyx::Calls::PayPromptValue },
                   api_name: :"payment-card-number"

          # @!attribute postal_code
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :postal_code, union: -> { Telnyx::Calls::PayPromptValue }, api_name: :"postal-code"

          # @!attribute security_code
          #   A default prompt string or an ordered list of qualified prompts.
          #
          #   @return [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>, nil]
          optional :security_code, union: -> { Telnyx::Calls::PayPromptValue }, api_name: :"security-code"

          # @!method initialize(bank_account_number: nil, bank_routing_number: nil, expiration_date: nil, payment_card_number: nil, postal_code: nil, security_code: nil)
          #   Custom text-to-speech prompts keyed by payment collection step.
          #
          #   @param bank_account_number [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param bank_routing_number [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param expiration_date [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param payment_card_number [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param postal_code [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
          #
          #   @param security_code [String, Array<Telnyx::Models::Calls::PayPromptValue::UnionMember1>] A default prompt string or an ordered list of qualified prompts.
        end

        # Transaction to perform. If omitted, Pay infers `tokenize` when `amount` is
        # absent or zero and `charge` when `amount` is positive.
        module TransactionType
          extend Telnyx::Internal::Type::Enum

          CHARGE = :charge
          TOKENIZE = :tokenize

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
