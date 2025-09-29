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

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T::Array[Telnyx::AI::Assistants::VersionConfig]) }
          attr_accessor :versions

          # Response model for canary deploy operations.
          sig do
            params(
              assistant_id: String,
              created_at: Time,
              updated_at: Time,
              versions: T::Array[Telnyx::AI::Assistants::VersionConfig::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(assistant_id:, created_at:, updated_at:, versions:)
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                created_at: Time,
                updated_at: Time,
                versions: T::Array[Telnyx::AI::Assistants::VersionConfig]
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
