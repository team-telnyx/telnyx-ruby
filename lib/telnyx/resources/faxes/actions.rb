# frozen_string_literal: true

module Telnyx
  module Resources
    class Faxes
      class Actions
        # Cancel the outbound fax that is in one of the following states: `queued`,
        # `media.processed`, `originated` or `sending`
        #
        # @overload cancel(id, request_options: {})
        #
        # @param id [String] The unique identifier of a fax.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Faxes::ActionCancelResponse]
        #
        # @see Telnyx::Models::Faxes::ActionCancelParams
        def cancel(id, params = {})
          @client.request(
            method: :post,
            path: ["faxes/%1$s/actions/cancel", id],
            model: Telnyx::Models::Faxes::ActionCancelResponse,
            options: params[:request_options]
          )
        end

        # Refreshes the inbound fax's media_url when it has expired
        #
        # @overload refresh(id, request_options: {})
        #
        # @param id [String] The unique identifier of a fax.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Faxes::ActionRefreshResponse]
        #
        # @see Telnyx::Models::Faxes::ActionRefreshParams
        def refresh(id, params = {})
          @client.request(
            method: :post,
            path: ["faxes/%1$s/actions/refresh", id],
            model: Telnyx::Models::Faxes::ActionRefreshResponse,
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
