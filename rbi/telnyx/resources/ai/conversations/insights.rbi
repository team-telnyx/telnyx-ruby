# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class Insights
          # Creates a new insight template defining an analysis to run over conversations,
          # and returns the created template.
          sig do
            params(
              instructions: String,
              name: String,
              json_schema:
                Telnyx::AI::Conversations::InsightCreateParams::JsonSchema::Variants,
              webhook: String,
              idempotency_key: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateDetail)
          end
          def create(
            # Body param
            instructions:,
            # Body param
            name:,
            # Body param: If specified, the output will follow the JSON schema.
            json_schema: nil,
            # Body param
            webhook: nil,
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

          # Returns the details of a single insight template by its ID, including its
          # configuration.
          sig do
            params(
              insight_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateDetail)
          end
          def retrieve(
            # The ID of the insight
            insight_id,
            request_options: {}
          )
          end

          # Updates the specified insight template and returns the updated template.
          sig do
            params(
              insight_id: String,
              instructions: String,
              json_schema:
                Telnyx::AI::Conversations::InsightUpdateParams::JsonSchema::Variants,
              name: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateDetail)
          end
          def update(
            # The ID of the insight
            insight_id,
            instructions: nil,
            json_schema: nil,
            name: nil,
            webhook: nil,
            request_options: {}
          )
          end

          # Returns a paginated list of your insight templates. Insight templates define
          # analyses that run over AI conversations to extract structured findings.
          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::AI::Conversations::InsightTemplate
              ]
            )
          end
          def list(page_number: nil, page_size: nil, request_options: {})
          end

          # Permanently deletes the specified insight template by its ID.
          sig do
            params(
              insight_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the insight
            insight_id,
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
