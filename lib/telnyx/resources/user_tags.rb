# frozen_string_literal: true

module Telnyx
  module Resources
    class UserTags
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UserTagListParams} for more details.
      #
      # List all user tags.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::UserTagListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[starts_with
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UserTagListResponse]
      #
      # @see Telnyx::Models::UserTagListParams
      def list(params = {})
        parsed, options = Telnyx::UserTagListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "user_tags",
          query: parsed,
          model: Telnyx::Models::UserTagListResponse,
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
