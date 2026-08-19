# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class InsightGroups
          # Manage historical AI assistant conversations
          sig do
            returns(
              Telnyx::Resources::AI::Conversations::InsightGroups::Insights
            )
          end
          attr_reader :insights

          # Returns the details of a single insight template group, including the insight
          # templates assigned to it.
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

          # Updates the specified insight template group and returns the updated group.
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

          # Permanently deletes the specified insight template group by its ID.
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

          # Creates a new insight template group for organizing related insight templates,
          # and returns the created group.
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

          # Returns a paginated list of your insight template groups. Groups organize
          # related insight templates that are applied together when analyzing
          # conversations.
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
