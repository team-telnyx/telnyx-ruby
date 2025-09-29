# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class VersionConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::VersionConfig,
                Telnyx::Internal::AnyHash
              )
            end

          # Percentage of traffic for this version [1-99]
          sig { returns(Float) }
          attr_accessor :percentage

          # Version ID string that references assistant_versions.version_id
          sig { returns(String) }
          attr_accessor :version_id

          # Configuration for a single version in canary deploy.
          sig do
            params(percentage: Float, version_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Percentage of traffic for this version [1-99]
            percentage:,
            # Version ID string that references assistant_versions.version_id
            version_id:
          )
          end

          sig { override.returns({ percentage: Float, version_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
