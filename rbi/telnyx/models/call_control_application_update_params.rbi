# typed: strong

module Telnyx
  module Models
    class CallControlApplicationUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallControlApplicationUpdateParams,
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
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::OrSymbol
          )
        )
      end
      attr_reader :anchorsite_override

      sig do
        params(
          anchorsite_override:
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::OrSymbol
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
            Telnyx::CallControlApplicationUpdateParams::DtmfType::OrSymbol
          )
        )
      end
      attr_reader :dtmf_type

      sig do
        params(
          dtmf_type:
            Telnyx::CallControlApplicationUpdateParams::DtmfType::OrSymbol
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

      # Tags assigned to the Call Control Application.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::OrSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::OrSymbol
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
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type:
            Telnyx::CallControlApplicationUpdateParams::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::CallControlApplicationInbound::OrHash,
          outbound: Telnyx::CallControlApplicationOutbound::OrHash,
          redact_dtmf_debug_logging: T::Boolean,
          tags: T::Array[String],
          webhook_api_version:
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::OrSymbol,
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
        # Tags assigned to the Call Control Application.
        tags: nil,
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
              Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::OrSymbol,
            call_cost_in_webhooks: T::Boolean,
            dtmf_type:
              Telnyx::CallControlApplicationUpdateParams::DtmfType::OrSymbol,
            first_command_timeout: T::Boolean,
            first_command_timeout_secs: Integer,
            inbound: Telnyx::CallControlApplicationInbound,
            outbound: Telnyx::CallControlApplicationOutbound,
            redact_dtmf_debug_logging: T::Boolean,
            tags: T::Array[String],
            webhook_api_version:
              Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::OrSymbol,
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
              Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LATENCY =
          T.let(
            :"\"Latency\"",
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::TaggedSymbol
          )
        CHICAGO_IL =
          T.let(
            :"\"Chicago, IL\"",
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::TaggedSymbol
          )
        ASHBURN_VA =
          T.let(
            :"\"Ashburn, VA\"",
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::TaggedSymbol
          )
        SAN_JOSE_CA =
          T.let(
            :"\"San Jose, CA\"",
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::TaggedSymbol
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
            T.all(Symbol, Telnyx::CallControlApplicationUpdateParams::DtmfType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RFC_2833 =
          T.let(
            :"RFC 2833",
            Telnyx::CallControlApplicationUpdateParams::DtmfType::TaggedSymbol
          )
        INBAND =
          T.let(
            :Inband,
            Telnyx::CallControlApplicationUpdateParams::DtmfType::TaggedSymbol
          )
        SIP_INFO =
          T.let(
            :"SIP INFO",
            Telnyx::CallControlApplicationUpdateParams::DtmfType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationUpdateParams::DtmfType::TaggedSymbol
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
              Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBHOOK_API_VERSION_1 =
          T.let(
            :"1",
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::TaggedSymbol
          )
        WEBHOOK_API_VERSION_2 =
          T.let(
            :"2",
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
