# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationEvents
      # Returns a list of your notifications events.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NotificationEventListResponse>]
      #
      # @see Telnyx::Models::NotificationEventListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_events",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::NotificationEventListResponse,
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
