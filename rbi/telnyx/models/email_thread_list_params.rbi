# typed: strong

module Telnyx
  module Models
    class EmailThreadListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailThreadListParams, Telnyx::Internal::AnyHash)
        end

      # Restrict results to one or more inboxes. Repeat the parameter
      # (`filter[inbox_id][]=...&filter[inbox_id][]=...`) or pass a comma-separated
      # list. Omit to list every inbox in the account. Inboxes outside the account are
      # silently excluded. If the filter is present, it must contain at least one
      # non-empty UUID.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :filter_inbox_id

      sig { params(filter_inbox_id: T::Array[String]).void }
      attr_writer :filter_inbox_id

      # Returns only threads carrying this label. Matching is exact and case-sensitive.
      # Thread labels are independent of the labels on the thread's messages.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_label

      sig { params(filter_label: String).void }
      attr_writer :filter_label

      # Opaque cursor returned by the previous page.
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Number of results to return. Defaults to 25; maximum is 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_inbox_id: T::Array[String],
          filter_label: String,
          page_after: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Restrict results to one or more inboxes. Repeat the parameter
        # (`filter[inbox_id][]=...&filter[inbox_id][]=...`) or pass a comma-separated
        # list. Omit to list every inbox in the account. Inboxes outside the account are
        # silently excluded. If the filter is present, it must contain at least one
        # non-empty UUID.
        filter_inbox_id: nil,
        # Returns only threads carrying this label. Matching is exact and case-sensitive.
        # Thread labels are independent of the labels on the thread's messages.
        filter_label: nil,
        # Opaque cursor returned by the previous page.
        page_after: nil,
        # Number of results to return. Defaults to 25; maximum is 100.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_inbox_id: T::Array[String],
            filter_label: String,
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
