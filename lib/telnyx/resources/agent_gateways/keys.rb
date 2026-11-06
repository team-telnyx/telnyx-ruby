# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # Keys on an instance.
      class Keys
        # The MCP servers and tools a key or team may use.
        # @return [Telnyx::Resources::AgentGateways::Keys::ToolPermissions]
        attr_reader :tool_permissions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::KeyCreateParams} for more details.
        #
        # Issues a key on the instance. The key's value is in this response only. Every
        # field is optional; a key without `models` may use every model the instance
        # serves. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload create(instance_id, budget_resets_every: nil, expires_in: nil, max_budget: nil, max_parallel_requests: nil, models: nil, name: nil, requests_per_minute: nil, team_id: nil, tokens_per_minute: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param budget_resets_every [String, nil] How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        #
        # @param expires_in [String, nil] How long until the key stops working: a number and a unit, `s`, `m`, `h`, or `d`
        #
        # @param max_budget [Float, nil] The most the key may spend, in USD.
        #
        # @param max_parallel_requests [Integer, nil] The most requests the key may have in flight at once.
        #
        # @param models [Array<String>, nil] The models the key may use. Leave it out to allow every model.
        #
        # @param name [String, nil] A label for people, unique on the instance.
        #
        # @param requests_per_minute [Integer, nil] The most requests the key may make per minute.
        #
        # @param team_id [String, nil] A team on the instance. The key shares the team's model list, budget, and rate l
        #
        # @param tokens_per_minute [Integer, nil] The most tokens the key may use per minute.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::KeyCreateResponse]
        #
        # @see Telnyx::Models::AgentGateways::KeyCreateParams
        def create(instance_id, params = {})
          parsed, options = Telnyx::AgentGateways::KeyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/keys", instance_id],
            body: parsed,
            model: Telnyx::Models::AgentGateways::KeyCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::KeyUpdateParams} for more details.
        #
        # Changes a key's settings without reissuing it. A field left out stays as it is,
        # and `null` clears it. `models: []` lifts the model restriction. `expires_in`
        # counts from now. Setting `blocked` to `true` makes the instance refuse the key
        # with `401` while keeping its settings and spend; `false` lets it through again.
        # The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload update(key_id, instance_id:, blocked: nil, budget_resets_every: nil, expires_in: nil, max_budget: nil, max_parallel_requests: nil, models: nil, name: nil, requests_per_minute: nil, team_id: nil, tokens_per_minute: nil, request_options: {})
        #
        # @param key_id [String] Path param: The key's `id`, a 64-character hash the instance stores in place of
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param blocked [Boolean] Body param: `true` makes the instance refuse the key; `false` lets it through ag
        #
        # @param budget_resets_every [String, nil] Body param: How often the spend resets.
        #
        # @param expires_in [String, nil] Body param: How long from now until the key stops working.
        #
        # @param max_budget [Float, nil] Body param: The most the key may spend, in USD.
        #
        # @param max_parallel_requests [Integer, nil] Body param: The most requests the key may have in flight at once.
        #
        # @param models [Array<String>] Body param: The models the key may use. `[]` allows every model.
        #
        # @param name [String] Body param: A label for people.
        #
        # @param requests_per_minute [Integer, nil] Body param: The most requests the key may make per minute.
        #
        # @param team_id [String, nil] Body param: Move the key to this team, or `null` to leave its team.
        #
        # @param tokens_per_minute [Integer, nil] Body param: The most tokens the key may use per minute.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayKeyResponse]
        #
        # @see Telnyx::Models::AgentGateways::KeyUpdateParams
        def update(key_id, params)
          parsed, options = Telnyx::AgentGateways::KeyUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/keys/%2$s", instance_id, key_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayKeyResponse,
            options: options
          )
        end

        # Lists the instance's keys, without their values. Returns the first 100. The
        # instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload list(instance_id, team_id: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param team_id [String] Only the keys of this team.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::KeyListResponse]
        #
        # @see Telnyx::Models::AgentGateways::KeyListParams
        def list(instance_id, params = {})
          parsed, options = Telnyx::AgentGateways::KeyListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/keys", instance_id],
            query: query,
            model: Telnyx::Models::AgentGateways::KeyListResponse,
            options: options
          )
        end

        # Revokes a key and returns it as it was, without its value. The instance must be
        # `ready`; otherwise the request answers `409`.
        #
        # @overload delete(key_id, instance_id:, request_options: {})
        #
        # @param key_id [String] The key's `id`, a 64-character hash the instance stores in place of the key.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayKeyResponse]
        #
        # @see Telnyx::Models::AgentGateways::KeyDeleteParams
        def delete(key_id, params)
          parsed, options = Telnyx::AgentGateways::KeyDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/keys/%2$s", instance_id, key_id],
            model: Telnyx::AgentGateways::AgentGatewayKeyResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @tool_permissions = Telnyx::Resources::AgentGateways::Keys::ToolPermissions.new(client: client)
        end
      end
    end
  end
end
