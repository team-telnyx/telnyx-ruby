# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Threads#list
      class ThreadListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute filter_label
        #   Returns only threads carrying this label. Thread labels are independent of the
        #   labels on the thread's messages.
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

        # @!method initialize(inbox_id:, filter_label: nil, page_after: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::ThreadListParams} for more details.
        #
        #   @param inbox_id [String]
        #
        #   @param filter_label [String] Returns only threads carrying this label. Thread labels are independent of the l
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
