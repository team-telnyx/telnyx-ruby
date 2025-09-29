# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Balance#retrieve
    class BalanceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BalanceRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::BalanceRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BalanceRetrieveResponse::Data]

      # @see Telnyx::Models::BalanceRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute available_credit
        #   Available amount to spend (balance + credit limit)
        #
        #   @return [String, nil]
        optional :available_credit, String

        # @!attribute balance
        #   The account's current balance.
        #
        #   @return [String, nil]
        optional :balance, String

        # @!attribute credit_limit
        #   The account's credit limit.
        #
        #   @return [String, nil]
        optional :credit_limit, String

        # @!attribute currency
        #   The ISO 4217 currency identifier.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute pending
        #   The account’s pending amount.
        #
        #   @return [String, nil]
        optional :pending, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::BalanceRetrieveResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::BalanceRetrieveResponse::Data::RecordType }

        # @!method initialize(available_credit: nil, balance: nil, credit_limit: nil, currency: nil, pending: nil, record_type: nil)
        #   @param available_credit [String] Available amount to spend (balance + credit limit)
        #
        #   @param balance [String] The account's current balance.
        #
        #   @param credit_limit [String] The account's credit limit.
        #
        #   @param currency [String] The ISO 4217 currency identifier.
        #
        #   @param pending [String] The account’s pending amount.
        #
        #   @param record_type [Symbol, Telnyx::Models::BalanceRetrieveResponse::Data::RecordType] Identifies the type of the resource.

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::BalanceRetrieveResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          BALANCE = :balance

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
