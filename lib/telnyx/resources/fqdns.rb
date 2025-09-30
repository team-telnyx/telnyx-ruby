# frozen_string_literal: true

module Telnyx
  module Resources
    class Fqdns
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnCreateParams} for more details.
      #
      # Create a new FQDN object.
      #
      # @overload create(connection_id:, dns_record_type:, fqdn:, port: nil, request_options: {})
      #
      # @param connection_id [String] ID of the FQDN connection to which this IP should be attached.
      #
      # @param dns_record_type [String] The DNS record type for the FQDN. For cases where a port is not set, the DNS rec
      #
      # @param fqdn [String] FQDN represented by this resource.
      #
      # @param port [Integer, nil] Port to use when connecting to this FQDN.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnCreateResponse]
      #
      # @see Telnyx::Models::FqdnCreateParams
      def create(params)
        parsed, options = Telnyx::FqdnCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fqdns",
          body: parsed,
          model: Telnyx::Models::FqdnCreateResponse,
          options: options
        )
      end

      # Return the details regarding a specific FQDN.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnRetrieveResponse]
      #
      # @see Telnyx::Models::FqdnRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["fqdns/%1$s", id],
          model: Telnyx::Models::FqdnRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnUpdateParams} for more details.
      #
      # Update the details of a specific FQDN.
      #
      # @overload update(id, connection_id: nil, dns_record_type: nil, fqdn: nil, port: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param connection_id [String] ID of the FQDN connection to which this IP should be attached.
      #
      # @param dns_record_type [String] The DNS record type for the FQDN. For cases where a port is not set, the DNS rec
      #
      # @param fqdn [String] FQDN represented by this resource.
      #
      # @param port [Integer, nil] Port to use when connecting to this FQDN.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnUpdateResponse]
      #
      # @see Telnyx::Models::FqdnUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::FqdnUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["fqdns/%1$s", id],
          body: parsed,
          model: Telnyx::Models::FqdnUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnListParams} for more details.
      #
      # Get all FQDNs belonging to the user that match the given filters.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::FqdnListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[connection\_
      #
      # @param page [Telnyx::Models::FqdnListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnListResponse]
      #
      # @see Telnyx::Models::FqdnListParams
      def list(params = {})
        parsed, options = Telnyx::FqdnListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "fqdns",
          query: parsed,
          model: Telnyx::Models::FqdnListResponse,
          options: options
        )
      end

      # Delete an FQDN.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnDeleteResponse]
      #
      # @see Telnyx::Models::FqdnDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["fqdns/%1$s", id],
          model: Telnyx::Models::FqdnDeleteResponse,
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
