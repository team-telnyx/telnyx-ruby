# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        class InsightGroups
          class Insights
            # Assign an insight to a group
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

            # Remove an insight from a group
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
