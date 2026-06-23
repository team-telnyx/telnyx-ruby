# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class RuleInput < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::RuleInput,
                Telnyx::Internal::AnyHash
              )
            end

          # What a rule serves when matched.
          #
          # Exactly one of:
          #
          # - `version_id` — serve a specific version
          # - `rollout` — weighted random across versions; weights must sum to less than
          #   100, with the leftover routing to the main version
          sig { returns(Telnyx::AI::Assistants::Serve) }
          attr_reader :serve

          sig { params(serve: Telnyx::AI::Assistants::Serve::OrHash).void }
          attr_writer :serve

          sig { returns(T.nilable(T::Array[Telnyx::AI::Assistants::Clause])) }
          attr_reader :match

          sig do
            params(match: T::Array[Telnyx::AI::Assistants::Clause::OrHash]).void
          end
          attr_writer :match

          # A targeting rule: `match` clauses (AND) gate `serve`.
          #
          # An empty `match` is a catch-all (always fires).
          sig do
            params(
              serve: Telnyx::AI::Assistants::Serve::OrHash,
              match: T::Array[Telnyx::AI::Assistants::Clause::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # What a rule serves when matched.
            #
            # Exactly one of:
            #
            # - `version_id` — serve a specific version
            # - `rollout` — weighted random across versions; weights must sum to less than
            #   100, with the leftover routing to the main version
            serve:,
            match: nil
          )
          end

          sig do
            override.returns(
              {
                serve: Telnyx::AI::Assistants::Serve,
                match: T::Array[Telnyx::AI::Assistants::Clause]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
