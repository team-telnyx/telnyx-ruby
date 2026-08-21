# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class InsightGroups
          # Manage historical AI assistant conversations
          # @return [Telnyx::Resources::AI::Conversations::InsightGroups::Insights]
          attr_reader :insights

          # Returns the details of a single insight template group, including the insight
          # templates assigned to it.
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

          # Updates the specified insight template group and returns the updated group.
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

          # Permanently deletes the specified insight template group by its ID.
          #
          # @overload delete(group_id, request_options: {})
          #
          # @param group_id [String] The ID of the insight group
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupDeleteParams
          def delete(group_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/conversations/insight-groups/%1$s", group_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Conversations::InsightGroupInsightGroupsParams} for more
          # details.
          #
          # Creates a new insight template group for organizing related insight templates,
          # and returns the created group.
          #
          # @overload insight_groups(name:, description: nil, webhook: nil, idempotency_key: nil, request_options: {})
          #
          # @param name [String] Body param
          #
          # @param description [String] Body param
          #
          # @param webhook [String] Body param
          #
          # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateGroupDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupInsightGroupsParams
          def insight_groups(params)
            parsed, options = Telnyx::AI::Conversations::InsightGroupInsightGroupsParams.dump_request(params)
            header_params = {idempotency_key: "idempotency-key"}
            @client.request(
              method: :post,
              path: "ai/conversations/insight-groups",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Telnyx::AI::Conversations::InsightTemplateGroupDetail,
              options: options
            )
          end

          # Returns a paginated list of your insight template groups. Groups organize
          # related insight templates that are applied together when analyzing
          # conversations.
          #
          # @overload retrieve_insight_groups(page_number: nil, page_size: nil, request_options: {})
          #
          # @param page_number [Integer]
          # @param page_size [Integer]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Conversations::InsightTemplateGroup>]
          #
          # @see Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams
          def retrieve_insight_groups(params = {})
            parsed, options = Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "ai/conversations/insight-groups",
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::AI::Conversations::InsightTemplateGroup,
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
