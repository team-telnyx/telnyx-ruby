# typed: strong

module Telnyx
  module Models
    class VoiceDesignsPaginationMeta < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceDesignsPaginationMeta, Telnyx::Internal::AnyHash)
        end

      # Current page number (1-based).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Total number of pages.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total_pages

      sig { params(total_pages: Integer).void }
      attr_writer :total_pages

      # Total number of results across all pages.
      sig { returns(T.nilable(Integer)) }
      attr_reader :total_results

      sig { params(total_results: Integer).void }
      attr_writer :total_results

      # Pagination metadata returned with list responses.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          total_pages: Integer,
          total_results: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Current page number (1-based).
        page_number: nil,
        # Number of results per page.
        page_size: nil,
        # Total number of pages.
        total_pages: nil,
        # Total number of results across all pages.
        total_results: nil
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
