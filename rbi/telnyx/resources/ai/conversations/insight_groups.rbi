# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        class InsightGroups
          sig do
            returns(
              Telnyx::Resources::AI::Conversations::InsightGroups::Insights
            )
          end
          attr_reader :insights

          # Get insight group by ID
          sig do
            params(
              group_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateGroupDetail)
          end
          def retrieve(
            # The ID of the insight group
            group_id,
            request_options: {}
          )
          end

          # Update an insight template group
          sig do
            params(
              group_id: String,
              description: String,
              name: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateGroupDetail)
          end
          def update(
            # The ID of the insight group
            group_id,
            description: nil,
            name: nil,
            webhook: nil,
            request_options: {}
          )
          end

          # Delete insight group by ID
          sig do
            params(
              group_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the insight group
            group_id,
            request_options: {}
          )
          end

          # Create a new insight group
          sig do
            params(
              name: String,
              description: String,
              webhook: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Conversations::InsightTemplateGroupDetail)
          end
          def insight_groups(
            name:,
            description: nil,
            webhook: nil,
            request_options: {}
          )
          end

          # Get all insight groups
          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::AI::Conversations::InsightTemplateGroup
              ]
            )
          end
          def retrieve_insight_groups(
            page_number: nil,
            page_size: nil,
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
