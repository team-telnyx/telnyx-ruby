# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Integrations
        class Connections
          # Get user setup integrations
          #
          # @overload retrieve(user_connection_id, request_options: {})
          #
          # @param user_connection_id [String] The connection id
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse]
          #
          # @see Telnyx::Models::AI::Integrations::ConnectionRetrieveParams
          def retrieve(user_connection_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/integrations/connections/%1$s", user_connection_id],
              model: Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse,
              options: params[:request_options]
            )
          end

          # List user setup integrations
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Integrations::ConnectionListResponse]
          #
          # @see Telnyx::Models::AI::Integrations::ConnectionListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ai/integrations/connections",
              model: Telnyx::Models::AI::Integrations::ConnectionListResponse,
              options: params[:request_options]
            )
          end

          # Delete a specific integration connection.
          #
          # @overload delete(user_connection_id, request_options: {})
          #
          # @param user_connection_id [String] The user integration connection identifier
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Integrations::ConnectionDeleteParams
          def delete(user_connection_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/integrations/connections/%1$s", user_connection_id],
              model: NilClass,
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
end
