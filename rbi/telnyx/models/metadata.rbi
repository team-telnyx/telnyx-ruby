# typed: strong

module Telnyx
  module Models
    class Metadata < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Metadata, Telnyx::Internal::AnyHash) }

      # Current Page based on pagination settings (included when defaults are used.)
      sig { returns(Float) }
      attr_accessor :page_number

      # Total number of pages based on pagination settings
      sig { returns(Float) }
      attr_accessor :total_pages

      # Number of results to return per page based on pagination settings (included when
      # defaults are used.)
      sig { returns(T.nilable(Float)) }
      attr_reader :page_size

      sig { params(page_size: Float).void }
      attr_writer :page_size

      # Total number of results
      sig { returns(T.nilable(Float)) }
      attr_reader :total_results

      sig { params(total_results: Float).void }
      attr_writer :total_results

      sig do
        params(
          page_number: Float,
          total_pages: Float,
          page_size: Float,
          total_results: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Current Page based on pagination settings (included when defaults are used.)
        page_number:,
        # Total number of pages based on pagination settings
        total_pages:,
        # Number of results to return per page based on pagination settings (included when
        # defaults are used.)
        page_size: nil,
        # Total number of results
        total_results: nil
      )
      end

      sig do
        override.returns(
          {
            page_number: Float,
            total_pages: Float,
            page_size: Float,
            total_results: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
