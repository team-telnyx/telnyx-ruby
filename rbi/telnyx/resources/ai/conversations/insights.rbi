# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        class Insights
          # Create a new insight
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

          # Get insight by ID
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

          # Update an insight template
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

          # Get all insights
          sig do
            params(
              page: Telnyx::AI::Conversations::InsightListParams::Page::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Conversations::InsightListResponse)
          end
          def list(
            # Consolidated page parameter (deepObject style). Originally: page[number],
            # page[size]
            page: nil,
            request_options: {}
          )
          end

          # Delete insight by ID
          sig do
            params(
              insight_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
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
