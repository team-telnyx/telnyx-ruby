# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      # The verification status of an active brand
      module BrandIdentityStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Messaging10dlc::BrandIdentityStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFIED =
          T.let(
            :VERIFIED,
            Telnyx::Messaging10dlc::BrandIdentityStatus::TaggedSymbol
          )
        UNVERIFIED =
          T.let(
            :UNVERIFIED,
            Telnyx::Messaging10dlc::BrandIdentityStatus::TaggedSymbol
          )
        SELF_DECLARED =
          T.let(
            :SELF_DECLARED,
            Telnyx::Messaging10dlc::BrandIdentityStatus::TaggedSymbol
          )
        VETTED_VERIFIED =
          T.let(
            :VETTED_VERIFIED,
            Telnyx::Messaging10dlc::BrandIdentityStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Messaging10dlc::BrandIdentityStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
