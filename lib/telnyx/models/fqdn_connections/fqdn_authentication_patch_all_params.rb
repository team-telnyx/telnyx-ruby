# frozen_string_literal: true

module Telnyx
  module Models
    module FqdnConnections
      # @see Telnyx::Resources::FqdnConnections::FqdnAuthentication#patch_all
      class FqdnAuthenticationPatchAllParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute fqdn_connection_id
        #
        #   @return [String]
        required :fqdn_connection_id, String

        # @!attribute failover_url
        #   The failover webhook URL.
        #
        #   @return [String, nil]
        optional :failover_url, String

        # @!attribute fqdn_outbound_authentication
        #   The outbound authentication type.
        #
        #   @return [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication, nil]
        optional :fqdn_outbound_authentication,
                 enum: -> { Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication }

        # @!attribute ip_authentication_method
        #   The IP authentication method.
        #
        #   @return [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod, nil]
        optional :ip_authentication_method,
                 enum: -> { Telnyx::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod }

        # @!attribute password
        #   The password for authentication.
        #
        #   @return [String, nil]
        optional :password, String

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

        # @!method initialize(fqdn_connection_id:, failover_url: nil, fqdn_outbound_authentication: nil, ip_authentication_method: nil, password: nil, txt_name: nil, txt_ttl: nil, txt_value: nil, user_name: nil, webhook_url: nil, request_options: {})
        #   @param fqdn_connection_id [String]
        #
        #   @param failover_url [String] The failover webhook URL.
        #
        #   @param fqdn_outbound_authentication [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::FqdnOutboundAuthentication] The outbound authentication type.
        #
        #   @param ip_authentication_method [Symbol, Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllParams::IPAuthenticationMethod] The IP authentication method.
        #
        #   @param password [String] The password for authentication.
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
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The outbound authentication type.
        module FqdnOutboundAuthentication
          extend Telnyx::Internal::Type::Enum

          IP_AUTHENTICATION = :"ip-authentication"
          CREDENTIAL_AUTHENTICATION = :"credential-authentication"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The IP authentication method.
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
