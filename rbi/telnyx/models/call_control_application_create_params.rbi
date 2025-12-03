# typed: strong

module Telnyx
  module Models
    class CallControlApplicationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallControlApplicationCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # A user-assigned name to help manage the application.
      sig { returns(String) }
      attr_accessor :application_name

      # The URL where webhooks related to this connection will be sent. Must include a
      # scheme, such as 'https'.
      sig { returns(String) }
      attr_accessor :webhook_event_url

      # Specifies whether the connection can be used.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # <code>Latency</code> directs Telnyx to route media through the site with the
      # lowest round-trip time to the user's connection. Telnyx calculates this time
      # using ICMP ping messages. This can be disabled by specifying a site to handle
      # all media.
      sig do
        returns(
          T.nilable(
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::OrSymbol
          )
        )
      end
      attr_reader :anchorsite_override

      sig do
        params(
          anchorsite_override:
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::OrSymbol
        ).void
      end
      attr_writer :anchorsite_override

      # Specifies if call cost webhooks should be sent for this Call Control
      # Application.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig do
        returns(
          T.nilable(
            Telnyx::CallControlApplicationCreateParams::DtmfType::OrSymbol
          )
        )
      end
      attr_reader :dtmf_type

      sig do
        params(
          dtmf_type:
            Telnyx::CallControlApplicationCreateParams::DtmfType::OrSymbol
        ).void
      end
      attr_writer :dtmf_type

      # Specifies whether calls to phone numbers associated with this connection should
      # hangup after timing out.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :first_command_timeout

      sig { params(first_command_timeout: T::Boolean).void }
      attr_writer :first_command_timeout

      # Specifies how many seconds to wait before timing out a dial command.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first_command_timeout_secs

      sig { params(first_command_timeout_secs: Integer).void }
      attr_writer :first_command_timeout_secs

      sig { returns(T.nilable(Telnyx::CallControlApplicationInbound)) }
      attr_reader :inbound

      sig do
        params(inbound: Telnyx::CallControlApplicationInbound::OrHash).void
      end
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::CallControlApplicationOutbound)) }
      attr_reader :outbound

      sig do
        params(outbound: Telnyx::CallControlApplicationOutbound::OrHash).void
      end
      attr_writer :outbound

      # When enabled, DTMF digits entered by users will be redacted in debug logs to
      # protect PII data entered through IVR interactions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :redact_dtmf_debug_logging

      sig { params(redact_dtmf_debug_logging: T::Boolean).void }
      attr_writer :redact_dtmf_debug_logging

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::OrSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::OrSymbol
        ).void
      end
      attr_writer :webhook_api_version

      # The failover URL where webhooks related to this connection will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          application_name: String,
          webhook_event_url: String,
          active: T::Boolean,
          anchorsite_override:
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type:
            Telnyx::CallControlApplicationCreateParams::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::CallControlApplicationInbound::OrHash,
          outbound: Telnyx::CallControlApplicationOutbound::OrHash,
          redact_dtmf_debug_logging: T::Boolean,
          webhook_api_version:
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user-assigned name to help manage the application.
        application_name:,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # <code>Latency</code> directs Telnyx to route media through the site with the
        # lowest round-trip time to the user's connection. Telnyx calculates this time
        # using ICMP ping messages. This can be disabled by specifying a site to handle
        # all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this Call Control
        # Application.
        call_cost_in_webhooks: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Specifies whether calls to phone numbers associated with this connection should
        # hangup after timing out.
        first_command_timeout: nil,
        # Specifies how many seconds to wait before timing out a dial command.
        first_command_timeout_secs: nil,
        inbound: nil,
        outbound: nil,
        # When enabled, DTMF digits entered by users will be redacted in debug logs to
        # protect PII data entered through IVR interactions.
        redact_dtmf_debug_logging: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            application_name: String,
            webhook_event_url: String,
            active: T::Boolean,
            anchorsite_override:
              Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::OrSymbol,
            call_cost_in_webhooks: T::Boolean,
            dtmf_type:
              Telnyx::CallControlApplicationCreateParams::DtmfType::OrSymbol,
            first_command_timeout: T::Boolean,
            first_command_timeout_secs: Integer,
            inbound: Telnyx::CallControlApplicationInbound,
            outbound: Telnyx::CallControlApplicationOutbound,
            redact_dtmf_debug_logging: T::Boolean,
            webhook_api_version:
              Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # <code>Latency</code> directs Telnyx to route media through the site with the
      # lowest round-trip time to the user's connection. Telnyx calculates this time
      # using ICMP ping messages. This can be disabled by specifying a site to handle
      # all media.
      module AnchorsiteOverride
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LATENCY =
          T.let(
            :Latency,
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        CHICAGO_IL =
          T.let(
            :"Chicago, IL",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        ASHBURN_VA =
          T.let(
            :"Ashburn, VA",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        SAN_JOSE_CA =
          T.let(
            :"San Jose, CA",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        LONDON_UK =
          T.let(
            :"London, UK",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        CHENNAI_IN =
          T.let(
            :"Chennai, IN",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        AMSTERDAM_NETHERLANDS =
          T.let(
            :"Amsterdam, Netherlands",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        TORONTO_CANADA =
          T.let(
            :"Toronto, Canada",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )
        SYDNEY_AUSTRALIA =
          T.let(
            :"Sydney, Australia",
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      module DtmfType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallControlApplicationCreateParams::DtmfType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RFC_2833 =
          T.let(
            :"RFC 2833",
            Telnyx::CallControlApplicationCreateParams::DtmfType::TaggedSymbol
          )
        INBAND =
          T.let(
            :Inband,
            Telnyx::CallControlApplicationCreateParams::DtmfType::TaggedSymbol
          )
        SIP_INFO =
          T.let(
            :"SIP INFO",
            Telnyx::CallControlApplicationCreateParams::DtmfType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationCreateParams::DtmfType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBHOOK_API_VERSION_1 =
          T.let(
            :"1",
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::TaggedSymbol
          )
        WEBHOOK_API_VERSION_2 =
          T.let(
            :"2",
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
