# typed: strong

module Telnyx
  module Models
    AgentGatewayTeam = AgentGateways::AgentGatewayTeam

    module AgentGateways
      class AgentGatewayTeam < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayTeam,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the team.
        sig { returns(String) }
        attr_accessor :id

        # Whether the instance refuses every key in the team.
        sig { returns(T::Boolean) }
        attr_accessor :blocked

        # When the team's spend next resets.
        sig { returns(T.nilable(Time)) }
        attr_accessor :budget_resets_at

        # How often the team's spend resets, such as `30d`.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # When the team was created.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # The most the team's keys may spend together, in USD, until the budget resets.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The models the team's keys may use. Empty means every model the instance serves.
        sig { returns(T::Array[String]) }
        attr_accessor :models

        # A label for people. Names need not be unique.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The most requests the team's keys may make per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # What the team's keys have spent since the budget last reset, in USD.
        sig { returns(Float) }
        attr_accessor :spend

        # The most tokens the team's keys may use per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

        # A team on an instance: a model list, a budget, and rate limits that its keys
        # share.
        sig do
          params(
            id: String,
            blocked: T::Boolean,
            budget_resets_at: T.nilable(Time),
            budget_resets_every: T.nilable(String),
            created_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            models: T::Array[String],
            name: T.nilable(String),
            requests_per_minute: T.nilable(Integer),
            spend: Float,
            tokens_per_minute: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the team.
          id:,
          # Whether the instance refuses every key in the team.
          blocked:,
          # When the team's spend next resets.
          budget_resets_at:,
          # How often the team's spend resets, such as `30d`.
          budget_resets_every:,
          # When the team was created.
          created_at:,
          # The most the team's keys may spend together, in USD, until the budget resets.
          max_budget:,
          # The models the team's keys may use. Empty means every model the instance serves.
          models:,
          # A label for people. Names need not be unique.
          name:,
          # The most requests the team's keys may make per minute, together.
          requests_per_minute:,
          # What the team's keys have spent since the budget last reset, in USD.
          spend:,
          # The most tokens the team's keys may use per minute, together.
          tokens_per_minute:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              blocked: T::Boolean,
              budget_resets_at: T.nilable(Time),
              budget_resets_every: T.nilable(String),
              created_at: T.nilable(Time),
              max_budget: T.nilable(Float),
              models: T::Array[String],
              name: T.nilable(String),
              requests_per_minute: T.nilable(Integer),
              spend: Float,
              tokens_per_minute: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
