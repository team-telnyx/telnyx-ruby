# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class TeamCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::TeamCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # A label for people.
        sig { returns(String) }
        attr_accessor :name

        # How often the spend resets: a number and a unit, `s`, `m`, `h`, or `d`.
        sig { returns(T.nilable(String)) }
        attr_accessor :budget_resets_every

        # The most the team's keys may spend together, in USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :max_budget

        # The models the team's keys may use. Leave it out to allow every model.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :models

        # The most requests the team's keys may make per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :requests_per_minute

        # The most tokens the team's keys may use per minute, together.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :tokens_per_minute

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
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
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

        sig do
          override.returns(
            {
              instance_id: String,
              name: String,
              budget_resets_every: T.nilable(String),
              max_budget: T.nilable(Float),
              models: T.nilable(T::Array[String]),
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
