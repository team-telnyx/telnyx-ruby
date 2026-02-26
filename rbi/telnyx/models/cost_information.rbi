# typed: strong

module Telnyx
  module Models
    class CostInformation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CostInformation, Telnyx::Internal::AnyHash)
        end

      # The ISO 4217 code for the currency.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      sig { returns(T.nilable(String)) }
      attr_reader :monthly_cost

      sig { params(monthly_cost: String).void }
      attr_writer :monthly_cost

      sig { returns(T.nilable(String)) }
      attr_reader :upfront_cost

      sig { params(upfront_cost: String).void }
      attr_writer :upfront_cost

      sig do
        params(
          currency: String,
          monthly_cost: String,
          upfront_cost: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ISO 4217 code for the currency.
        currency: nil,
        monthly_cost: nil,
        upfront_cost: nil
      )
      end

      sig do
        override.returns(
          { currency: String, monthly_cost: String, upfront_cost: String }
        )
      end
      def to_hash
      end
    end
  end
end
