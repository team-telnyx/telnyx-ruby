# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailThreads#list
    class EmailThreadListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_inbox_id
      #   Restrict results to one or more inboxes. Repeat the parameter
      #   (`filter[inbox_id][]=...&filter[inbox_id][]=...`) or pass a comma-separated
      #   list. Omit to list every inbox in the account. Inboxes outside the account are
      #   silently excluded. If the filter is present, it must contain at least one
      #   non-empty UUID.
      #
      #   @return [Array<String>, nil]
      optional :filter_inbox_id, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute filter_label
      #   Returns only threads carrying this label. Matching is exact and case-sensitive.
      #   Thread labels are independent of the labels on the thread's messages.
      #
      #   @return [String, nil]
      optional :filter_label, String

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

      # @!method initialize(filter_inbox_id: nil, filter_label: nil, page_after: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailThreadListParams} for more details.
      #
      #   @param filter_inbox_id [Array<String>] Restrict results to one or more inboxes. Repeat the parameter
      #
      #   @param filter_label [String] Returns only threads carrying this label. Matching is exact and case-sensitive.
      #
      #   @param page_after [String] Opaque cursor returned by the previous page.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
