# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Messages#list
      class MessageListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute filter_from
        #   Case-insensitive literal substring of the sender address.
        #
        #   @return [String, nil]
        optional :filter_from, String

        # @!attribute filter_label
        #   Returns only messages carrying this label. Matching is exact and case-sensitive.
        #   Reserved `telnyx:` labels can be filtered on even though they cannot be written
        #   by customers.
        #
        #   @return [String, nil]
        optional :filter_label, String

        # @!attribute filter_read
        #   Whether the message has a read timestamp.
        #
        #   @return [Boolean, nil]
        optional :filter_read, Telnyx::Internal::Type::Boolean

        # @!attribute filter_received_after
        #   Inclusive ISO 8601 lower bound for the received timestamp.
        #
        #   @return [Time, nil]
        optional :filter_received_after, Time

        # @!attribute filter_received_before
        #   Inclusive ISO 8601 upper bound for the received timestamp.
        #
        #   @return [Time, nil]
        optional :filter_received_before, Time

        # @!attribute filter_search
        #   Full-text query over subject and body, up to 500 characters.
        #
        #   @return [String, nil]
        optional :filter_search, String

        # @!attribute filter_subject
        #   Case-insensitive literal substring of the subject.
        #
        #   @return [String, nil]
        optional :filter_subject, String

        # @!attribute filter_unread
        #   Whether the message has no read timestamp. Set to `true` to return only unread
        #   messages.
        #
        #   @return [Boolean, nil]
        optional :filter_unread, Telnyx::Internal::Type::Boolean

        # @!attribute page_after
        #   Opaque cursor returned by the previous page.
        #
        #   @return [String, nil]
        optional :page_after, String

        # @!attribute page_size
        #   Number of results to return. Defaults to 25; maximum is 100.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(inbox_id:, filter_from: nil, filter_label: nil, filter_read: nil, filter_received_after: nil, filter_received_before: nil, filter_search: nil, filter_subject: nil, filter_unread: nil, page_after: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::MessageListParams} for more details.
        #
        #   @param inbox_id [String]
        #
        #   @param filter_from [String] Case-insensitive literal substring of the sender address.
        #
        #   @param filter_label [String] Returns only messages carrying this label. Matching is exact and case-sensitive.
        #
        #   @param filter_read [Boolean] Whether the message has a read timestamp.
        #
        #   @param filter_received_after [Time] Inclusive ISO 8601 lower bound for the received timestamp.
        #
        #   @param filter_received_before [Time] Inclusive ISO 8601 upper bound for the received timestamp.
        #
        #   @param filter_search [String] Full-text query over subject and body, up to 500 characters.
        #
        #   @param filter_subject [String] Case-insensitive literal substring of the subject.
        #
        #   @param filter_unread [Boolean] Whether the message has no read timestamp. Set to `true` to return only unread m
        #
        #   @param page_after [String] Opaque cursor returned by the previous page.
        #
        #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
