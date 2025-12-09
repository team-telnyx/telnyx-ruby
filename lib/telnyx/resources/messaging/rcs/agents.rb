# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging
      class Rcs
        class Agents
          # Retrieve an RCS agent
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String] RCS agent ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::RcsAgentResponse]
          #
          # @see Telnyx::Models::Messaging::Rcs::AgentRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["messaging/rcs/agents/%1$s", id],
              model: Telnyx::RcsAgentResponse,
              options: params[:request_options]
            )
          end

          # Modify an RCS agent
          #
          # @overload update(id, profile_id: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
          #
          # @param id [String] RCS agent ID
          #
          # @param profile_id [String, nil] Messaging profile ID associated with the RCS Agent
          #
          # @param webhook_failover_url [String, nil] Failover URL to receive RCS events
          #
          # @param webhook_url [String, nil] URL to receive RCS events
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::RcsAgentResponse]
          #
          # @see Telnyx::Models::Messaging::Rcs::AgentUpdateParams
          def update(id, params = {})
            parsed, options = Telnyx::Messaging::Rcs::AgentUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["messaging/rcs/agents/%1$s", id],
              body: parsed,
              model: Telnyx::RcsAgentResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Messaging::Rcs::AgentListParams} for more details.
          #
          # List all RCS agents
          #
          # @overload list(page: nil, request_options: {})
          #
          # @param page [Telnyx::Models::Messaging::Rcs::AgentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::RcsAgent>]
          #
          # @see Telnyx::Models::Messaging::Rcs::AgentListParams
          def list(params = {})
            parsed, options = Telnyx::Messaging::Rcs::AgentListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "messaging/rcs/agents",
              query: parsed,
              page: Telnyx::Internal::DefaultPagination,
              model: Telnyx::RcsAgent,
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
  end
end
