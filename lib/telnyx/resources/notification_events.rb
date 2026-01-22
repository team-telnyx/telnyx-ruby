# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationEvents
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationEventListParams} for more details.
      #
      # Returns a list of your notifications events.
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::NotificationEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::NotificationEventListResponse>]
      #
      # @see Telnyx::Models::NotificationEventListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationEventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_events",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
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
