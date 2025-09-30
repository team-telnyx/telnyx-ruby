# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class CanaryDeploys
          # Endpoint to create a canary deploy configuration for an assistant.
          #
          # Creates a new canary deploy configuration with multiple version IDs and their
          # traffic percentages for A/B testing or gradual rollouts of assistant versions.
          sig do
            params(
              assistant_id: String,
              versions: T::Array[Telnyx::AI::Assistants::VersionConfig::OrHash],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::CanaryDeployResponse)
          end
          def create(
            assistant_id,
            # List of version configurations
            versions:,
            request_options: {}
          )
          end

          # Endpoint to get a canary deploy configuration for an assistant.
          #
          # Retrieves the current canary deploy configuration with all version IDs and their
          # traffic percentages for the specified assistant.
          sig do
            params(
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::CanaryDeployResponse)
          end
          def retrieve(assistant_id, request_options: {})
          end

          # Endpoint to update a canary deploy configuration for an assistant.
          #
          # Updates the existing canary deploy configuration with new version IDs and
          # percentages. All old versions and percentages are replaces by new ones from this
          # request.
          sig do
            params(
              assistant_id: String,
              versions: T::Array[Telnyx::AI::Assistants::VersionConfig::OrHash],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::CanaryDeployResponse)
          end
          def update(
            assistant_id,
            # List of version configurations
            versions:,
            request_options: {}
          )
          end

          # Endpoint to delete a canary deploy configuration for an assistant.
          #
          # Removes all canary deploy configurations for the specified assistant.
          sig do
            params(
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(assistant_id, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
