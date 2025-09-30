# typed: strong

module Telnyx
  module Models
    # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
    # TLS.
    module EncryptedMedia
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EncryptedMedia) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SRTP = T.let(:SRTP, Telnyx::EncryptedMedia::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::EncryptedMedia::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
