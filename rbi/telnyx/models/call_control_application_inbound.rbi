# typed: strong

module Telnyx
  module Models
    class CallControlApplicationInbound < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallControlApplicationInbound,
            Telnyx::Internal::AnyHash
          )
        end

      # When set, this will limit the total number of inbound calls to phone numbers
      # associated with this connection.
      sig { returns(T.nilable(Integer)) }
      attr_reader :channel_limit

      sig { params(channel_limit: Integer).void }
      attr_writer :channel_limit

      # When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
      # calls.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shaken_stir_enabled

      sig { params(shaken_stir_enabled: T::Boolean).void }
      attr_writer :shaken_stir_enabled

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
            Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::OrSymbol
          )
        )
      end
      attr_reader :sip_subdomain_receive_settings

      sig do
        params(
          sip_subdomain_receive_settings:
            Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::OrSymbol
        ).void
      end
      attr_writer :sip_subdomain_receive_settings

      sig do
        params(
          channel_limit: Integer,
          shaken_stir_enabled: T::Boolean,
          sip_subdomain: String,
          sip_subdomain_receive_settings:
            Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When set, this will limit the total number of inbound calls to phone numbers
        # associated with this connection.
        channel_limit: nil,
        # When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
        # calls.
        shaken_stir_enabled: nil,
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
            shaken_stir_enabled: T::Boolean,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::OrSymbol
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
              Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONLY_MY_CONNECTIONS =
          T.let(
            :only_my_connections,
            Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::TaggedSymbol
          )
        FROM_ANYONE =
          T.let(
            :from_anyone,
            Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CallControlApplicationInbound::SipSubdomainReceiveSettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
