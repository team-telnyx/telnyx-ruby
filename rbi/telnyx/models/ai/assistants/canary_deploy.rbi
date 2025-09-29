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

          # List of version configurations
          sig { returns(T::Array[Telnyx::AI::Assistants::VersionConfig]) }
          attr_accessor :versions

          # Request model for creating or updating canary deploys.
          sig do
            params(
              versions: T::Array[Telnyx::AI::Assistants::VersionConfig::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # List of version configurations
            versions:
          )
          end

          sig do
            override.returns(
              { versions: T::Array[Telnyx::AI::Assistants::VersionConfig] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
