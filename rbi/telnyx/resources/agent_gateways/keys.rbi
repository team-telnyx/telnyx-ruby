# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # Keys on an instance.
      class Keys
        # The MCP servers and tools a key or team may use.
        sig { returns(Telnyx::Resources::AgentGateways::Keys::ToolPermissions) }
        attr_reader :tool_permissions

        # Issues a key on the instance. The key's value is in this response only. Every
        # field is optional; a key without `models` may use every model the instance
        # serves. The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            budget_resets_every: T.nilable(String),
            expires_in: T.nilable(String),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            models: T.nilable(T::Array[String]),
            name: T.nilable(String),
            requests_per_minute: T.nilable(Integer),
            team_id: T.nilable(String),
            tokens_per_minute: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::KeyCreateResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
          budget_resets_every: nil,
          # How long until the key stops working: a number and a unit, `s`, `m`, `h`, or
          # `d`.
          expires_in: nil,
          # The most the key may spend, in USD.
          max_budget: nil,
          # The most requests the key may have in flight at once.
          max_parallel_requests: nil,
          # The models the key may use. Leave it out to allow every model.
          models: nil,
          # A label for people, unique on the instance.
          name: nil,
          # The most requests the key may make per minute.
          requests_per_minute: nil,
          # A team on the instance. The key shares the team's model list, budget, and rate
          # limits.
          team_id: nil,
          # The most tokens the key may use per minute.
          tokens_per_minute: nil,
          request_options: {}
        )
        end

        # Changes a key's settings without reissuing it. A field left out stays as it is,
        # and `null` clears it. `models: []` lifts the model restriction. `expires_in`
        # counts from now. Setting `blocked` to `true` makes the instance refuse the key
        # with `401` while keeping its settings and spend; `false` lets it through again.
        # The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            key_id: String,
            instance_id: String,
            blocked: T::Boolean,
            budget_resets_every: T.nilable(String),
            expires_in: T.nilable(String),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            models: T::Array[String],
            name: String,
            requests_per_minute: T.nilable(Integer),
            team_id: T.nilable(String),
            tokens_per_minute: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayKeyResponse)
        end
        def update(
          # Path param: The key's `id`, a 64-character hash the instance stores in place of
          # the key.
          key_id,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: `true` makes the instance refuse the key; `false` lets it through
          # again.
          blocked: nil,
          # Body param: How often the spend resets.
          budget_resets_every: nil,
          # Body param: How long from now until the key stops working.
          expires_in: nil,
          # Body param: The most the key may spend, in USD.
          max_budget: nil,
          # Body param: The most requests the key may have in flight at once.
          max_parallel_requests: nil,
          # Body param: The models the key may use. `[]` allows every model.
          models: nil,
          # Body param: A label for people.
          name: nil,
          # Body param: The most requests the key may make per minute.
          requests_per_minute: nil,
          # Body param: Move the key to this team, or `null` to leave its team.
          team_id: nil,
          # Body param: The most tokens the key may use per minute.
          tokens_per_minute: nil,
          request_options: {}
        )
        end

        # Lists the instance's keys, without their values. Returns the first 100. The
        # instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            team_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::KeyListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          # Only the keys of this team.
          team_id: nil,
          request_options: {}
        )
        end

        # Revokes a key and returns it as it was, without its value. The instance must be
        # `ready`; otherwise the request answers `409`.
        sig do
          params(
            key_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayKeyResponse)
        end
        def delete(
          # The key's `id`, a 64-character hash the instance stores in place of the key.
          key_id,
          # The Agent Gateway's `id`.
          instance_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
