# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Integrations
        # @return [Telnyx::Resources::AI::Integrations::Connections]
        attr_reader :connections

        # Retrieve integration details
        #
        # @overload retrieve(integration_id, request_options: {})
        #
        # @param integration_id [String] The integration id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::IntegrationRetrieveResponse]
        #
        # @see Telnyx::Models::AI::IntegrationRetrieveParams
        def retrieve(integration_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/integrations/%1$s", integration_id],
            model: Telnyx::Models::AI::IntegrationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # List all available integrations.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::IntegrationListResponse]
        #
        # @see Telnyx::Models::AI::IntegrationListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "ai/integrations",
            model: Telnyx::Models::AI::IntegrationListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @connections = Telnyx::Resources::AI::Integrations::Connections.new(client: client)
        end
      end
    end
  end
end
