# typed: strong

module Telnyx
  module Models
    class EmailMessageRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::EmailMessageRetrieveEventsParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email_id

      # Opaque URL-safe Base64 cursor returned by a previous list response.
      sig { returns(T.nilable(String)) }
      attr_reader :page_cursor

      sig { params(page_cursor: String).void }
      attr_writer :page_cursor

      # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      # clamped to the valid range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          email_id: String,
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        email_id:,
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email_id: String,
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
