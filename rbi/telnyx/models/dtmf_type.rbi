# typed: strong

module Telnyx
  module Models
    # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
    # digits sent to Telnyx will be accepted in all formats.
    module DtmfType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::DtmfType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      RFC_2833 = T.let(:"RFC 2833", Telnyx::DtmfType::TaggedSymbol)
      INBAND = T.let(:Inband, Telnyx::DtmfType::TaggedSymbol)
      SIP_INFO = T.let(:"SIP INFO", Telnyx::DtmfType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::DtmfType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
