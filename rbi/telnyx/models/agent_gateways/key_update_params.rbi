# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class KeyUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::KeyUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :key_id

        # `true` makes the instance refuse the key; `false` lets it through again.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :blocked

        sig { params(blocked: T::Boolean).void }
        attr_writer :blocked

        # How often the spend resets.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # How long from now until the key stops working.
        sig { returns(T.nilable(String)) }
        attr_accessor :expires_in

        # The most the key may spend, in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The most requests the key may have in flight at once.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_parallel_requests

        # The models the key may use. `[]` allows every model.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :models

        sig { params(models: T::Array[String]).void }
        attr_writer :models

        # A label for people.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The most requests the key may make per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # Move the key to this team, or `null` to leave its team.
        sig { returns(T.nilable(String)) }
        attr_accessor :team_id

        # The most tokens the key may use per minute.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

        sig do
          params(
            instance_id: String,
            key_id: String,
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
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          key_id:,
          # `true` makes the instance refuse the key; `false` lets it through again.
          blocked: nil,
          # How often the spend resets.
          budget_resets_every: nil,
          # How long from now until the key stops working.
          expires_in: nil,
          # The most the key may spend, in USD.
          max_budget: nil,
          # The most requests the key may have in flight at once.
          max_parallel_requests: nil,
          # The models the key may use. `[]` allows every model.
          models: nil,
          # A label for people.
          name: nil,
          # The most requests the key may make per minute.
          requests_per_minute: nil,
          # Move the key to this team, or `null` to leave its team.
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
              key_id: String,
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
