# typed: strong

module Telnyx
  module Models
    class PaginationMetaCloudflareIPListSync < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PaginationMetaCloudflareIPListSync,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :page_number

      sig { returns(Integer) }
      attr_accessor :page_size

      sig { returns(Integer) }
      attr_accessor :total_pages

      sig { returns(Integer) }
      attr_accessor :total_results

      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          total_pages: Integer,
          total_results: Integer
        ).returns(T.attached_class)
      end
      def self.new(page_number:, page_size:, total_pages:, total_results:)
      end

      sig do
        override.returns(
          {
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
