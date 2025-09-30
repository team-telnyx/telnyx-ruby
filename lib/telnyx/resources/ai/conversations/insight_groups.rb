# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        class InsightGroups
          # @return [Telnyx::Resources::AI::Conversations::InsightGroups::Insights]
          attr_reader :insights

          # Get insight group by ID
          #
          # @overload retrieve(group_id, request_options: {})
          #
          # @param group_id [String] The ID of the insight group
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateGroupDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupRetrieveParams
          def retrieve(group_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/conversations/insight-groups/%1$s", group_id],
              model: Telnyx::AI::Conversations::InsightTemplateGroupDetail,
              options: params[:request_options]
            )
          end

          # Update an insight template group
          #
          # @overload update(group_id, description: nil, name: nil, webhook: nil, request_options: {})
          #
          # @param group_id [String] The ID of the insight group
          #
          # @param description [String]
          #
          # @param name [String]
          #
          # @param webhook [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateGroupDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupUpdateParams
          def update(group_id, params = {})
            parsed, options = Telnyx::AI::Conversations::InsightGroupUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/conversations/insight-groups/%1$s", group_id],
              body: parsed,
              model: Telnyx::AI::Conversations::InsightTemplateGroupDetail,
              options: options
            )
          end

          # Delete insight group by ID
          #
          # @overload delete(group_id, request_options: {})
          #
          # @param group_id [String] The ID of the insight group
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupDeleteParams
          def delete(group_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/conversations/insight-groups/%1$s", group_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Create a new insight group
          #
          # @overload insight_groups(name:, description: nil, webhook: nil, request_options: {})
          #
          # @param name [String]
          # @param description [String]
          # @param webhook [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateGroupDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupInsightGroupsParams
          def insight_groups(params)
            parsed, options = Telnyx::AI::Conversations::InsightGroupInsightGroupsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/conversations/insight-groups",
              body: parsed,
              model: Telnyx::AI::Conversations::InsightTemplateGroupDetail,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams} for
          # more details.
          #
          # Get all insight groups
          #
          # @overload retrieve_insight_groups(page: nil, request_options: {})
          #
          # @param page [Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsResponse]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams
          def retrieve_insight_groups(params = {})
            parsed, options = Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ai/conversations/insight-groups",
              query: parsed,
              model: Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @insights = Telnyx::Resources::AI::Conversations::InsightGroups::Insights.new(client: client)
          end
        end
      end
    end
  end
end
