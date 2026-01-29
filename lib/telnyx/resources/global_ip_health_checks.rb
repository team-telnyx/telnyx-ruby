# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPHealthChecks
      # Create a Global IP health check.
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

      # Retrieve a Global IP health check.
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

      # List all Global IP health checks.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::GlobalIPHealthCheckListResponse>]
      #
      # @see Telnyx::Models::GlobalIPHealthCheckListParams
      def list(params = {})
        parsed, options = Telnyx::GlobalIPHealthCheckListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_health_checks",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::GlobalIPHealthCheckListResponse,
          options: options
        )
      end

      # Delete a Global IP health check.
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
