# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MachinePayments#account_credit
    class MachinePaymentAccountCreditResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   An account-credit transaction settled through the Machine Payment Protocol.
      #
      #   @return [Telnyx::Models::MachinePaymentAccountCreditResponse::Data, nil]
      optional :data, -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MachinePaymentAccountCreditResponse::Data] An account-credit transaction settled through the Machine Payment Protocol.

      # @see Telnyx::Models::MachinePaymentAccountCreditResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the account-credit transaction.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_id
        #   Identifier of the credited Telnyx account. Derived from the authenticated user
        #   on the initial request and from the verified payment credential on a paid retry
        #   — never from the request body.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   Credited amount as a decimal string with two fractional digits.
        #
        #   @return [String]
        required :amount, String

        # @!attribute currency
        #   ISO 4217 currency code of the credited amount (currently always USD).
        #
        #   @return [String]
        required :currency, String

        # @!attribute payment_source
        #   Payment source identifier distinguishing machine payments from other
        #   account-credit sources.
        #
        #   @return [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource]
        required :payment_source,
                 enum: -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource }

        # @!attribute record_type
        #   Record type identifier.
        #
        #   @return [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType }

        # @!attribute created
        #   True when this response created a new account credit, false when an existing
        #   transaction was returned for a duplicate paid retry.
        #
        #   @return [Boolean, nil]
        optional :created, Telnyx::Internal::Type::Boolean

        # @!attribute created_at
        #   ISO 8601 timestamp when the transaction was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute mpp_resource
        #   Machine Payment Protocol resource identifier the payment credential was bound
        #   to.
        #
        #   @return [String, nil]
        optional :mpp_resource, String, nil?: true

        # @!attribute payment_intent_id
        #   Stripe PaymentIntent identifier for Stripe settlements. Absent for Tempo
        #   settlements.
        #
        #   @return [String, nil]
        optional :payment_intent_id, String, nil?: true

        # @!attribute payment_method
        #   Payment method used by the provider: `stripe_spt` for Stripe Shared Payment
        #   Token payments, `tempo_usdc` for Tempo USDC payments.
        #
        #   @return [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod, nil]
        optional :payment_method,
                 enum: -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod },
                 nil?: true

        # @!attribute provider
        #   Upstream payment provider that settled the payment.
        #
        #   @return [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider, nil]
        optional :provider,
                 enum: -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider },
                 nil?: true

        # @!attribute receipt_reference
        #   Provider receipt reference: the Stripe PaymentIntent identifier for Stripe
        #   settlements, or the on-chain transaction hash for Tempo settlements.
        #
        #   @return [String, nil]
        optional :receipt_reference, String, nil?: true

        # @!attribute status
        #   Status of the transaction. Successful machine payment credits are recorded as
        #   `settled`.
        #
        #   @return [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status, nil]
        optional :status,
                 enum: -> { Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status },
                 nil?: true

        # @!method initialize(id:, account_id:, amount:, currency:, payment_source:, record_type:, created: nil, created_at: nil, mpp_resource: nil, payment_intent_id: nil, payment_method: nil, provider: nil, receipt_reference: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MachinePaymentAccountCreditResponse::Data} for more details.
        #
        #   An account-credit transaction settled through the Machine Payment Protocol.
        #
        #   @param id [String] Unique identifier of the account-credit transaction.
        #
        #   @param account_id [String] Identifier of the credited Telnyx account. Derived from the authenticated user o
        #
        #   @param amount [String] Credited amount as a decimal string with two fractional digits.
        #
        #   @param currency [String] ISO 4217 currency code of the credited amount (currently always USD).
        #
        #   @param payment_source [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentSource] Payment source identifier distinguishing machine payments from other account-cre
        #
        #   @param record_type [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::RecordType] Record type identifier.
        #
        #   @param created [Boolean] True when this response created a new account credit, false when an existing tra
        #
        #   @param created_at [Time] ISO 8601 timestamp when the transaction was created.
        #
        #   @param mpp_resource [String, nil] Machine Payment Protocol resource identifier the payment credential was bound to
        #
        #   @param payment_intent_id [String, nil] Stripe PaymentIntent identifier for Stripe settlements. Absent for Tempo settlem
        #
        #   @param payment_method [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::PaymentMethod, nil] Payment method used by the provider: `stripe_spt` for Stripe Shared Payment Toke
        #
        #   @param provider [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Provider, nil] Upstream payment provider that settled the payment.
        #
        #   @param receipt_reference [String, nil] Provider receipt reference: the Stripe PaymentIntent identifier for Stripe settl
        #
        #   @param status [Symbol, Telnyx::Models::MachinePaymentAccountCreditResponse::Data::Status, nil] Status of the transaction. Successful machine payment credits are recorded as `s

        # Payment source identifier distinguishing machine payments from other
        # account-credit sources.
        #
        # @see Telnyx::Models::MachinePaymentAccountCreditResponse::Data#payment_source
        module PaymentSource
          extend Telnyx::Internal::Type::Enum

          MACHINE_PAYMENT = :machine_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Record type identifier.
        #
        # @see Telnyx::Models::MachinePaymentAccountCreditResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          MACHINE_PAYMENT_ACCOUNT_CREDIT = :machine_payment_account_credit

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Payment method used by the provider: `stripe_spt` for Stripe Shared Payment
        # Token payments, `tempo_usdc` for Tempo USDC payments.
        #
        # @see Telnyx::Models::MachinePaymentAccountCreditResponse::Data#payment_method
        module PaymentMethod
          extend Telnyx::Internal::Type::Enum

          STRIPE_SPT = :stripe_spt
          TEMPO_USDC = :tempo_usdc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Upstream payment provider that settled the payment.
        #
        # @see Telnyx::Models::MachinePaymentAccountCreditResponse::Data#provider
        module Provider
          extend Telnyx::Internal::Type::Enum

          STRIPE = :stripe
          TEMPO = :tempo

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Status of the transaction. Successful machine payment credits are recorded as
        # `settled`.
        #
        # @see Telnyx::Models::MachinePaymentAccountCreditResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          NEW = :new
          PROCESSING = :processing
          SETTLED = :settled
          EXPIRED = :expired
          INVALID = :invalid

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
