# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeploy < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::CanaryDeploy,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T.nilable(T::Array[Telnyx::AI::Assistants::RuleInput]))
          end
          attr_reader :rules

          sig do
            params(
              rules: T::Array[Telnyx::AI::Assistants::RuleInput::OrHash]
            ).void
          end
          attr_writer :rules

          # Create/update request body. Accepts:
          #
          # - `rules` — canonical ordered list of routing rules
          sig do
            params(
              rules: T::Array[Telnyx::AI::Assistants::RuleInput::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(rules: nil)
          end

          sig do
            override.returns(
              { rules: T::Array[Telnyx::AI::Assistants::RuleInput] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
