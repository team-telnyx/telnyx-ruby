# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class Serve < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::Assistants::Serve, Telnyx::Internal::AnyHash)
            end

          sig do
            returns(T.nilable(T::Array[Telnyx::AI::Assistants::RolloutSlot]))
          end
          attr_reader :rollout

          sig do
            params(
              rollout: T::Array[Telnyx::AI::Assistants::RolloutSlot::OrHash]
            ).void
          end
          attr_writer :rollout

          sig { returns(T.nilable(String)) }
          attr_reader :version_id

          sig { params(version_id: String).void }
          attr_writer :version_id

          # What a rule serves when matched.
          #
          # Exactly one of:
          #
          # - `version_id` — serve a specific version
          # - `rollout` — weighted random across versions; weights must sum to less than
          #   100, with the leftover routing to the main version
          sig do
            params(
              rollout: T::Array[Telnyx::AI::Assistants::RolloutSlot::OrHash],
              version_id: String
            ).returns(T.attached_class)
          end
          def self.new(rollout: nil, version_id: nil)
          end

          sig do
            override.returns(
              {
                rollout: T::Array[Telnyx::AI::Assistants::RolloutSlot],
                version_id: String
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
