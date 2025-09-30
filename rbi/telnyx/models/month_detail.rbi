# typed: strong

module Telnyx
  module Models
    class MonthDetail < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::MonthDetail, Telnyx::Internal::AnyHash) }

      # Monthly recurring charge amount as decimal string
      sig { returns(String) }
      attr_accessor :mrc

      # Number of items
      sig { returns(Integer) }
      attr_accessor :quantity

      # One-time charge amount as decimal string
      sig { returns(T.nilable(String)) }
      attr_accessor :otc

      sig do
        params(mrc: String, quantity: Integer, otc: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Monthly recurring charge amount as decimal string
        mrc:,
        # Number of items
        quantity:,
        # One-time charge amount as decimal string
        otc: nil
      )
      end

      sig do
        override.returns(
          { mrc: String, quantity: Integer, otc: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
