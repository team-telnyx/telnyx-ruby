# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      class LogMessages
        # Retrieve a log message for an external connection associated with your account.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalConnections::LogMessageRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["external_connections/log_messages/%1$s", id],
            model: Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::LogMessageListParams} for more details.
        #
        # Retrieve a list of log messages for all external connections associated with
        # your account.
        #
        # @overload list(filter: nil, page: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::ExternalConnections::LogMessageListParams::Filter] Filter parameter for log messages (deepObject style). Supports filtering by exte
        #
        # @param page [Telnyx::Models::ExternalConnections::LogMessageListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::LogMessageListResponse]
        #
        # @see Telnyx::Models::ExternalConnections::LogMessageListParams
        def list(params = {})
          parsed, options = Telnyx::ExternalConnections::LogMessageListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "external_connections/log_messages",
            query: parsed,
            model: Telnyx::Models::ExternalConnections::LogMessageListResponse,
            options: options
          )
        end

        # Dismiss a log message for an external connection associated with your account.
        #
        # @overload dismiss(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::LogMessageDismissResponse]
        #
        # @see Telnyx::Models::ExternalConnections::LogMessageDismissParams
        def dismiss(id, params = {})
          @client.request(
            method: :delete,
            path: ["external_connections/log_messages/%1$s", id],
            model: Telnyx::Models::ExternalConnections::LogMessageDismissResponse,
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
