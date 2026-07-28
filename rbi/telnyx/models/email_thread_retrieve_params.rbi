# typed: strong

module Telnyx
  module Models
    class EmailThreadRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailThreadRetrieveParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :thread_id

      # Inbox UUID that, together with `thread_id`, identifies the thread.
      sig { returns(String) }
      attr_accessor :inbox_id

      # Opaque message cursor returned by the previous thread-detail page.
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Number of thread messages to return. Defaults to 25; maximum is 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          thread_id: String,
          inbox_id: String,
          page_after: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        thread_id:,
        # Inbox UUID that, together with `thread_id`, identifies the thread.
        inbox_id:,
        # Opaque message cursor returned by the previous thread-detail page.
        page_after: nil,
        # Number of thread messages to return. Defaults to 25; maximum is 100.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            thread_id: String,
            inbox_id: String,
            page_after: String,
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
