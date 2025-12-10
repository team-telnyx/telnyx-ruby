# typed: strong

module Telnyx
  module Models
    # The verification status of an active brand
    module BrandIdentityStatus
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::BrandIdentityStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      VERIFIED = T.let(:VERIFIED, Telnyx::BrandIdentityStatus::TaggedSymbol)
      UNVERIFIED = T.let(:UNVERIFIED, Telnyx::BrandIdentityStatus::TaggedSymbol)
      SELF_DECLARED =
        T.let(:SELF_DECLARED, Telnyx::BrandIdentityStatus::TaggedSymbol)
      VETTED_VERIFIED =
        T.let(:VETTED_VERIFIED, Telnyx::BrandIdentityStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::BrandIdentityStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
