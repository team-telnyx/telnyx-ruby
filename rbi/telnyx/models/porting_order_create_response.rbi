# typed: strong

module Telnyx
  module Models
    class PortingOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingOrderCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::PortingOrder])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::PortingOrder::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[Telnyx::PortingOrder::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[Telnyx::PortingOrder] }) }
      def to_hash
      end
    end
  end
end
