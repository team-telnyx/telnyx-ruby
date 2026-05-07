# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class RolloutSlot < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::RolloutSlot,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :version_id

          sig { returns(Float) }
          attr_accessor :weight

          # One slot in a percentage rollout.
          sig do
            params(version_id: String, weight: Float).returns(T.attached_class)
          end
          def self.new(version_id:, weight:)
          end

          sig { override.returns({ version_id: String, weight: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
