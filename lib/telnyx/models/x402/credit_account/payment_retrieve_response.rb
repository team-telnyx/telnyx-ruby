# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      module CreditAccount
        # @see Telnyx::Resources::X402::CreditAccount::Payments#retrieve
        class PaymentRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #   An x402 payment transaction.
          #
          #   @return [Telnyx::Models::X402::CreditAccount::X402TransactionRecord, nil]
          optional :data, -> { Telnyx::X402::CreditAccount::X402TransactionRecord }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::X402::CreditAccount::X402TransactionRecord] An x402 payment transaction.
        end
      end
    end
  end
end
