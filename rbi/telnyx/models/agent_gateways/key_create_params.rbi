# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class KeyCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::KeyCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # How long until the key stops working: a number and a unit, `s`, `m`, `h`, or
        # `d`.
        sig { returns(T.nilable(String)) }
        attr_accessor :expires_in

        # The most the key may spend, in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The most requests the key may have in flight at once.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        # The models the key may use. Leave it out to allow every model.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :models

        # A label for people, unique on the instance.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The most requests the key may make per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # A team on the instance. The key shares the team's model list, budget, and rate
        # limits.
        sig { returns(T.nilable(String)) }
        attr_accessor :team_id

        # The most tokens the key may use per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

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
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
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

        sig do
          override.returns(
            {
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
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
