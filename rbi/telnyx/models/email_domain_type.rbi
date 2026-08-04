# typed: strong

module Telnyx
  module Models
    module EmailDomainType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EmailDomainType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CUSTOM = T.let(:custom, Telnyx::EmailDomainType::TaggedSymbol)
      SHARED = T.let(:shared, Telnyx::EmailDomainType::TaggedSymbol)
      SHARED_INBOUND =
        T.let(:shared_inbound, Telnyx::EmailDomainType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::EmailDomainType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
