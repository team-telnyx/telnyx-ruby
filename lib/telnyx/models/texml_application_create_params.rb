# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TexmlApplications#create
    class TexmlApplicationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute friendly_name
      #   A user-assigned name to help manage the application.
      #
      #   @return [String]
      required :friendly_name, String

      # @!attribute voice_url
      #   URL to which Telnyx will deliver your XML Translator webhooks.
      #
      #   @return [String]
      required :voice_url, String

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

      # @!attribute dtmf_type
      #   Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #   digits sent to Telnyx will be accepted in all formats.
      #
      #   @return [Symbol, Telnyx::Models::DtmfType, nil]
      optional :dtmf_type, enum: -> { Telnyx::DtmfType }

      # @!attribute first_command_timeout
      #   Specifies whether calls to phone numbers associated with this connection should
      #   hangup after timing out.
      #
      #   @return [Boolean, nil]
      optional :first_command_timeout, Telnyx::Internal::Type::Boolean

      # @!attribute first_command_timeout_secs
      #   Specifies how many seconds to wait before timing out a dial command.
      #
      #   @return [Integer, nil]
      optional :first_command_timeout_secs, Integer

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::TexmlApplicationCreateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::TexmlApplicationCreateParams::Inbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::TexmlApplicationCreateParams::Outbound, nil]
      optional :outbound, -> { Telnyx::TexmlApplicationCreateParams::Outbound }

      # @!attribute status_callback
      #   URL for Telnyx to send requests to containing information about call progress
      #   events.
      #
      #   @return [String, nil]
      optional :status_callback, String

      # @!attribute status_callback_method
      #   HTTP request method Telnyx should use when requesting the status_callback URL.
      #
      #   @return [Symbol, Telnyx::Models::TexmlApplicationCreateParams::StatusCallbackMethod, nil]
      optional :status_callback_method, enum: -> { Telnyx::TexmlApplicationCreateParams::StatusCallbackMethod }

      # @!attribute tags
      #   Tags associated with the Texml Application.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute voice_fallback_url
      #   URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      #   response from your voice_url.
      #
      #   @return [String, nil]
      optional :voice_fallback_url, String

      # @!attribute voice_method
      #   HTTP request method Telnyx will use to interact with your XML Translator
      #   webhooks. Either 'get' or 'post'.
      #
      #   @return [Symbol, Telnyx::Models::TexmlApplicationCreateParams::VoiceMethod, nil]
      optional :voice_method, enum: -> { Telnyx::TexmlApplicationCreateParams::VoiceMethod }

      # @!method initialize(friendly_name:, voice_url:, active: nil, anchorsite_override: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, status_callback: nil, status_callback_method: nil, tags: nil, voice_fallback_url: nil, voice_method: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TexmlApplicationCreateParams} for more details.
      #
      #   @param friendly_name [String] A user-assigned name to help manage the application.
      #
      #   @param voice_url [String] URL to which Telnyx will deliver your XML Translator webhooks.
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      #   @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      #   @param inbound [Telnyx::Models::TexmlApplicationCreateParams::Inbound]
      #
      #   @param outbound [Telnyx::Models::TexmlApplicationCreateParams::Outbound]
      #
      #   @param status_callback [String] URL for Telnyx to send requests to containing information about call progress ev
      #
      #   @param status_callback_method [Symbol, Telnyx::Models::TexmlApplicationCreateParams::StatusCallbackMethod] HTTP request method Telnyx should use when requesting the status_callback URL.
      #
      #   @param tags [Array<String>] Tags associated with the Texml Application.
      #
      #   @param voice_fallback_url [String] URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      #
      #   @param voice_method [Symbol, Telnyx::Models::TexmlApplicationCreateParams::VoiceMethod] HTTP request method Telnyx will use to interact with your XML Translator webhook
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Inbound < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::TexmlApplicationCreateParams::Inbound::SipSubdomainReceiveSettings, nil]
        optional :sip_subdomain_receive_settings,
                 enum: -> { Telnyx::TexmlApplicationCreateParams::Inbound::SipSubdomainReceiveSettings }

        # @!method initialize(channel_limit: nil, shaken_stir_enabled: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TexmlApplicationCreateParams::Inbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the total number of inbound calls to phone numbers ass
        #
        #   @param shaken_stir_enabled [Boolean] When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
        #
        #   @param sip_subdomain [String] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        #
        #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::TexmlApplicationCreateParams::Inbound::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        #
        # @see Telnyx::Models::TexmlApplicationCreateParams::Inbound#sip_subdomain_receive_settings
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
        #   When set, this will limit the total number of outbound calls to phone numbers
        #   associated with this connection.
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
        #   {Telnyx::Models::TexmlApplicationCreateParams::Outbound} for more details.
        #
        #   @param channel_limit [Integer] When set, this will limit the total number of outbound calls to phone numbers as
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      end

      # HTTP request method Telnyx should use when requesting the status_callback URL.
      module StatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        GET = :get
        POST = :post

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # HTTP request method Telnyx will use to interact with your XML Translator
      # webhooks. Either 'get' or 'post'.
      module VoiceMethod
        extend Telnyx::Internal::Type::Enum

        GET = :get
        POST = :post

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
