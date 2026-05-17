# typed: strong

module Telnyx
  module Models
    class UacExternalSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UacExternalSettings, Telnyx::Internal::AnyHash)
        end

      # The authentication username used in SIP digest authentication. If not set, the
      # Username value will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :auth_username

      # The registration interval, in seconds, indicating how often the system refreshes
      # the SIP registration with the external SIP peer.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_sec

      # The user portion of the SIP From header used in outbound requests. This controls
      # the caller identity presented to the external SIP peer.
      sig { returns(T.nilable(String)) }
      attr_accessor :from_user

      # An optional SIP proxy used to route outbound requests before reaching the
      # external SIP peer.
      sig { returns(T.nilable(String)) }
      attr_accessor :outbound_proxy

      # The SIP password used for digest authentication with the external SIP peer.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # The SIP proxy address of the external SIP peer used for registrations and
      # outbound call routing.
      sig { returns(T.nilable(String)) }
      attr_reader :proxy

      sig { params(proxy: String).void }
      attr_writer :proxy

      # The transport protocol used for SIP signaling when communicating with the
      # external SIP peer. One of UDP, TLS, or TCP.
      sig do
        returns(T.nilable(Telnyx::UacExternalSettings::Transport::OrSymbol))
      end
      attr_accessor :transport

      # The SIP username used to authenticate with the external SIP peer for
      # registrations and outbound calls. Must start with a letter or number and contain
      # only letters, numbers, hyphens, and underscores.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # External SIP peer settings used by Telnyx when registering to your PBX and
      # routing outbound calls.
      sig do
        params(
          auth_username: T.nilable(String),
          expiration_sec: T.nilable(Integer),
          from_user: T.nilable(String),
          outbound_proxy: T.nilable(String),
          password: String,
          proxy: String,
          transport:
            T.nilable(Telnyx::UacExternalSettings::Transport::OrSymbol),
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The authentication username used in SIP digest authentication. If not set, the
        # Username value will be used.
        auth_username: nil,
        # The registration interval, in seconds, indicating how often the system refreshes
        # the SIP registration with the external SIP peer.
        expiration_sec: nil,
        # The user portion of the SIP From header used in outbound requests. This controls
        # the caller identity presented to the external SIP peer.
        from_user: nil,
        # An optional SIP proxy used to route outbound requests before reaching the
        # external SIP peer.
        outbound_proxy: nil,
        # The SIP password used for digest authentication with the external SIP peer.
        password: nil,
        # The SIP proxy address of the external SIP peer used for registrations and
        # outbound call routing.
        proxy: nil,
        # The transport protocol used for SIP signaling when communicating with the
        # external SIP peer. One of UDP, TLS, or TCP.
        transport: nil,
        # The SIP username used to authenticate with the external SIP peer for
        # registrations and outbound calls. Must start with a letter or number and contain
        # only letters, numbers, hyphens, and underscores.
        username: nil
      )
      end

      sig do
        override.returns(
          {
            auth_username: T.nilable(String),
            expiration_sec: T.nilable(Integer),
            from_user: T.nilable(String),
            outbound_proxy: T.nilable(String),
            password: String,
            proxy: String,
            transport:
              T.nilable(Telnyx::UacExternalSettings::Transport::OrSymbol),
            username: String
          }
        )
      end
      def to_hash
      end

      # The transport protocol used for SIP signaling when communicating with the
      # external SIP peer. One of UDP, TLS, or TCP.
      module Transport
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UacExternalSettings::Transport) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UDP = T.let(:UDP, Telnyx::UacExternalSettings::Transport::TaggedSymbol)
        TLS = T.let(:TLS, Telnyx::UacExternalSettings::Transport::TaggedSymbol)
        TCP = T.let(:TCP, Telnyx::UacExternalSettings::Transport::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UacExternalSettings::Transport::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
