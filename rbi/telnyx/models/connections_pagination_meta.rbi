# typed: strong

module Telnyx
  module Models
    class ConnectionsPaginationMeta < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConnectionsPaginationMeta, Telnyx::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :page_number

      sig { returns(Integer) }
      attr_accessor :total_pages

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

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
        page_number:,
        total_pages:,
        page_size: nil,
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
