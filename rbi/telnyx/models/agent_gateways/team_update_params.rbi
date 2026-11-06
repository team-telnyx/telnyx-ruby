# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class TeamUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::TeamUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :team_id

        # `true` makes the instance refuse every key in the team; `false` lets them
        # through again.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :blocked

        sig { params(blocked: T::Boolean).void }
        attr_writer :blocked

        # How often the spend resets.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # The most the team's keys may spend together, in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The models the team's keys may use. `[]` allows every model.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :models

        sig { params(models: T::Array[String]).void }
        attr_writer :models

        # A label for people.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The most requests the team's keys may make per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # The most tokens the team's keys may use per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

        sig do
          params(
            instance_id: String,
            team_id: String,
            blocked: T::Boolean,
            budget_resets_every: T.nilable(String),
            max_budget: T.nilable(Float),
            models: T::Array[String],
            name: String,
            requests_per_minute: T.nilable(Integer),
            tokens_per_minute: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          team_id:,
          # `true` makes the instance refuse every key in the team; `false` lets them
          # through again.
          blocked: nil,
          # How often the spend resets.
          budget_resets_every: nil,
          # The most the team's keys may spend together, in USD.
          max_budget: nil,
          # The models the team's keys may use. `[]` allows every model.
          models: nil,
          # A label for people.
          name: nil,
          # The most requests the team's keys may make per minute, together.
          requests_per_minute: nil,
          # The most tokens the team's keys may use per minute, together.
          tokens_per_minute: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              instance_id: String,
              team_id: String,
              blocked: T::Boolean,
              budget_resets_every: T.nilable(String),
              max_budget: T.nilable(Float),
              models: T::Array[String],
              name: String,
              requests_per_minute: T.nilable(Integer),
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
