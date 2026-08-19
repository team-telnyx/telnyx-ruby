# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      class Tools
        # Create a new custom AI tool that can be attached to AI assistants.
        #
        # @overload create(display_name:, type:, client_side_tool: nil, function: nil, handoff: nil, invite: nil, pay: nil, retrieval: nil, timeout_ms: nil, update_dynamic_variables: nil, webhook: nil, request_options: {})
        #
        # @param display_name [String]
        #
        # @param type [String]
        #
        # @param client_side_tool [Hash{Symbol=>Object}]
        #
        # @param function [Hash{Symbol=>Object}]
        #
        # @param handoff [Hash{Symbol=>Object}]
        #
        # @param invite [Hash{Symbol=>Object}]
        #
        # @param pay [Telnyx::Models::AI::PayToolParams]
        #
        # @param retrieval [Hash{Symbol=>Object}]
        #
        # @param timeout_ms [Integer]
        #
        # @param update_dynamic_variables [Telnyx::Models::AI::UpdateDynamicVariablesToolParams] Configuration for an update_dynamic_variables tool.
        #
        # @param webhook [Hash{Symbol=>Object}]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::SharedToolResponse]
        #
        # @see Telnyx::Models::AI::ToolCreateParams
        def create(params)
          parsed, options = Telnyx::AI::ToolCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/tools",
            body: parsed,
            model: Telnyx::AI::SharedToolResponse,
            options: options
          )
        end

        # Retrieve the details of a specific AI tool.
        #
        # @overload retrieve(tool_id, request_options: {})
        #
        # @param tool_id [String] Unique identifier of the tool.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::SharedToolResponse]
        #
        # @see Telnyx::Models::AI::ToolRetrieveParams
        def retrieve(tool_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/tools/%1$s", tool_id],
            model: Telnyx::AI::SharedToolResponse,
            options: params[:request_options]
          )
        end

        # Update the configuration of an existing AI tool.
        #
        # @overload update(tool_id, client_side_tool: nil, display_name: nil, function: nil, handoff: nil, invite: nil, pay: nil, retrieval: nil, timeout_ms: nil, type: nil, update_dynamic_variables: nil, webhook: nil, request_options: {})
        #
        # @param tool_id [String] Unique identifier of the tool.
        #
        # @param client_side_tool [Hash{Symbol=>Object}]
        #
        # @param display_name [String]
        #
        # @param function [Hash{Symbol=>Object}]
        #
        # @param handoff [Hash{Symbol=>Object}]
        #
        # @param invite [Hash{Symbol=>Object}]
        #
        # @param pay [Telnyx::Models::AI::PayToolParams]
        #
        # @param retrieval [Hash{Symbol=>Object}]
        #
        # @param timeout_ms [Integer]
        #
        # @param type [String]
        #
        # @param update_dynamic_variables [Telnyx::Models::AI::UpdateDynamicVariablesToolParams] Configuration for an update_dynamic_variables tool.
        #
        # @param webhook [Hash{Symbol=>Object}]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::SharedToolResponse]
        #
        # @see Telnyx::Models::AI::ToolUpdateParams
        def update(tool_id, params = {})
          parsed, options = Telnyx::AI::ToolUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["ai/tools/%1$s", tool_id],
            body: parsed,
            model: Telnyx::AI::SharedToolResponse,
            options: options
          )
        end

        # Retrieve a list of the custom AI tools configured on your account.
        #
        # @overload list(filter_name: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_name [String] Filter results by filter name.
        #
        # @param filter_type [String] Filter results by filter type.
        #
        # @param page_number [Integer] Page number to retrieve (1-based).
        #
        # @param page_size [Integer] Number of items to return per page.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::SharedToolResponse>]
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
            model: Telnyx::AI::SharedToolResponse,
            options: options
          )
        end

        # Permanently deletes the specified custom AI tool from your account.
        #
        # @overload delete(tool_id, request_options: {})
        #
        # @param tool_id [String] Unique identifier of the tool.
        #
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
