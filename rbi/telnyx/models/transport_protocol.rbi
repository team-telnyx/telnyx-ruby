# typed: strong

module Telnyx
  module Models
    # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
    # FQDN authentication.
    module TransportProtocol
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::TransportProtocol) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      UDP = T.let(:UDP, Telnyx::TransportProtocol::TaggedSymbol)
      TCP = T.let(:TCP, Telnyx::TransportProtocol::TaggedSymbol)
      TLS = T.let(:TLS, Telnyx::TransportProtocol::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::TransportProtocol::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
