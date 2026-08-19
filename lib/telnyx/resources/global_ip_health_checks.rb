# frozen_string_literal: true

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPHealthChecks
      # Creates a health check for a Global IP to monitor the health of its assignments.
      # Creation is asynchronous, so the request is accepted and the health check
      # becomes active once provisioning completes.
      #
      # @overload create(global_ip_id: nil, health_check_params: nil, health_check_type: nil, request_options: {})
      #
      # @param global_ip_id [String] Global IP ID.
      #
      # @param health_check_params [Hash{Symbol=>Object}] A Global IP health check params.
      #
      # @param health_check_type [String] The Global IP health check type.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPHealthCheckCreateResponse]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckCreateParams
      def create(params = {})
        parsed, options = Telnyx::GlobalIPHealthCheckCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "global_ip_health_checks",
          body: parsed,
          model: Telnyx::Models::GlobalIPHealthCheckCreateResponse,
          options: options
        )
      end

      # Returns the details of a single Global IP health check, including its type and
      # configuration.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPHealthCheckRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["global_ip_health_checks/%1$s", id],
          model: Telnyx::Models::GlobalIPHealthCheckRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of the Global IP health checks configured on your
      # account.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::GlobalIPHealthCheck>]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckListParams
      def list(params = {})
        parsed, options = Telnyx::GlobalIPHealthCheckListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "global_ip_health_checks",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::GlobalIPHealthCheck,
          options: options
        )
      end

      # Deletes the specified Global IP health check so it no longer monitors the Global
      # IP's assignments.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPHealthCheckDeleteResponse]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["global_ip_health_checks/%1$s", id],
          model: Telnyx::Models::GlobalIPHealthCheckDeleteResponse,
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
