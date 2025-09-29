# typed: strong

module Telnyx
  module Models
    class PortingOrderRetrieveExceptionTypesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortingOrderRetrieveExceptionTypesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::PortingOrdersExceptionType])) }
      attr_reader :data

      sig do
        params(data: T::Array[Telnyx::PortingOrdersExceptionType::OrHash]).void
      end
      attr_writer :data

      sig do
        params(
          data: T::Array[Telnyx::PortingOrdersExceptionType::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: T::Array[Telnyx::PortingOrdersExceptionType] })
      end
      def to_hash
      end
    end
  end
end
