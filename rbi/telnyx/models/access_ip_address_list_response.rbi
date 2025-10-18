# typed: strong

module Telnyx
  module Models
    class AccessIPAddressListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AccessIPAddressListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::AccessIPAddressResponse]) }
      attr_accessor :data

      sig { returns(Telnyx::PaginationMetaCloudflareIPListSync) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::PaginationMetaCloudflareIPListSync::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::AccessIPAddressResponse::OrHash],
          meta: Telnyx::PaginationMetaCloudflareIPListSync::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::AccessIPAddressResponse],
            meta: Telnyx::PaginationMetaCloudflareIPListSync
          }
        )
      end
      def to_hash
      end
    end
  end
end
