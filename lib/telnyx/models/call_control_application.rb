# frozen_string_literal: true

module Telnyx
  module Models
    class CallControlApplication < Telnyx::Internal::Type::BaseModel
      # @!attribute id
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
      #   @return [Symbol, Telnyx::Models::CallControlApplication::AnchorsiteOverride, nil]
      optional :anchorsite_override, enum: -> { Telnyx::CallControlApplication::AnchorsiteOverride }

      # @!attribute application_name
      #   A user-assigned name to help manage the application.
      #
      #   @return [String, nil]
      optional :application_name, String

      # @!attribute created_at
      #   ISO 8601 formatted date of when the resource was created
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute dtmf_type
      #   Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #   digits sent to Telnyx will be accepted in all formats.
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplication::DtmfType, nil]
      optional :dtmf_type, enum: -> { Telnyx::CallControlApplication::DtmfType }

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

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplication::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallControlApplication::RecordType }

      # @!attribute redact_dtmf_debug_logging
      #   When enabled, DTMF digits entered by users will be redacted in debug logs to
      #   protect PII data entered through IVR interactions.
      #
      #   @return [Boolean, nil]
      optional :redact_dtmf_debug_logging, Telnyx::Internal::Type::Boolean

      # @!attribute tags
      #   Tags assigned to the Call Control Application.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the resource was last updated
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::CallControlApplication::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::CallControlApplication::WebhookAPIVersion }

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this connection will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as `https`.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this connection will be sent. Must include a
      #   scheme, such as `https`.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(id: nil, active: nil, anchorsite_override: nil, application_name: nil, created_at: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, record_type: nil, redact_dtmf_debug_logging: nil, tags: nil, updated_at: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallControlApplication} for more details.
      #
      #   @param id [String]
      #
      #   @param active [Boolean] Specifies whether the connection can be used.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::CallControlApplication::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param application_name [String] A user-assigned name to help manage the application.
      #
      #   @param created_at [String] ISO 8601 formatted date of when the resource was created
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::CallControlApplication::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      #   @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      #   @param inbound [Telnyx::Models::CallControlApplicationInbound]
      #
      #   @param outbound [Telnyx::Models::CallControlApplicationOutbound]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallControlApplication::RecordType]
      #
      #   @param redact_dtmf_debug_logging [Boolean] When enabled, DTMF digits entered by users will be redacted in debug logs to pro
      #
      #   @param tags [Array<String>] Tags assigned to the Call Control Application.
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the resource was last updated
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::CallControlApplication::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil]

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      #
      # @see Telnyx::Models::CallControlApplication#anchorsite_override
      module AnchorsiteOverride
        extend Telnyx::Internal::Type::Enum

        LATENCY = :"\"Latency\""
        CHICAGO_IL = :"\"Chicago, IL\""
        ASHBURN_VA = :"\"Ashburn, VA\""
        SAN_JOSE_CA = :"\"San Jose, CA\""

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      #
      # @see Telnyx::Models::CallControlApplication#dtmf_type
      module DtmfType
        extend Telnyx::Internal::Type::Enum

        RFC_2833 = :"RFC 2833"
        INBAND = :Inband
        SIP_INFO = :"SIP INFO"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallControlApplication#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CALL_CONTROL_APPLICATION = :call_control_application

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @see Telnyx::Models::CallControlApplication#webhook_api_version
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        WEBHOOK_API_VERSION_1 = :"1"
        WEBHOOK_API_VERSION_2 = :"2"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
