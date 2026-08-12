# frozen_string_literal: true

module Telnyx
  module Models
    module FqdnConnections
      class FqdnConnectionsFqdnAuthentication < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute connection_id
        #   The ID of the FQDN connection this authentication strategy belongs to.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute failover_url
        #   The failover webhook URL.
        #
        #   @return [String, nil]
        optional :failover_url, String

        # @!attribute fqdn_outbound_authentication
        #   The outbound authentication type.
        #
        #   @return [Symbol, Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication, nil]
        optional :fqdn_outbound_authentication,
                 enum: -> { Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication }

        # @!attribute ip_authentication_method
        #   The IP authentication method.
        #
        #   @return [Symbol, Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod, nil]
        optional :ip_authentication_method,
                 enum: -> { Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod }

        # @!attribute microsoft_teams_sbc
        #   Whether the connection is a Microsoft Teams SBC.
        #
        #   @return [Boolean, nil]
        optional :microsoft_teams_sbc, Telnyx::Internal::Type::Boolean

        # @!attribute password
        #   The password for authentication.
        #
        #   @return [String, nil]
        optional :password, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute txt_name
        #   The TXT record name for Microsoft Teams SBC DNS verification.
        #
        #   @return [String, nil]
        optional :txt_name, String

        # @!attribute txt_ttl
        #   The TTL for the TXT record.
        #
        #   @return [Integer, nil]
        optional :txt_ttl, Integer

        # @!attribute txt_value
        #   The TXT record value for Microsoft Teams SBC DNS verification.
        #
        #   @return [String, nil]
        optional :txt_value, String

        # @!attribute user_name
        #   The username for authentication.
        #
        #   @return [String, nil]
        optional :user_name, String

        # @!attribute webhook_url
        #   The webhook URL for authentication events.
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!method initialize(id: nil, connection_id: nil, failover_url: nil, fqdn_outbound_authentication: nil, ip_authentication_method: nil, microsoft_teams_sbc: nil, password: nil, record_type: nil, txt_name: nil, txt_ttl: nil, txt_value: nil, user_name: nil, webhook_url: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param connection_id [String] The ID of the FQDN connection this authentication strategy belongs to.
        #
        #   @param failover_url [String] The failover webhook URL.
        #
        #   @param fqdn_outbound_authentication [Symbol, Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication::FqdnOutboundAuthentication] The outbound authentication type.
        #
        #   @param ip_authentication_method [Symbol, Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication::IPAuthenticationMethod] The IP authentication method.
        #
        #   @param microsoft_teams_sbc [Boolean] Whether the connection is a Microsoft Teams SBC.
        #
        #   @param password [String] The password for authentication.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param txt_name [String] The TXT record name for Microsoft Teams SBC DNS verification.
        #
        #   @param txt_ttl [Integer] The TTL for the TXT record.
        #
        #   @param txt_value [String] The TXT record value for Microsoft Teams SBC DNS verification.
        #
        #   @param user_name [String] The username for authentication.
        #
        #   @param webhook_url [String] The webhook URL for authentication events.

        # The outbound authentication type.
        #
        # @see Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication#fqdn_outbound_authentication
        module FqdnOutboundAuthentication
          extend Telnyx::Internal::Type::Enum

          IP_AUTHENTICATION = :"ip-authentication"
          CREDENTIAL_AUTHENTICATION = :"credential-authentication"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The IP authentication method.
        #
        # @see Telnyx::Models::FqdnConnections::FqdnConnectionsFqdnAuthentication#ip_authentication_method
        module IPAuthenticationMethod
          extend Telnyx::Internal::Type::Enum

          TOKEN = :token
          P_CHARGE_INFO = :"p-charge-info"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
