# typed: strong

module Telnyx
  module Models
    class NumberReputationPaginationMeta < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberReputationPaginationMeta,
            Telnyx::Internal::AnyHash
          )
        end

      # 1-based index of this page. Echoes the `page[number]` query parameter (default
      # `1`).
      sig { returns(Integer) }
      attr_accessor :page_number

      # Number of items returned in this page's `data` array. Capped at 250.
      sig { returns(Integer) }
      attr_accessor :page_size

      # Total number of pages available given the current `page_size`.
      sig { returns(Integer) }
      attr_accessor :total_pages

      # Total number of items across all pages (excludes soft-deleted rows).
      sig { returns(Integer) }
      attr_accessor :total_results

      # JSON:API pagination metadata returned with every paginated list response. Page
      # numbering is 1-based. `page_size` reports the number of items actually returned
      # in `data` for this page; the requested size is taken from the `page[size]` query
      # parameter.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          total_pages: Integer,
          total_results: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # 1-based index of this page. Echoes the `page[number]` query parameter (default
        # `1`).
        page_number:,
        # Number of items returned in this page's `data` array. Capped at 250.
        page_size:,
        # Total number of pages available given the current `page_size`.
        total_pages:,
        # Total number of items across all pages (excludes soft-deleted rows).
        total_results:
      )
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
