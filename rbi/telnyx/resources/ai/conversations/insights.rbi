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
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateDetail)
          end
          def create(
            instructions:,
            name:,
            # If specified, the output will follow the JSON schema.
            json_schema: nil,
            webhook: nil,
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
