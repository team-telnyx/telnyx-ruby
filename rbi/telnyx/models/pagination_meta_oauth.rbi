# typed: strong

module Telnyx
  module Models
    class PaginationMetaOAuth < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PaginationMetaOAuth, Telnyx::Internal::AnyHash)
        end

      # Current page number
      sig { returns(Integer) }
      attr_accessor :page_number

      # Total number of pages
      sig { returns(Integer) }
      attr_accessor :total_pages

      # Number of items per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Total number of results
      sig { returns(T.nilable(Integer)) }
      attr_reader :total_results

      sig { params(total_results: Integer).void }
      attr_writer :total_results

      sig do
        params(
          page_number: Integer,
          total_pages: Integer,
          page_size: Integer,
          total_results: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Current page number
        page_number:,
        # Total number of pages
        total_pages:,
        # Number of items per page
        page_size: nil,
        # Total number of results
        total_results: nil
      )
      end

      sig do
        override.returns(
          {
            page_number: Integer,
            total_pages: Integer,
            page_size: Integer,
            total_results: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
