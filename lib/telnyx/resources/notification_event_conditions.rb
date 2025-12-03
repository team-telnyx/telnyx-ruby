# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationEventConditions
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationEventConditionListParams} for more details.
      #
      # Returns a list of your notifications events conditions.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NotificationEventConditionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[associated\_
      #
      # @param page [Telnyx::Models::NotificationEventConditionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationEventConditionListResponse]
      #
      # @see Telnyx::Models::NotificationEventConditionListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationEventConditionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_event_conditions",
          query: parsed,
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
