# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationEventConditions
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationEventConditionListParams} for more details.
      #
      # Returns a list of your notifications events conditions.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NotificationEventConditionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[associated\_
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NotificationEventConditionListResponse>]
      #
      # @see Telnyx::Models::NotificationEventConditionListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationEventConditionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_event_conditions",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::NotificationEventConditionListResponse,
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
