# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        class Insights
          # Create a new insight
          #
          # @overload create(instructions:, name:, json_schema: nil, webhook: nil, request_options: {})
          #
          # @param instructions [String]
          #
          # @param name [String]
          #
          # @param json_schema [String, Object] If specified, the output will follow the JSON schema.
          #
          # @param webhook [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightCreateParams
          def create(params)
            parsed, options = Telnyx::AI::Conversations::InsightCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/conversations/insights",
              body: parsed,
              model: Telnyx::AI::Conversations::InsightTemplateDetail,
              options: options
            )
          end

          # Get insight by ID
          #
          # @overload retrieve(insight_id, request_options: {})
          #
          # @param insight_id [String] The ID of the insight
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightRetrieveParams
          def retrieve(insight_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/conversations/insights/%1$s", insight_id],
              model: Telnyx::AI::Conversations::InsightTemplateDetail,
              options: params[:request_options]
            )
          end

          # Update an insight template
          #
          # @overload update(insight_id, instructions: nil, json_schema: nil, name: nil, webhook: nil, request_options: {})
          #
          # @param insight_id [String] The ID of the insight
          #
          # @param instructions [String]
          #
          # @param json_schema [String, Object]
          #
          # @param name [String]
          #
          # @param webhook [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightUpdateParams
          def update(insight_id, params = {})
            parsed, options = Telnyx::AI::Conversations::InsightUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/conversations/insights/%1$s", insight_id],
              body: parsed,
              model: Telnyx::AI::Conversations::InsightTemplateDetail,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Conversations::InsightListParams} for more details.
          #
          # Get all insights
          #
          # @overload list(page: nil, request_options: {})
          #
          # @param page [Telnyx::Models::AI::Conversations::InsightListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightListResponse]
          #
          # @see Telnyx::Models::AI::Conversations::InsightListParams
          def list(params = {})
            parsed, options = Telnyx::AI::Conversations::InsightListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ai/conversations/insights",
              query: parsed,
              model: Telnyx::Models::AI::Conversations::InsightListResponse,
              options: options
            )
          end

          # Delete insight by ID
          #
          # @overload delete(insight_id, request_options: {})
          #
          # @param insight_id [String] The ID of the insight
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Conversations::InsightDeleteParams
          def delete(insight_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/conversations/insights/%1$s", insight_id],
              model: NilClass,
              options: params[:request_options]
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
