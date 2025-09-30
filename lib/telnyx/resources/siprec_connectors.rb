# frozen_string_literal: true

module Telnyx
  module Resources
    class SiprecConnectors
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SiprecConnectorCreateParams} for more details.
      #
      # Creates a new SIPREC connector configuration.
      #
      # @overload create(host:, name:, port:, app_subdomain: nil, request_options: {})
      #
      # @param host [String] Hostname/IPv4 address of the SIPREC SRS.
      #
      # @param name [String] Name for the SIPREC connector resource.
      #
      # @param port [Integer] Port for the SIPREC SRS.
      #
      # @param app_subdomain [String] Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SiprecConnectorCreateResponse]
      #
      # @see Telnyx::Models::SiprecConnectorCreateParams
      def create(params)
        parsed, options = Telnyx::SiprecConnectorCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "siprec_connectors",
          body: parsed,
          model: Telnyx::Models::SiprecConnectorCreateResponse,
          options: options
        )
      end

      # Returns details of a stored SIPREC connector.
      #
      # @overload retrieve(connector_name, request_options: {})
      #
      # @param connector_name [String] Uniquely identifies a SIPREC connector.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SiprecConnectorRetrieveResponse]
      #
      # @see Telnyx::Models::SiprecConnectorRetrieveParams
      def retrieve(connector_name, params = {})
        @client.request(
          method: :get,
          path: ["siprec_connectors/%1$s", connector_name],
          model: Telnyx::Models::SiprecConnectorRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SiprecConnectorUpdateParams} for more details.
      #
      # Updates a stored SIPREC connector configuration.
      #
      # @overload update(connector_name, host:, name:, port:, app_subdomain: nil, request_options: {})
      #
      # @param connector_name [String] Uniquely identifies a SIPREC connector.
      #
      # @param host [String] Hostname/IPv4 address of the SIPREC SRS.
      #
      # @param name [String] Name for the SIPREC connector resource.
      #
      # @param port [Integer] Port for the SIPREC SRS.
      #
      # @param app_subdomain [String] Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SiprecConnectorUpdateResponse]
      #
      # @see Telnyx::Models::SiprecConnectorUpdateParams
      def update(connector_name, params)
        parsed, options = Telnyx::SiprecConnectorUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["siprec_connectors/%1$s", connector_name],
          body: parsed,
          model: Telnyx::Models::SiprecConnectorUpdateResponse,
          options: options
        )
      end

      # Deletes a stored SIPREC connector.
      #
      # @overload delete(connector_name, request_options: {})
      #
      # @param connector_name [String] Uniquely identifies a SIPREC connector.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::SiprecConnectorDeleteParams
      def delete(connector_name, params = {})
        @client.request(
          method: :delete,
          path: ["siprec_connectors/%1$s", connector_name],
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
