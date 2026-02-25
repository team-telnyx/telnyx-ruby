# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Payment#create_stored_payment_transaction
    class PaymentCreateStoredPaymentTransactionResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data]

      # @see Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute amount_cents
        #
        #   @return [Integer, nil]
        optional :amount_cents, Integer

        # @!attribute amount_currency
        #
        #   @return [String, nil]
        optional :amount_currency, String

        # @!attribute auto_recharge
        #
        #   @return [Boolean, nil]
        optional :auto_recharge, Telnyx::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute processor_status
        #
        #   @return [String, nil]
        optional :processor_status, String

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType, nil]
        optional :record_type,
                 enum: -> { Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType }

        # @!attribute transaction_processing_type
        #
        #   @return [Symbol, Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType, nil]
        optional :transaction_processing_type,
                 enum: -> { Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType }

        # @!method initialize(id: nil, amount_cents: nil, amount_currency: nil, auto_recharge: nil, created_at: nil, processor_status: nil, record_type: nil, transaction_processing_type: nil)
        #   @param id [String]
        #   @param amount_cents [Integer]
        #   @param amount_currency [String]
        #   @param auto_recharge [Boolean]
        #   @param created_at [Time]
        #   @param processor_status [String]
        #   @param record_type [Symbol, Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::RecordType]
        #   @param transaction_processing_type [Symbol, Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data::TransactionProcessingType]

        # @see Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TRANSACTION = :transaction

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data#transaction_processing_type
        module TransactionProcessingType
          extend Telnyx::Internal::Type::Enum

          STORED_PAYMENT = :stored_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
