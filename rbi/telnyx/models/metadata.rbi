# typed: strong

module Telnyx
  module Models
    class Metadata < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Metadata, Telnyx::Internal::AnyHash) }

      # Current Page based on pagination settings (included when defaults are used.)
      sig { returns(T.nilable(Float)) }
      attr_reader :page_number

      sig { params(page_number: Float).void }
      attr_writer :page_number

      # Number of results to return per page based on pagination settings (included when
      # defaults are used.)
      sig { returns(T.nilable(Float)) }
      attr_reader :page_size

      sig { params(page_size: Float).void }
      attr_writer :page_size

      # Total number of pages based on pagination settings
      sig { returns(T.nilable(Float)) }
      attr_reader :total_pages

      sig { params(total_pages: Float).void }
      attr_writer :total_pages

      # Total number of results
      sig { returns(T.nilable(Float)) }
      attr_reader :total_results

      sig { params(total_results: Float).void }
      attr_writer :total_results

      sig do
        params(
          page_number: Float,
          page_size: Float,
          total_pages: Float,
          total_results: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Current Page based on pagination settings (included when defaults are used.)
        page_number: nil,
        # Number of results to return per page based on pagination settings (included when
        # defaults are used.)
        page_size: nil,
        # Total number of pages based on pagination settings
        total_pages: nil,
        # Total number of results
        total_results: nil
      )
      end

      sig do
        override.returns(
          {
            page_number: Float,
            page_size: Float,
            total_pages: Float,
            total_results: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
