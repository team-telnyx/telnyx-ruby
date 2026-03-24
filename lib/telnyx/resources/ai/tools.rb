# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      class Tools
        # Create Tool
        #
        # @overload create(display_name:, type:, function: nil, handoff: nil, invite: nil, retrieval: nil, timeout_ms: nil, webhook: nil, request_options: {})
        #
        # @param display_name [String]
        # @param type [String]
        # @param function [Hash{Symbol=>Object}]
        # @param handoff [Hash{Symbol=>Object}]
        # @param invite [Hash{Symbol=>Object}]
        # @param retrieval [Hash{Symbol=>Object}]
        # @param timeout_ms [Integer]
        # @param webhook [Hash{Symbol=>Object}]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ToolCreateResponse]
        #
        # @see Telnyx::Models::AI::ToolCreateParams
        def create(params)
          parsed, options = Telnyx::AI::ToolCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/tools",
            body: parsed,
            model: Telnyx::Models::AI::ToolCreateResponse,
            options: options
          )
        end

        # Get Tool
        #
        # @overload retrieve(tool_id, request_options: {})
        #
        # @param tool_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ToolRetrieveResponse]
        #
        # @see Telnyx::Models::AI::ToolRetrieveParams
        def retrieve(tool_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/tools/%1$s", tool_id],
            model: Telnyx::Models::AI::ToolRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update Tool
        #
        # @overload update(tool_id, display_name: nil, function: nil, handoff: nil, invite: nil, retrieval: nil, timeout_ms: nil, type: nil, webhook: nil, request_options: {})
        #
        # @param tool_id [String]
        # @param display_name [String]
        # @param function [Hash{Symbol=>Object}]
        # @param handoff [Hash{Symbol=>Object}]
        # @param invite [Hash{Symbol=>Object}]
        # @param retrieval [Hash{Symbol=>Object}]
        # @param timeout_ms [Integer]
        # @param type [String]
        # @param webhook [Hash{Symbol=>Object}]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ToolUpdateResponse]
        #
        # @see Telnyx::Models::AI::ToolUpdateParams
        def update(tool_id, params = {})
          parsed, options = Telnyx::AI::ToolUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["ai/tools/%1$s", tool_id],
            body: parsed,
            model: Telnyx::Models::AI::ToolUpdateResponse,
            options: options
          )
        end

        # List Tools
        #
        # @overload list(filter_name: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_name [String]
        # @param filter_type [String]
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::ToolListResponse>]
        #
        # @see Telnyx::Models::AI::ToolListParams
        def list(params = {})
          parsed, options = Telnyx::AI::ToolListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/tools",
            query: query.transform_keys(
              filter_name: "filter[name]",
              filter_type: "filter[type]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::AI::ToolListResponse,
            options: options
          )
        end

        # Delete Tool
        #
        # @overload delete(tool_id, request_options: {})
        #
        # @param tool_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Telnyx::Models::AI::ToolDeleteParams
        def delete(tool_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/tools/%1$s", tool_id],
            model: Telnyx::Internal::Type::Unknown,
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
