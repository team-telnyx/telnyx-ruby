# typed: strong

module Telnyx
  module Models
    AgentGatewayKey = AgentGateways::AgentGatewayKey

    module AgentGateways
      class AgentGatewayKey < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayKey,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the key. It is a 64-character hash the instance stores in place of
        # the key's value.
        sig { returns(String) }
        attr_accessor :id

        # Whether the instance refuses the key.
        sig { returns(T::Boolean) }
        attr_accessor :blocked

        # When the key's spend next resets.
        sig { returns(T.nilable(Time)) }
        attr_accessor :budget_resets_at

        # How often the key's spend resets, such as `30d`.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # When the key was issued.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # When the key stops working; `null` when it does not expire.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # The most the key may spend, in USD, until its budget resets.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The most requests the key may have in flight at once.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        # The models the key may use. Empty means every model the instance serves.
        sig { returns(T::Array[String]) }
        attr_accessor :models

        # A label for people; `null` when none was given.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The most requests the key may make per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # What the key has spent since its budget last reset, in USD.
        sig { returns(Float) }
        attr_accessor :spend

        # The team the key belongs to, if any.
        sig { returns(T.nilable(String)) }
        attr_accessor :team_id

        # The most tokens the key may use per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

        # A key on an instance, without its value.
        sig do
          params(
            id: String,
            blocked: T::Boolean,
            budget_resets_at: T.nilable(Time),
            budget_resets_every: T.nilable(String),
            created_at: T.nilable(Time),
            expires_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            models: T::Array[String],
            name: T.nilable(String),
            requests_per_minute: T.nilable(Integer),
            spend: Float,
            team_id: T.nilable(String),
            tokens_per_minute: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the key. It is a 64-character hash the instance stores in place of
          # the key's value.
          id:,
          # Whether the instance refuses the key.
          blocked:,
          # When the key's spend next resets.
          budget_resets_at:,
          # How often the key's spend resets, such as `30d`.
          budget_resets_every:,
          # When the key was issued.
          created_at:,
          # When the key stops working; `null` when it does not expire.
          expires_at:,
          # The most the key may spend, in USD, until its budget resets.
          max_budget:,
          # The most requests the key may have in flight at once.
          max_parallel_requests:,
          # The models the key may use. Empty means every model the instance serves.
          models:,
          # A label for people; `null` when none was given.
          name:,
          # The most requests the key may make per minute.
          requests_per_minute:,
          # What the key has spent since its budget last reset, in USD.
          spend:,
          # The team the key belongs to, if any.
          team_id:,
          # The most tokens the key may use per minute.
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
              expires_at: T.nilable(Time),
              max_budget: T.nilable(Float),
              max_parallel_requests: T.nilable(Integer),
              models: T::Array[String],
              name: T.nilable(String),
              requests_per_minute: T.nilable(Integer),
              spend: Float,
              team_id: T.nilable(String),
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
