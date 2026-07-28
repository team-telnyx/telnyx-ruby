# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class MessageListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::MessageListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_id

        # Case-insensitive literal substring of the sender address.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_from

        sig { params(filter_from: String).void }
        attr_writer :filter_from

        # Returns only messages carrying this label. Matching is exact and case-sensitive.
        # Reserved `telnyx:` labels can be filtered on even though they cannot be written
        # by customers.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_label

        sig { params(filter_label: String).void }
        attr_writer :filter_label

        # Whether the message has a read timestamp.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :filter_read

        sig { params(filter_read: T::Boolean).void }
        attr_writer :filter_read

        # Inclusive ISO 8601 lower bound for the received timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_received_after

        sig { params(filter_received_after: Time).void }
        attr_writer :filter_received_after

        # Inclusive ISO 8601 upper bound for the received timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_received_before

        sig { params(filter_received_before: Time).void }
        attr_writer :filter_received_before

        # Full-text query over subject and body, up to 500 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_search

        sig { params(filter_search: String).void }
        attr_writer :filter_search

        # Case-insensitive literal substring of the subject.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_subject

        sig { params(filter_subject: String).void }
        attr_writer :filter_subject

        # Whether the message has no read timestamp. Set to `true` to return only unread
        # messages.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :filter_unread

        sig { params(filter_unread: T::Boolean).void }
        attr_writer :filter_unread

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
            inbox_id: String,
            filter_from: String,
            filter_label: String,
            filter_read: T::Boolean,
            filter_received_after: Time,
            filter_received_before: Time,
            filter_search: String,
            filter_subject: String,
            filter_unread: T::Boolean,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_id:,
          # Case-insensitive literal substring of the sender address.
          filter_from: nil,
          # Returns only messages carrying this label. Matching is exact and case-sensitive.
          # Reserved `telnyx:` labels can be filtered on even though they cannot be written
          # by customers.
          filter_label: nil,
          # Whether the message has a read timestamp.
          filter_read: nil,
          # Inclusive ISO 8601 lower bound for the received timestamp.
          filter_received_after: nil,
          # Inclusive ISO 8601 upper bound for the received timestamp.
          filter_received_before: nil,
          # Full-text query over subject and body, up to 500 characters.
          filter_search: nil,
          # Case-insensitive literal substring of the subject.
          filter_subject: nil,
          # Whether the message has no read timestamp. Set to `true` to return only unread
          # messages.
          filter_unread: nil,
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
              inbox_id: String,
              filter_from: String,
              filter_label: String,
              filter_read: T::Boolean,
              filter_received_after: Time,
              filter_received_before: Time,
              filter_search: String,
              filter_subject: String,
              filter_unread: T::Boolean,
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
end
