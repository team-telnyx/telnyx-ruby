# typed: strong

module Telnyx
  module Models
    class IPListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::IPListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::IP])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::IP::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::ConnectionsPaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::ConnectionsPaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::IP::OrHash],
          meta: Telnyx::ConnectionsPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::IP],
            meta: Telnyx::ConnectionsPaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
