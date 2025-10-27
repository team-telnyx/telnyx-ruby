# typed: strong

module Telnyx
  module Models
    class AccessIPRangeListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AccessIPRangeListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::AccessIPRange]) }
      attr_accessor :data

      sig { returns(Telnyx::PaginationMetaCloudflareIPListSync) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::PaginationMetaCloudflareIPListSync::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::AccessIPRange::OrHash],
          meta: Telnyx::PaginationMetaCloudflareIPListSync::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::AccessIPRange],
            meta: Telnyx::PaginationMetaCloudflareIPListSync
          }
        )
      end
      def to_hash
      end
    end
  end
end
