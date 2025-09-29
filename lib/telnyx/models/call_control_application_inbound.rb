# frozen_string_literal: true

module Telnyx
  module Models
    class CallControlApplicationInbound < Telnyx::Internal::Type::BaseModel
      # @!attribute channel_limit
      #   When set, this will limit the total number of inbound calls to phone numbers
      #   associated with this connection.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer

      # @!attribute shaken_stir_enabled
      #   When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
      #   calls.
      #
      #   @return [Boolean, nil]
      optional :shaken_stir_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute sip_subdomain
      #   Specifies a subdomain that can be used to receive Inbound calls to a Connection,
      #   in the same way a phone number is used, from a SIP endpoint. Example: the
      #   subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
      #   the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
      #   alphanumeric value. Please note TLS encrypted calls are not allowed for
      #   subdomain calls.
      #
      #   @return [String, nil]
      optional :sip_subdomain, String

      # @!attribute sip_subdomain_receive_settings
      #   This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      #   the public Internet) or "Only my connections" (any connection assigned to the
      #   same Telnyx user).
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplicationInbound::SipSubdomainReceiveSettings, nil]
      optional :sip_subdomain_receive_settings,
               enum: -> { Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings }

      # @!method initialize(channel_limit: nil, shaken_stir_enabled: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallControlApplicationInbound} for more details.
      #
      #   @param channel_limit [Integer] When set, this will limit the total number of inbound calls to phone numbers ass
      #
      #   @param shaken_stir_enabled [Boolean] When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
      #
      #   @param sip_subdomain [String] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
      #
      #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::CallControlApplicationInbound::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in

      # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      # the public Internet) or "Only my connections" (any connection assigned to the
      # same Telnyx user).
      #
      # @see Telnyx::Models::CallControlApplicationInbound#sip_subdomain_receive_settings
      module SipSubdomainReceiveSettings
        extend Telnyx::Internal::Type::Enum

        ONLY_MY_CONNECTIONS = :only_my_connections
        FROM_ANYONE = :from_anyone

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
