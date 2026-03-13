# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      # @see Telnyx::Resources::X402::CreditAccount#settle
      class CreditAccountSettleResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::X402::CreditAccountSettleResponse::Data, nil]
        optional :data, -> { Telnyx::Models::X402::CreditAccountSettleResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::X402::CreditAccountSettleResponse::Data]

        # @see Telnyx::Models::X402::CreditAccountSettleResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
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
          #   @return [Symbol, Telnyx::Models::X402::CreditAccountSettleResponse::Data::RecordType, nil]
          optional :record_type, enum: -> { Telnyx::Models::X402::CreditAccountSettleResponse::Data::RecordType }

          # @!attribute status
          #   The settlement status of the transaction.
          #
          #   @return [Symbol, Telnyx::Models::X402::CreditAccountSettleResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::X402::CreditAccountSettleResponse::Data::Status }

          # @!attribute tx_hash
          #   The on-chain transaction hash, if available.
          #
          #   @return [String, nil]
          optional :tx_hash, String, nil?: true

          # @!method initialize(id: nil, amount: nil, created_at: nil, currency: nil, quote_id: nil, record_type: nil, status: nil, tx_hash: nil)
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
          #   @param record_type [Symbol, Telnyx::Models::X402::CreditAccountSettleResponse::Data::RecordType]
          #
          #   @param status [Symbol, Telnyx::Models::X402::CreditAccountSettleResponse::Data::Status] The settlement status of the transaction.
          #
          #   @param tx_hash [String, nil] The on-chain transaction hash, if available.

          # @see Telnyx::Models::X402::CreditAccountSettleResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            X402_TRANSACTION = :x402_transaction

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The settlement status of the transaction.
          #
          # @see Telnyx::Models::X402::CreditAccountSettleResponse::Data#status
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
