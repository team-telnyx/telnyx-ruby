# typed: strong

module Telnyx
  module Models
    class ConsumedData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::ConsumedData, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      sig { returns(T.nilable(String)) }
      attr_reader :unit

      sig { params(unit: String).void }
      attr_writer :unit

      # Represents the amount of data consumed.
      sig { params(amount: String, unit: String).returns(T.attached_class) }
      def self.new(amount: nil, unit: nil)
      end

      sig { override.returns({ amount: String, unit: String }) }
      def to_hash
      end
    end
  end
end
