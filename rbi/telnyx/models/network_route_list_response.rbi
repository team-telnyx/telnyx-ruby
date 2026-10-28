# typed: strong

module Telnyx
  module Models
    class NetworkRouteListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NetworkRouteListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::NetworkRoute])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::NetworkRoute::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::NetappsCursorPaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::NetappsCursorPaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::NetworkRoute::OrHash],
          meta: Telnyx::NetappsCursorPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::NetworkRoute],
            meta: Telnyx::NetappsCursorPaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
