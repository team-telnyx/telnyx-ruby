# typed: strong

module Telnyx
  module Models
    class FaxApplicationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FaxApplicationCreateParams, Telnyx::Internal::AnyHash)
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

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::OrSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      sig { returns(T.nilable(Telnyx::FaxApplicationCreateParams::Inbound)) }
      attr_reader :inbound

      sig do
        params(
          inbound: Telnyx::FaxApplicationCreateParams::Inbound::OrHash
        ).void
      end
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::FaxApplicationCreateParams::Outbound)) }
      attr_reader :outbound

      sig do
        params(
          outbound: Telnyx::FaxApplicationCreateParams::Outbound::OrHash
        ).void
      end
      attr_writer :outbound

      # Tags associated with the Fax Application.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

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
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          inbound: Telnyx::FaxApplicationCreateParams::Inbound::OrHash,
          outbound: Telnyx::FaxApplicationCreateParams::Outbound::OrHash,
          tags: T::Array[String],
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
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        inbound: nil,
        outbound: nil,
        # Tags associated with the Fax Application.
        tags: nil,
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
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            inbound: Telnyx::FaxApplicationCreateParams::Inbound,
            outbound: Telnyx::FaxApplicationCreateParams::Outbound,
            tags: T::Array[String],
            webhook_event_failover_url: T.nilable(String),
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FaxApplicationCreateParams::Inbound,
              Telnyx::Internal::AnyHash
            )
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
              Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
            )
          )
        end
        attr_reader :sip_subdomain_receive_settings

        sig do
          params(
            sip_subdomain_receive_settings:
              Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).void
        end
        attr_writer :sip_subdomain_receive_settings

        sig do
          params(
            channel_limit: Integer,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
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
                Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
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
                Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLY_MY_CONNECTIONS =
            T.let(
              :only_my_connections,
              Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          FROM_ANYONE =
            T.let(
              :from_anyone,
              Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxApplicationCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
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
            T.any(
              Telnyx::FaxApplicationCreateParams::Outbound,
              Telnyx::Internal::AnyHash
            )
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
