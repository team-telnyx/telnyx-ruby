# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        # Manage historical AI assistant conversations
        class Insights
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Conversations::InsightCreateParams} for more details.
          #
          # Creates a new insight template defining an analysis to run over conversations,
          # and returns the created template.
          #
          # @overload create(instructions:, name:, json_schema: nil, webhook: nil, idempotency_key: nil, request_options: {})
          #
          # @param instructions [String] Body param
          #
          # @param name [String] Body param
          #
          # @param json_schema [String, Hash{Symbol=>Object}] Body param: If specified, the output will follow the JSON schema.
          #
          # @param webhook [String] Body param
          #
          # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Conversations::InsightTemplateDetail]
          #
          # @see Telnyx::Models::AI::Conversations::InsightCreateParams
          def create(params)
            parsed, options = Telnyx::AI::Conversations::InsightCreateParams.dump_request(params)
            header_params = {idempotency_key: "idempotency-key"}
            @client.request(
              method: :post,
              path: "ai/conversations/insights",
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Telnyx::AI::Conversations::InsightTemplateDetail,
              options: options
            )
          end

          # Returns the details of a single insight template by its ID, including its
          # configuration.
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

          # Updates the specified insight template and returns the updated template.
          #
          # @overload update(insight_id, instructions: nil, json_schema: nil, name: nil, webhook: nil, request_options: {})
          #
          # @param insight_id [String] The ID of the insight
          #
          # @param instructions [String]
          #
          # @param json_schema [String, Hash{Symbol=>Object}]
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

          # Returns a paginated list of your insight templates. Insight templates define
          # analyses that run over AI conversations to extract structured findings.
          #
          # @overload list(page_number: nil, page_size: nil, request_options: {})
          #
          # @param page_number [Integer]
          # @param page_size [Integer]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Conversations::InsightTemplate>]
          #
          # @see Telnyx::Models::AI::Conversations::InsightListParams
          def list(params = {})
            parsed, options = Telnyx::AI::Conversations::InsightListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "ai/conversations/insights",
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::AI::Conversations::InsightTemplate,
              options: options
            )
          end

          # Permanently deletes the specified insight template by its ID.
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
