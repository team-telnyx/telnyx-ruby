# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class CanaryDeploys
          # Endpoint to create a canary deploy configuration for an assistant.
          #
          # Creates a new canary deploy configuration with multiple version IDs and their
          # traffic percentages for A/B testing or gradual rollouts of assistant versions.
          sig do
            params(
              assistant_id: String,
              rules: T::Array[Telnyx::AI::Assistants::RuleInput::OrHash],
              idempotency_key: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::CanaryDeployResponse)
          end
          def create(
            # Path param: Unique identifier of the assistant.
            assistant_id,
            # Body param
            rules: nil,
            # Header param: Optional opaque, unquoted key for safely retrying the same logical
            # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
            # Generate a unique UUID v4 for each operation and reuse it only when retrying
            # that operation with the same request. Invalid headers—including duplicate,
            # empty, malformed, or overlong values—return 400 with error code 10015. A request
            # already in progress with the same key returns 409; reusing the key with a
            # different request returns 422. Only successful responses are replayed, for up to
            # 24 hours. Do not include sensitive data in the key.
            idempotency_key: nil,
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
          def retrieve(
            # Unique identifier of the assistant.
            assistant_id,
            request_options: {}
          )
          end

          # Endpoint to update a canary deploy configuration for an assistant.
          #
          # Updates the existing canary deploy configuration with new version IDs and
          # percentages. All old versions and percentages are replaces by new ones from this
          # request.
          sig do
            params(
              assistant_id: String,
              rules: T::Array[Telnyx::AI::Assistants::RuleInput::OrHash],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::CanaryDeployResponse)
          end
          def update(
            # Unique identifier of the assistant.
            assistant_id,
            rules: nil,
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
          def delete(
            # Unique identifier of the assistant.
            assistant_id,
            request_options: {}
          )
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
