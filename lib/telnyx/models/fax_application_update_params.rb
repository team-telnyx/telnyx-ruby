# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FaxApplications#update
    class FaxApplicationUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute application_name
      #   A user-assigned name to help manage the application.
      #
      #   @return [String]
      required :application_name, String

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this connection will be sent. Must include a
      #   scheme, such as 'https'.
      #
      #   @return [String]
      required :webhook_event_url, String

      # @!attribute active
      #   Specifies whether the connection can be used.
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute anchorsite_override
      #   `Latency` directs Telnyx to route media through the site with the lowest
      #   round-trip time to the user's connection. Telnyx calculates this time using ICMP
      #   ping messages. This can be disabled by specifying a site to handle all media.
      #
      #   @return [Symbol, Telnyx::Models::AnchorsiteOverride, nil]
      optional :anchorsite_override, enum: -> { Telnyx::AnchorsiteOverride }

      # @!attribute fax_email_recipient
      #   Specifies an email address where faxes sent to this application will be
      #   forwarded to (as pdf or tiff attachments)
      #
      #   @return [String, nil]
      optional :fax_email_recipient, String, nil?: true

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::FaxApplicationUpdateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::FaxApplicationUpdateParams::Inbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::FaxApplicationUpdateParams::Outbound, nil]
      optional :outbound, -> { Telnyx::FaxApplicationUpdateParams::Outbound }

      # @!attribute tags
      #   Tags associated with the Fax Application.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this connection will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, fax_email_recipient: nil, inbound: nil, outbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FaxApplicationUpdateParams} for more details.
      #
      #   @param application_name [String] A user-assigned name to help manage the application.
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param fax_email_recipient [String, nil] Specifies an email address where faxes sent to this application will be forwarde
      #
      #   @param inbound [Telnyx::Models::FaxApplicationUpdateParams::Inbound]
      #
      #   @param outbound [Telnyx::Models::FaxApplicationUpdateParams::Outbound]
      #
      #   @param tags [Array<String>] Tags associated with the Fax Application.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent inbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

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
        #   @return [Symbol, Telnyx::Models::FaxApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings, nil]
        optional :sip_subdomain_receive_settings,
                 enum: -> { Telnyx::FaxApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings }

        # @!method initialize(channel_limit: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxApplicationUpdateParams::Inbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent inbound calls to phone number
        #
        #   @param sip_subdomain [String] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        #
        #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::FaxApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        #
        # @see Telnyx::Models::FaxApplicationUpdateParams::Inbound#sip_subdomain_receive_settings
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          ONLY_MY_CONNECTIONS = :only_my_connections
          FROM_ANYONE = :from_anyone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute channel_limit
        #   When set, this will limit the number of concurrent outbound calls to phone
        #   numbers associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(channel_limit: nil, outbound_voice_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxApplicationUpdateParams::Outbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent outbound calls to phone numbe
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      end
    end
  end
end
