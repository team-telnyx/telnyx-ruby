# frozen_string_literal: true

module Telnyx
  module Resources
    class CallEvents
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallEventListParams} for more details.
      #
      # Filters call events by given filter parameters. Events are ordered by
      # `occurred_at`. If filter for `leg_id` or `application_session_id` is not
      # present, it only filters events from the last 24 hours.
      #
      # **Note**: Only one `filter[occurred_at]` can be passed.
      #
      # @overload list(filter: nil, page: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::CallEventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      # @param page [Telnyx::Models::CallEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::CallEventListResponse>]
      #
      # @see Telnyx::Models::CallEventListParams
      def list(params = {})
        parsed, options = Telnyx::CallEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "call_events",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::CallEventListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
