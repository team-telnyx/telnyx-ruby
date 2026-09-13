# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      module CreditAccount
        # @see Telnyx::Resources::X402::CreditAccount::Payments#list
        class X402TransactionRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Unique transaction identifier.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute amount
          #   The transaction amount in the specified currency.
          #
          #   @return [String, nil]
          optional :amount, String

          # @!attribute created_at
          #   ISO 8601 timestamp when the transaction was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute currency
          #   The currency of the transaction amount (e.g. USD).
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute quote_id
          #   The original quote ID associated with this transaction.
          #
          #   @return [String, nil]
          optional :quote_id, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::X402::CreditAccount::X402TransactionRecord::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType }

          # @!attribute status
          #   The settlement status of the transaction. x402 transactions are created after
          #   successful on-chain settlement, so the status is `settled`.
          #
          #   @return [Symbol, Telnyx::Models::X402::CreditAccount::X402TransactionRecord::Status, nil]
          optional :status, enum: -> { Telnyx::X402::CreditAccount::X402TransactionRecord::Status }

          # @!attribute tx_hash
          #   The on-chain transaction hash, if available.
          #
          #   @return [String, nil]
          optional :tx_hash, String, nil?: true

          # @!attribute updated_at
          #   ISO 8601 timestamp when the transaction was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, amount: nil, created_at: nil, currency: nil, quote_id: nil, record_type: nil, status: nil, tx_hash: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::X402::CreditAccount::X402TransactionRecord} for more details.
          #
          #   An x402 payment transaction.
          #
          #   @param id [String] Unique transaction identifier.
          #
          #   @param amount [String] The transaction amount in the specified currency.
          #
          #   @param created_at [Time] ISO 8601 timestamp when the transaction was created.
          #
          #   @param currency [String] The currency of the transaction amount (e.g. USD).
          #
          #   @param quote_id [String] The original quote ID associated with this transaction.
          #
          #   @param record_type [Symbol, Telnyx::Models::X402::CreditAccount::X402TransactionRecord::RecordType]
          #
          #   @param status [Symbol, Telnyx::Models::X402::CreditAccount::X402TransactionRecord::Status] The settlement status of the transaction. x402 transactions are created after su
          #
          #   @param tx_hash [String, nil] The on-chain transaction hash, if available.
          #
          #   @param updated_at [Time] ISO 8601 timestamp when the transaction was last updated.

          # @see Telnyx::Models::X402::CreditAccount::X402TransactionRecord#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            X402_TRANSACTION = :x402_transaction

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The settlement status of the transaction. x402 transactions are created after
          # successful on-chain settlement, so the status is `settled`.
          #
          # @see Telnyx::Models::X402::CreditAccount::X402TransactionRecord#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SETTLED = :settled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
