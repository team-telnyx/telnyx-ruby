# typed: strong

module Telnyx
  module Models
    class FaxApplication < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::FaxApplication, Telnyx::Internal::AnyHash)
        end

      # Uniquely identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Specifies whether the connection can be used.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::TaggedSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # A user-assigned name to help manage the application.
      sig { returns(T.nilable(String)) }
      attr_reader :application_name

      sig { params(application_name: String).void }
      attr_writer :application_name

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(Telnyx::FaxApplication::Inbound)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::FaxApplication::Inbound::OrHash).void }
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::FaxApplication::Outbound)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::FaxApplication::Outbound::OrHash).void }
      attr_writer :outbound

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Tags associated with the Fax Application.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The failover URL where webhooks related to this connection will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this connection will be sent. Must include a
      # scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          id: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          application_name: String,
          created_at: String,
          inbound: Telnyx::FaxApplication::Inbound::OrHash,
          outbound: Telnyx::FaxApplication::Outbound::OrHash,
          record_type: String,
          tags: T::Array[String],
          updated_at: String,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the resource.
        id: nil,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # A user-assigned name to help manage the application.
        application_name: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        inbound: nil,
        outbound: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Tags associated with the Fax Application.
        tags: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
            application_name: String,
            created_at: String,
            inbound: Telnyx::FaxApplication::Inbound,
            outbound: Telnyx::FaxApplication::Outbound,
            record_type: String,
            tags: T::Array[String],
            updated_at: String,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::FaxApplication::Inbound, Telnyx::Internal::AnyHash)
          end

        # When set, this will limit the number of concurrent inbound calls to phone
        # numbers associated with this connection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        # in the same way a phone number is used, from a SIP endpoint. Example: the
        # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
        # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
        # alphanumeric value. Please note TLS encrypted calls are not allowed for
        # subdomain calls.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_subdomain

        sig { params(sip_subdomain: String).void }
        attr_writer :sip_subdomain

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        sig do
          returns(
            T.nilable(
              Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          )
        end
        attr_reader :sip_subdomain_receive_settings

        sig do
          params(
            sip_subdomain_receive_settings:
              Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).void
        end
        attr_writer :sip_subdomain_receive_settings

        sig do
          params(
            channel_limit: Integer,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # When set, this will limit the number of concurrent inbound calls to phone
          # numbers associated with this connection.
          channel_limit: nil,
          # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
          # in the same way a phone number is used, from a SIP endpoint. Example: the
          # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
          # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
          # alphanumeric value. Please note TLS encrypted calls are not allowed for
          # subdomain calls.
          sip_subdomain: nil,
          # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
          # the public Internet) or "Only my connections" (any connection assigned to the
          # same Telnyx user).
          sip_subdomain_receive_settings: nil
        )
        end

        sig do
          override.returns(
            {
              channel_limit: Integer,
              sip_subdomain: String,
              sip_subdomain_receive_settings:
                Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLY_MY_CONNECTIONS =
            T.let(
              :only_my_connections,
              Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          FROM_ANYONE =
            T.let(
              :from_anyone,
              Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::FaxApplication::Outbound, Telnyx::Internal::AnyHash)
          end

        # When set, this will limit the number of concurrent outbound calls to phone
        # numbers associated with this connection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        sig do
          params(
            channel_limit: Integer,
            outbound_voice_profile_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # When set, this will limit the number of concurrent outbound calls to phone
          # numbers associated with this connection.
          channel_limit: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            { channel_limit: Integer, outbound_voice_profile_id: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
