# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallControlApplications#create
    class CallControlApplicationCreateParams < Telnyx::Internal::Type::BaseModel
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
      #   <code>Latency</code> directs Telnyx to route media through the site with the
      #   lowest round-trip time to the user's connection. Telnyx calculates this time
      #   using ICMP ping messages. This can be disabled by specifying a site to handle
      #   all media.
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplicationCreateParams::AnchorsiteOverride, nil]
      optional :anchorsite_override, enum: -> { Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride }

      # @!attribute call_cost_in_webhooks
      #   Specifies if call cost webhooks should be sent for this Call Control
      #   Application.
      #
      #   @return [Boolean, nil]
      optional :call_cost_in_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute dtmf_type
      #   Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #   digits sent to Telnyx will be accepted in all formats.
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplicationCreateParams::DtmfType, nil]
      optional :dtmf_type, enum: -> { Telnyx::CallControlApplicationCreateParams::DtmfType }

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
      #   @return [Telnyx::Models::CallControlApplicationInbound, nil]
      optional :inbound, -> { Telnyx::CallControlApplicationInbound }

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::CallControlApplicationOutbound, nil]
      optional :outbound, -> { Telnyx::CallControlApplicationOutbound }

      # @!attribute redact_dtmf_debug_logging
      #   When enabled, DTMF digits entered by users will be redacted in debug logs to
      #   protect PII data entered through IVR interactions.
      #
      #   @return [Boolean, nil]
      optional :redact_dtmf_debug_logging, Telnyx::Internal::Type::Boolean

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplicationCreateParams::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion }

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

      # @!method initialize(application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, call_cost_in_webhooks: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, redact_dtmf_debug_logging: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallControlApplicationCreateParams} for more details.
      #
      #   @param application_name [String] A user-assigned name to help manage the application.
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::CallControlApplicationCreateParams::AnchorsiteOverride] <code>Latency</code> directs Telnyx to route media through the site with the low
      #
      #   @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this Call Control Application
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::CallControlApplicationCreateParams::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      #   @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      #   @param inbound [Telnyx::Models::CallControlApplicationInbound]
      #
      #   @param outbound [Telnyx::Models::CallControlApplicationOutbound]
      #
      #   @param redact_dtmf_debug_logging [Boolean] When enabled, DTMF digits entered by users will be redacted in debug logs to pro
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::CallControlApplicationCreateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # <code>Latency</code> directs Telnyx to route media through the site with the
      # lowest round-trip time to the user's connection. Telnyx calculates this time
      # using ICMP ping messages. This can be disabled by specifying a site to handle
      # all media.
      module AnchorsiteOverride
        extend Telnyx::Internal::Type::Enum

        LATENCY = :Latency
        CHICAGO_IL = :"Chicago, IL"
        ASHBURN_VA = :"Ashburn, VA"
        SAN_JOSE_CA = :"San Jose, CA"
        LONDON_UK = :"London, UK"
        CHENNAI_IN = :"Chennai, IN"
        AMSTERDAM_NETHERLANDS = :"Amsterdam, Netherlands"
        TORONTO_CANADA = :"Toronto, Canada"
        SYDNEY_AUSTRALIA = :"Sydney, Australia"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      module DtmfType
        extend Telnyx::Internal::Type::Enum

        RFC_2833 = :"RFC 2833"
        INBAND = :Inband
        SIP_INFO = :"SIP INFO"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        V1 = :"1"
        V2 = :"2"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
