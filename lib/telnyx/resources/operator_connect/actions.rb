# frozen_string_literal: true

module Telnyx
  module Resources
    class OperatorConnect
      class Actions
        # This endpoint will make an asynchronous request to refresh the Operator Connect
        # integration with Microsoft Teams for the current user. This will create new
        # external connections on the user's account if needed, and/or report the
        # integration results as
        # [log messages](https://developers.telnyx.com/api-reference/external-connections/list-all-log-messages#list-all-log-messages).
        #
        # @overload refresh(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::OperatorConnect::ActionRefreshResponse]
        #
        # @see Telnyx::Models::OperatorConnect::ActionRefreshParams
        def refresh(params = {})
          @client.request(
            method: :post,
            path: "operator_connect/actions/refresh",
            model: Telnyx::Models::OperatorConnect::ActionRefreshResponse,
            options: params[:request_options]
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
end
