# typed: strong

module Telnyx
  module Models
    class CallControlApplication < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallControlApplication, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

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
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        )
      end
      attr_reader :anchorsite_override

      sig do
        params(
          anchorsite_override:
            Telnyx::CallControlApplication::AnchorsiteOverride::OrSymbol
        ).void
      end
      attr_writer :anchorsite_override

      # A user-assigned name to help manage the application.
      sig { returns(T.nilable(String)) }
      attr_reader :application_name

      sig { params(application_name: String).void }
      attr_writer :application_name

      # Specifies if call cost webhooks should be sent for this Call Control
      # Application.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      # ISO 8601 formatted date of when the resource was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig do
        returns(
          T.nilable(Telnyx::CallControlApplication::DtmfType::TaggedSymbol)
        )
      end
      attr_reader :dtmf_type

      sig do
        params(
          dtmf_type: Telnyx::CallControlApplication::DtmfType::OrSymbol
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

      sig do
        returns(
          T.nilable(Telnyx::CallControlApplication::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::CallControlApplication::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

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

      # ISO 8601 formatted date of when the resource was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(
            Telnyx::CallControlApplication::WebhookAPIVersion::TaggedSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::CallControlApplication::WebhookAPIVersion::OrSymbol
        ).void
      end
      attr_writer :webhook_api_version

      # The failover URL where webhooks related to this connection will be sent if
      # sending to the primary URL fails. Must include a scheme, such as `https`.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this connection will be sent. Must include a
      # scheme, such as `https`.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          id: String,
          active: T::Boolean,
          anchorsite_override:
            Telnyx::CallControlApplication::AnchorsiteOverride::OrSymbol,
          application_name: String,
          call_cost_in_webhooks: T::Boolean,
          created_at: String,
          dtmf_type: Telnyx::CallControlApplication::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::CallControlApplicationInbound::OrHash,
          outbound: Telnyx::CallControlApplicationOutbound::OrHash,
          record_type: Telnyx::CallControlApplication::RecordType::OrSymbol,
          redact_dtmf_debug_logging: T::Boolean,
          tags: T::Array[String],
          updated_at: String,
          webhook_api_version:
            Telnyx::CallControlApplication::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # Specifies whether the connection can be used.
        active: nil,
        # <code>Latency</code> directs Telnyx to route media through the site with the
        # lowest round-trip time to the user's connection. Telnyx calculates this time
        # using ICMP ping messages. This can be disabled by specifying a site to handle
        # all media.
        anchorsite_override: nil,
        # A user-assigned name to help manage the application.
        application_name: nil,
        # Specifies if call cost webhooks should be sent for this Call Control
        # Application.
        call_cost_in_webhooks: nil,
        # ISO 8601 formatted date of when the resource was created
        created_at: nil,
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
        record_type: nil,
        # When enabled, DTMF digits entered by users will be redacted in debug logs to
        # protect PII data entered through IVR interactions.
        redact_dtmf_debug_logging: nil,
        # Tags assigned to the Call Control Application.
        tags: nil,
        # ISO 8601 formatted date of when the resource was last updated
        updated_at: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as `https`.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as `https`.
        webhook_event_url: nil,
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            anchorsite_override:
              Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol,
            application_name: String,
            call_cost_in_webhooks: T::Boolean,
            created_at: String,
            dtmf_type: Telnyx::CallControlApplication::DtmfType::TaggedSymbol,
            first_command_timeout: T::Boolean,
            first_command_timeout_secs: Integer,
            inbound: Telnyx::CallControlApplicationInbound,
            outbound: Telnyx::CallControlApplicationOutbound,
            record_type:
              Telnyx::CallControlApplication::RecordType::TaggedSymbol,
            redact_dtmf_debug_logging: T::Boolean,
            tags: T::Array[String],
            updated_at: String,
            webhook_api_version:
              Telnyx::CallControlApplication::WebhookAPIVersion::TaggedSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
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
            T.all(Symbol, Telnyx::CallControlApplication::AnchorsiteOverride)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LATENCY =
          T.let(
            :Latency,
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        CHICAGO_IL =
          T.let(
            :"Chicago, IL",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        ASHBURN_VA =
          T.let(
            :"Ashburn, VA",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        SAN_JOSE_CA =
          T.let(
            :"San Jose, CA",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        LONDON_UK =
          T.let(
            :"London, UK",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        CHENNAI_IN =
          T.let(
            :"Chennai, IN",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        AMSTERDAM_NETHERLANDS =
          T.let(
            :"Amsterdam, Netherlands",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        TORONTO_CANADA =
          T.let(
            :"Toronto, Canada",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )
        SYDNEY_AUSTRALIA =
          T.let(
            :"Sydney, Australia",
            Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplication::AnchorsiteOverride::TaggedSymbol
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
            T.all(Symbol, Telnyx::CallControlApplication::DtmfType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RFC_2833 =
          T.let(
            :"RFC 2833",
            Telnyx::CallControlApplication::DtmfType::TaggedSymbol
          )
        INBAND =
          T.let(:Inband, Telnyx::CallControlApplication::DtmfType::TaggedSymbol)
        SIP_INFO =
          T.let(
            :"SIP INFO",
            Telnyx::CallControlApplication::DtmfType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallControlApplication::DtmfType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CallControlApplication::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_CONTROL_APPLICATION =
          T.let(
            :call_control_application,
            Telnyx::CallControlApplication::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallControlApplication::RecordType::TaggedSymbol]
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
            T.all(Symbol, Telnyx::CallControlApplication::WebhookAPIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :"1",
            Telnyx::CallControlApplication::WebhookAPIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :"2",
            Telnyx::CallControlApplication::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplication::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
