# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # Teams on an instance: shared model lists, budgets, and rate limits.
      class Teams
        # The MCP servers and tools a key or team may use.
        # @return [Telnyx::Resources::AgentGateways::Teams::ToolPermissions]
        attr_reader :tool_permissions

        # Creates a team on the instance. A team is a model list, a budget, and rate
        # limits that its keys share. Names need not be unique; the `id` identifies the
        # team. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload create(instance_id, name:, budget_resets_every: nil, max_budget: nil, models: nil, requests_per_minute: nil, tokens_per_minute: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param name [String] A label for people.
        #
        # @param budget_resets_every [String, nil] How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        #
        # @param max_budget [Float, nil] The most the team's keys may spend together, in USD.
        #
        # @param models [Array<String>, nil] The models the team's keys may use. Leave it out to allow every model.
        #
        # @param requests_per_minute [Integer, nil] The most requests the team's keys may make per minute, together.
        #
        # @param tokens_per_minute [Integer, nil] The most tokens the team's keys may use per minute, together.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayTeamResponse]
        #
        # @see Telnyx::Models::AgentGateways::TeamCreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::TeamCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/teams", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayTeamResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::TeamUpdateParams} for more details.
        #
        # Changes a team's settings. A field left out stays as it is, and `null` clears
        # it. `models: []` lifts the model restriction. Setting `blocked` to `true` makes
        # the instance refuse every key in the team with `401`. The instance must be
        # `ready`; otherwise the request answers `409`.
        #
        # @overload update(team_id, instance_id:, blocked: nil, budget_resets_every: nil, max_budget: nil, models: nil, name: nil, requests_per_minute: nil, tokens_per_minute: nil, request_options: {})
        #
        # @param team_id [String] Path param: The team's `id`.
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param blocked [Boolean] Body param: `true` makes the instance refuse every key in the team; `false` lets
        #
        # @param budget_resets_every [String, nil] Body param: How often the spend resets.
        #
        # @param max_budget [Float, nil] Body param: The most the team's keys may spend together, in USD.
        #
        # @param models [Array<String>] Body param: The models the team's keys may use. `[]` allows every model.
        #
        # @param name [String] Body param: A label for people.
        #
        # @param requests_per_minute [Integer, nil] Body param: The most requests the team's keys may make per minute, together.
        #
        # @param tokens_per_minute [Integer, nil] Body param: The most tokens the team's keys may use per minute, together.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayTeamResponse]
        #
        # @see Telnyx::Models::AgentGateways::TeamUpdateParams
        def update(team_id, params)
          parsed, options = Telnyx::AgentGateways::TeamUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/teams/%2$s", instance_id, team_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayTeamResponse,
            options: options
          )
        end

        # Lists the instance's teams. The instance must be `ready`; otherwise the request
        # answers `409`.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::TeamListResponse]
        #
        # @see Telnyx::Models::AgentGateways::TeamListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/teams", instance_id],
            model: Telnyx::Models::AgentGateways::TeamListResponse,
            options: params[:request_options]
          )
        end

        # Deletes a team that has no keys and returns it. A team that still has keys
        # answers `409`; delete or move its keys first. The instance must be `ready`;
        # otherwise the request answers `409`.
        #
        # @overload delete(team_id, instance_id:, request_options: {})
        #
        # @param team_id [String] The team's `id`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayTeamResponse]
        #
        # @see Telnyx::Models::AgentGateways::TeamDeleteParams
        def delete(team_id, params)
          parsed, options = Telnyx::AgentGateways::TeamDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/teams/%2$s", instance_id, team_id],
            model: Telnyx::AgentGateways::AgentGatewayTeamResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @tool_permissions = Telnyx::Resources::AgentGateways::Teams::ToolPermissions.new(client: client)
        end
      end
    end
  end
end
