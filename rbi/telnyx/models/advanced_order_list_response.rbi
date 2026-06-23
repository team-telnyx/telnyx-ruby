# typed: strong

module Telnyx
  module Models
    class AdvancedOrderListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AdvancedOrderListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::AdvancedOrder])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::AdvancedOrder::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Telnyx::AdvancedOrder::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Telnyx::AdvancedOrder] }) }
      def to_hash
      end
    end
  end
end
