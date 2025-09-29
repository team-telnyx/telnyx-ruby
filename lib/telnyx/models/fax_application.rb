# frozen_string_literal: true

module Telnyx
  module Models
    class FaxApplication < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the resource.
      #
      #   @return [String, nil]
      optional :id, String

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

      # @!attribute application_name
      #   A user-assigned name to help manage the application.
      #
      #   @return [String, nil]
      optional :application_name, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::FaxApplication::Inbound, nil]
      optional :inbound, -> { Telnyx::FaxApplication::Inbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::FaxApplication::Outbound, nil]
      optional :outbound, -> { Telnyx::FaxApplication::Outbound }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute tags
      #   Tags associated with the Fax Application.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this connection will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this connection will be sent. Must include a
      #   scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(id: nil, active: nil, anchorsite_override: nil, application_name: nil, created_at: nil, inbound: nil, outbound: nil, record_type: nil, tags: nil, updated_at: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FaxApplication} for more details.
      #
      #   @param id [String] Uniquely identifies the resource.
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param application_name [String] A user-assigned name to help manage the application.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param inbound [Telnyx::Models::FaxApplication::Inbound]
      #
      #   @param outbound [Telnyx::Models::FaxApplication::Outbound]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param tags [Array<String>] Tags associated with the Fax Application.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # @see Telnyx::Models::FaxApplication#inbound
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
        #   @return [Symbol, Telnyx::Models::FaxApplication::Inbound::SipSubdomainReceiveSettings, nil]
        optional :sip_subdomain_receive_settings,
                 enum: -> { Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings }

        # @!method initialize(channel_limit: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FaxApplication::Inbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent inbound calls to phone number
        #
        #   @param sip_subdomain [String] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        #
        #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::FaxApplication::Inbound::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        #
        # @see Telnyx::Models::FaxApplication::Inbound#sip_subdomain_receive_settings
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          ONLY_MY_CONNECTIONS = :only_my_connections
          FROM_ANYONE = :from_anyone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::FaxApplication#outbound
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
        #   {Telnyx::Models::FaxApplication::Outbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the number of concurrent outbound calls to phone numbe
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      end
    end
  end
end
