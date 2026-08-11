# typed: strong

module Telnyx
  module Resources
    class FqdnConnections
      # FQDN connection operations
      class FqdnAuthentication
        # Retrieves the details of an existing FQDN authentication strategy for a specific
        # FQDN connection.
        sig do
          params(
            fqdn_connection_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::FqdnConnections::FqdnAuthenticationListResponse
          )
        end
        def list(
          # The ID of the FQDN connection.
          fqdn_connection_id,
          request_options: {}
        )
        end

        # Updates the FQDN authentication strategy for a specific FQDN connection.
        sig do
          params(
            fqdn_connection_id: String,
            failover_url: String,
            fqdn_outbound_authentication:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication::OrSymbol,
            ip_authentication_method:
              Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod::OrSymbol,
            password: String,
            txt_name: String,
            txt_ttl: Integer,
            txt_value: String,
            user_name: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllResponse
          )
        end
        def patch_all(
          # The ID of the FQDN connection.
          fqdn_connection_id,
          # The failover webhook URL.
          failover_url: nil,
          # The outbound authentication type.
          fqdn_outbound_authentication: nil,
          # The IP authentication method.
          ip_authentication_method: nil,
          # The password for authentication.
          password: nil,
          # The TXT record name for Microsoft Teams SBC DNS verification.
          txt_name: nil,
          # The TTL for the TXT record.
          txt_ttl: nil,
          # The TXT record value for Microsoft Teams SBC DNS verification.
          txt_value: nil,
          # The username for authentication.
          user_name: nil,
          # The webhook URL for authentication events.
          webhook_url: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
