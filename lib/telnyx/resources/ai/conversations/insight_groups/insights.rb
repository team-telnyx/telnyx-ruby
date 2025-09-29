# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        class InsightGroups
          class Insights
            # Assign an insight to a group
            #
            # @overload assign(insight_id, group_id:, request_options: {})
            #
            # @param insight_id [String] The ID of the insight
            #
            # @param group_id [String] The ID of the insight group
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Object]
            #
            # @see Telnyx::Models::AI::Conversations::InsightGroups::InsightAssignParams
            def assign(insight_id, params)
              parsed, options = Telnyx::AI::Conversations::InsightGroups::InsightAssignParams.dump_request(params)
              group_id =
                parsed.delete(:group_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/conversations/insight-groups/%1$s/insights/%2$s/assign", group_id, insight_id],
                model: Telnyx::Internal::Type::Unknown,
                options: options
              )
            end

            # Remove an insight from a group
            #
            # @overload delete_unassign(insight_id, group_id:, request_options: {})
            #
            # @param insight_id [String] The ID of the insight
            #
            # @param group_id [String] The ID of the insight group
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Object]
            #
            # @see Telnyx::Models::AI::Conversations::InsightGroups::InsightDeleteUnassignParams
            def delete_unassign(insight_id, params)
              parsed, options =
                Telnyx::AI::Conversations::InsightGroups::InsightDeleteUnassignParams.dump_request(params)
              group_id =
                parsed.delete(:group_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: ["ai/conversations/insight-groups/%1$s/insights/%2$s/unassign", group_id, insight_id],
                model: Telnyx::Internal::Type::Unknown,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
