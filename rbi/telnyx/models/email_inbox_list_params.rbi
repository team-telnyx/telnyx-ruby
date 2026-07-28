# typed: strong

module Telnyx
  module Models
    class EmailInboxListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailInboxListParams, Telnyx::Internal::AnyHash)
        end

      # Opaque cursor returned by the previous inbox page.
      sig { returns(T.nilable(String)) }
      attr_reader :page_cursor

      sig { params(page_cursor: String).void }
      attr_writer :page_cursor

      # Number of results to return. Defaults to 20; maximum is 250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Opaque cursor returned by the previous inbox page.
        page_cursor: nil,
        # Number of results to return. Defaults to 20; maximum is 250.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_cursor: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
