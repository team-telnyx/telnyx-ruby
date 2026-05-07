# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class CanaryDeployResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::CanaryDeployResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T::Array[Telnyx::AI::Assistants::RuleOutput]) }
          attr_accessor :rules

          sig { returns(Time) }
          attr_accessor :updated_at

          # Response shape.
          #
          # Always carries `rules` (canonical).
          sig do
            params(
              assistant_id: String,
              created_at: Time,
              rules: T::Array[Telnyx::AI::Assistants::RuleOutput::OrHash],
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(assistant_id:, created_at:, rules:, updated_at:)
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                created_at: Time,
                rules: T::Array[Telnyx::AI::Assistants::RuleOutput],
                updated_at: Time
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
