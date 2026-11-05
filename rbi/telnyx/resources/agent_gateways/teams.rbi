# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # Teams on an instance: shared model lists, budgets, and rate limits.
      class Teams
        # The MCP servers and tools a key or team may use.
        sig do
          returns(Telnyx::Resources::AgentGateways::Teams::ToolPermissions)
        end
        attr_reader :tool_permissions

        # Creates a team on the instance. A team is a model list, a budget, and rate
        # limits that its keys share. Names need not be unique; the `id` identifies the
        # team. The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            name: String,
            budget_resets_every: T.nilable(String),
            max_budget: T.nilable(Float),
            models: T.nilable(T::Array[String]),
            requests_per_minute: T.nilable(Integer),
            tokens_per_minute: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayTeamResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # A label for people.
          name:,
          # How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
          budget_resets_every: nil,
          # The most the team's keys may spend together, in USD.
          max_budget: nil,
          # The models the team's keys may use. Leave it out to allow every model.
          models: nil,
          # The most requests the team's keys may make per minute, together.
          requests_per_minute: nil,
          # The most tokens the team's keys may use per minute, together.
          tokens_per_minute: nil,
          request_options: {}
        )
        end

        # Changes a team's settings. A field left out stays as it is, and `null` clears
        # it. `models: []` lifts the model restriction. Setting `blocked` to `true` makes
        # the instance refuse every key in the team with `401`. The instance must be
        # `ready`; otherwise the request answers `409`.
        sig do
          params(
            team_id: String,
            instance_id: String,
            blocked: T::Boolean,
            budget_resets_every: T.nilable(String),
            max_budget: T.nilable(Float),
            models: T::Array[String],
            name: String,
            requests_per_minute: T.nilable(Integer),
            tokens_per_minute: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayTeamResponse)
        end
        def update(
          # Path param: The team's `id`.
          team_id,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: `true` makes the instance refuse every key in the team; `false` lets
          # them through again.
          blocked: nil,
          # Body param: How often the spend resets.
          budget_resets_every: nil,
          # Body param: The most the team's keys may spend together, in USD.
          max_budget: nil,
          # Body param: The models the team's keys may use. `[]` allows every model.
          models: nil,
          # Body param: A label for people.
          name: nil,
          # Body param: The most requests the team's keys may make per minute, together.
          requests_per_minute: nil,
          # Body param: The most tokens the team's keys may use per minute, together.
          tokens_per_minute: nil,
          request_options: {}
        )
        end

        # Lists the instance's teams. The instance must be `ready`; otherwise the request
        # answers `409`.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::TeamListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Deletes a team that has no keys and returns it. A team that still has keys
        # answers `409`; delete or move its keys first. The instance must be `ready`;
        # otherwise the request answers `409`.
        sig do
          params(
            team_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayTeamResponse)
        end
        def delete(
          # The team's `id`.
          team_id,
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
