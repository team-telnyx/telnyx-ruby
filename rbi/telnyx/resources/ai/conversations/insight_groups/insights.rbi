# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        class InsightGroups
          # Manage historical AI assistant conversations
          class Insights
            # Assigns the specified insight template to the specified insight template group.
            sig do
              params(
                insight_id: String,
                group_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def assign(
              # The ID of the insight
              insight_id,
              # The ID of the insight group
              group_id:,
              request_options: {}
            )
            end

            # Removes the specified insight template from the specified group. The insight
            # template itself is not deleted.
            sig do
              params(
                insight_id: String,
                group_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete_unassign(
              # The ID of the insight
              insight_id,
              # The ID of the insight group
              group_id:,
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
end
