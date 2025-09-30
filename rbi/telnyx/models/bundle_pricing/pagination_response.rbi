# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class PaginationResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::PaginationResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The current page number.
        sig { returns(Integer) }
        attr_accessor :page_number

        # The number of results per page.
        sig { returns(Integer) }
        attr_accessor :page_size

        # Total number of pages from the results.
        sig { returns(Integer) }
        attr_accessor :total_pages

        # Total number of results returned.
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
        def self.new(
          # The current page number.
          page_number:,
          # The number of results per page.
          page_size:,
          # Total number of pages from the results.
          total_pages:,
          # Total number of results returned.
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
end
