# frozen_string_literal: true

module Telnyx
  module Resources
    class DynamicEmergencyEndpoints
      # Creates a dynamic emergency endpoints.
      #
      # @overload create(callback_number:, caller_name:, dynamic_emergency_address_id:, request_options: {})
      #
      # @param callback_number [String]
      #
      # @param caller_name [String]
      #
      # @param dynamic_emergency_address_id [String] An id of a currently active dynamic emergency location.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyEndpointCreateResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyEndpointCreateParams
      def create(params)
        parsed, options = Telnyx::DynamicEmergencyEndpointCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dynamic_emergency_endpoints",
          body: parsed,
          model: Telnyx::Models::DynamicEmergencyEndpointCreateResponse,
          options: options
        )
      end

      # Returns the dynamic emergency endpoint based on the ID provided
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Dynamic Emergency Endpoint id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyEndpointRetrieveResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyEndpointRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["dynamic_emergency_endpoints/%1$s", id],
          model: Telnyx::Models::DynamicEmergencyEndpointRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DynamicEmergencyEndpointListParams} for more details.
      #
      # Returns the dynamic emergency endpoints according to filters
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DynamicEmergencyEndpointListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param page [Telnyx::Models::DynamicEmergencyEndpointListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::DynamicEmergencyEndpoint>]
      #
      # @see Telnyx::Models::DynamicEmergencyEndpointListParams
      def list(params = {})
        parsed, options = Telnyx::DynamicEmergencyEndpointListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dynamic_emergency_endpoints",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::DynamicEmergencyEndpoint,
          options: options
        )
      end

      # Deletes the dynamic emergency endpoint based on the ID provided
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Dynamic Emergency Endpoint id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DynamicEmergencyEndpointDeleteResponse]
      #
      # @see Telnyx::Models::DynamicEmergencyEndpointDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["dynamic_emergency_endpoints/%1$s", id],
          model: Telnyx::Models::DynamicEmergencyEndpointDeleteResponse,
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
