# typed: strong

module Telnyx
  module Models
    class DirRetrieveInfringementClaimsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DirRetrieveInfringementClaimsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::InfringementClaim]) }
      attr_accessor :data

      # JSON:API pagination metadata returned with every paginated list response. Page
      # numbering is 1-based. `page_size` reports the number of items actually returned
      # in `data` for this page; the requested size is taken from the `page[size]` query
      # parameter.
      sig { returns(Telnyx::BrandedCallingPaginationMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::BrandedCallingPaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::InfringementClaim::OrHash],
          meta: Telnyx::BrandedCallingPaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # JSON:API pagination metadata returned with every paginated list response. Page
        # numbering is 1-based. `page_size` reports the number of items actually returned
        # in `data` for this page; the requested size is taken from the `page[size]` query
        # parameter.
        meta:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::InfringementClaim],
            meta: Telnyx::BrandedCallingPaginationMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
