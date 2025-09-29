# frozen_string_literal: true

module Telnyx
  module Models
    class InboundFqdn < Telnyx::Internal::Type::BaseModel
      # @!attribute ani_number_format
      #   This setting allows you to set the format with which the caller's number (ANI)
      #   is sent for inbound phone calls.
      #
      #   @return [Symbol, Telnyx::Models::InboundFqdn::AniNumberFormat, nil]
      optional :ani_number_format, enum: -> { Telnyx::InboundFqdn::AniNumberFormat }

      # @!attribute channel_limit
      #   When set, this will limit the total number of inbound calls to phone numbers
      #   associated with this connection.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer, nil?: true

      # @!attribute codecs
      #   Defines the list of codecs that Telnyx will send for inbound calls to a specific
      #   number on your portal account, in priority order. This only works when the
      #   Connection the number is assigned to uses Media Handling mode: default. OPUS and
      #   H.264 codecs are available only when using TCP or TLS transport for SIP.
      #
      #   @return [Array<String>, nil]
      optional :codecs, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute default_primary_fqdn_id
      #   The default primary FQDN to use for the number. Only settable if the connection
      #   is of FQDN type. Value must be the ID of an FQDN set on the connection.
      #
      #   @return [String, nil]
      optional :default_primary_fqdn_id, String, nil?: true

      # @!attribute default_routing_method
      #   Default routing method to be used when a number is associated with the
      #   connection. Must be one of the routing method types or null, other values are
      #   not allowed.
      #
      #   @return [Symbol, Telnyx::Models::InboundFqdn::DefaultRoutingMethod, nil]
      optional :default_routing_method, enum: -> { Telnyx::InboundFqdn::DefaultRoutingMethod }, nil?: true

      # @!attribute default_secondary_fqdn_id
      #   The default secondary FQDN to use for the number. Only settable if the
      #   connection is of FQDN type. Value must be the ID of an FQDN set on the
      #   connection.
      #
      #   @return [String, nil]
      optional :default_secondary_fqdn_id, String, nil?: true

      # @!attribute default_tertiary_fqdn_id
      #   The default tertiary FQDN to use for the number. Only settable if the connection
      #   is of FQDN type. Value must be the ID of an FQDN set on the connection.
      #
      #   @return [String, nil]
      optional :default_tertiary_fqdn_id, String, nil?: true

      # @!attribute dnis_number_format
      #
      #   @return [Symbol, Telnyx::Models::InboundFqdn::DnisNumberFormat, nil]
      optional :dnis_number_format, enum: -> { Telnyx::InboundFqdn::DnisNumberFormat }

      # @!attribute generate_ringback_tone
      #   Generate ringback tone through 183 session progress message with early media.
      #
      #   @return [Boolean, nil]
      optional :generate_ringback_tone, Telnyx::Internal::Type::Boolean

      # @!attribute isup_headers_enabled
      #   When set, inbound phone calls will receive ISUP parameters via SIP headers.
      #   (Only when available and only when using TCP or TLS transport.)
      #
      #   @return [Boolean, nil]
      optional :isup_headers_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute prack_enabled
      #   Enable PRACK messages as defined in RFC3262.
      #
      #   @return [Boolean, nil]
      optional :prack_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute shaken_stir_enabled
      #   When enabled the SIP Connection will receive the Identity header with
      #   Shaken/Stir data in the SIP INVITE message of inbound calls, even when using UDP
      #   transport.
      #
      #   @return [Boolean, nil]
      optional :shaken_stir_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute sip_compact_headers_enabled
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :sip_compact_headers_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute sip_region
      #   Selects which `sip_region` to receive inbound calls from. If null, the default
      #   region (US) will be used.
      #
      #   @return [Symbol, Telnyx::Models::InboundFqdn::SipRegion, nil]
      optional :sip_region, enum: -> { Telnyx::InboundFqdn::SipRegion }

      # @!attribute sip_subdomain
      #   Specifies a subdomain that can be used to receive Inbound calls to a Connection,
      #   in the same way a phone number is used, from a SIP endpoint. Example: the
      #   subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
      #   the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
      #   alphanumeric value. Please note TLS encrypted calls are not allowed for
      #   subdomain calls.
      #
      #   @return [String, nil]
      optional :sip_subdomain, String, nil?: true

      # @!attribute sip_subdomain_receive_settings
      #   This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      #   the public Internet) or "Only my connections" (any connection assigned to the
      #   same Telnyx user).
      #
      #   @return [Symbol, Telnyx::Models::InboundFqdn::SipSubdomainReceiveSettings, nil]
      optional :sip_subdomain_receive_settings, enum: -> { Telnyx::InboundFqdn::SipSubdomainReceiveSettings }

      # @!attribute timeout_1xx_secs
      #   Time(sec) before aborting if connection is not made.
      #
      #   @return [Integer, nil]
      optional :timeout_1xx_secs, Integer

      # @!attribute timeout_2xx_secs
      #   Time(sec) before aborting if call is unanswered (min: 1, max: 600).
      #
      #   @return [Integer, nil]
      optional :timeout_2xx_secs, Integer

      # @!method initialize(ani_number_format: nil, channel_limit: nil, codecs: nil, default_primary_fqdn_id: nil, default_routing_method: nil, default_secondary_fqdn_id: nil, default_tertiary_fqdn_id: nil, dnis_number_format: nil, generate_ringback_tone: nil, isup_headers_enabled: nil, prack_enabled: nil, shaken_stir_enabled: nil, sip_compact_headers_enabled: nil, sip_region: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil, timeout_1xx_secs: nil, timeout_2xx_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InboundFqdn} for more details.
      #
      #   @param ani_number_format [Symbol, Telnyx::Models::InboundFqdn::AniNumberFormat] This setting allows you to set the format with which the caller's number (ANI) i
      #
      #   @param channel_limit [Integer, nil] When set, this will limit the total number of inbound calls to phone numbers ass
      #
      #   @param codecs [Array<String>] Defines the list of codecs that Telnyx will send for inbound calls to a specific
      #
      #   @param default_primary_fqdn_id [String, nil] The default primary FQDN to use for the number. Only settable if the connection
      #
      #   @param default_routing_method [Symbol, Telnyx::Models::InboundFqdn::DefaultRoutingMethod, nil] Default routing method to be used when a number is associated with the connectio
      #
      #   @param default_secondary_fqdn_id [String, nil] The default secondary FQDN to use for the number. Only settable if the connectio
      #
      #   @param default_tertiary_fqdn_id [String, nil] The default tertiary FQDN to use for the number. Only settable if the connection
      #
      #   @param dnis_number_format [Symbol, Telnyx::Models::InboundFqdn::DnisNumberFormat]
      #
      #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
      #
      #   @param isup_headers_enabled [Boolean] When set, inbound phone calls will receive ISUP parameters via SIP headers. (Onl
      #
      #   @param prack_enabled [Boolean] Enable PRACK messages as defined in RFC3262.
      #
      #   @param shaken_stir_enabled [Boolean] When enabled the SIP Connection will receive the Identity header with Shaken/Sti
      #
      #   @param sip_compact_headers_enabled [Boolean] Defaults to true.
      #
      #   @param sip_region [Symbol, Telnyx::Models::InboundFqdn::SipRegion] Selects which `sip_region` to receive inbound calls from. If null, the default r
      #
      #   @param sip_subdomain [String, nil] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
      #
      #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::InboundFqdn::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      #
      #   @param timeout_1xx_secs [Integer] Time(sec) before aborting if connection is not made.
      #
      #   @param timeout_2xx_secs [Integer] Time(sec) before aborting if call is unanswered (min: 1, max: 600).

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      #
      # @see Telnyx::Models::InboundFqdn#ani_number_format
      module AniNumberFormat
        extend Telnyx::Internal::Type::Enum

        PLUS_E_164 = :"+E.164"
        E_164 = :"E.164"
        PLUS_E_164_NATIONAL = :"+E.164-national"
        E_164_NATIONAL = :"E.164-national"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Default routing method to be used when a number is associated with the
      # connection. Must be one of the routing method types or null, other values are
      # not allowed.
      #
      # @see Telnyx::Models::InboundFqdn#default_routing_method
      module DefaultRoutingMethod
        extend Telnyx::Internal::Type::Enum

        SEQUENTIAL = :sequential
        ROUND_ROBIN = :"round-robin"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::InboundFqdn#dnis_number_format
      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        PLUS_E164 = :"+e164"
        E164 = :e164
        NATIONAL = :national
        SIP_USERNAME = :sip_username

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Selects which `sip_region` to receive inbound calls from. If null, the default
      # region (US) will be used.
      #
      # @see Telnyx::Models::InboundFqdn#sip_region
      module SipRegion
        extend Telnyx::Internal::Type::Enum

        US = :US
        EUROPE = :Europe
        AUSTRALIA = :Australia

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      # the public Internet) or "Only my connections" (any connection assigned to the
      # same Telnyx user).
      #
      # @see Telnyx::Models::InboundFqdn#sip_subdomain_receive_settings
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
