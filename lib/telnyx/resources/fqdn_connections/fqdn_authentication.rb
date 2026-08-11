# frozen_string_literal: true

module Telnyx
  module Resources
    class FqdnConnections
      # FQDN connection operations
      class FqdnAuthentication
        # Retrieves the details of an existing FQDN authentication strategy for a specific
        # FQDN connection.
        #
        # @overload list(fqdn_connection_id, request_options: {})
        #
        # @param fqdn_connection_id [String] The ID of the FQDN connection.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::FqdnConnections::FqdnAuthenticationListResponse]
        #
        # @see Telnyx::Models::FqdnConnections::FqdnAuthenticationListParams
        def list(fqdn_connection_id, params = {})
          @client.request(
            method: :get,
            path: ["fqdn_connections/%1$s/fqdn_authentication", fqdn_connection_id],
            model: Telnyx::Models::FqdnConnections::FqdnAuthenticationListResponse,
            options: params[:request_options]
          )
        end

        # Updates the FQDN authentication strategy for a specific FQDN connection.
        #
        # @overload patch_all(fqdn_connection_id, failover_url: nil, fqdn_outbound_authentication: nil, ip_authentication_method: nil, password: nil, txt_name: nil, txt_ttl: nil, txt_value: nil, user_name: nil, webhook_url: nil, request_options: {})
        #
        # @param fqdn_connection_id [String] The ID of the FQDN connection.
        #
        # @param failover_url [String] The failover webhook URL.
        #
        # @param fqdn_outbound_authentication [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication] The outbound authentication type.
        #
        # @param ip_authentication_method [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod] The IP authentication method.
        #
        # @param password [String] The password for authentication.
        #
        # @param txt_name [String] The TXT record name for Microsoft Teams SBC DNS verification.
        #
        # @param txt_ttl [Integer] The TTL for the TXT record.
        #
        # @param txt_value [String] The TXT record value for Microsoft Teams SBC DNS verification.
        #
        # @param user_name [String] The username for authentication.
        #
        # @param webhook_url [String] The webhook URL for authentication events.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllResponse]
        #
        # @see Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams
        def patch_all(fqdn_connection_id, params = {})
          parsed, options = Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["fqdn_connections/%1$s/fqdn_authentication", fqdn_connection_id],
            body: parsed,
            model: Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllResponse,
            options: options
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
