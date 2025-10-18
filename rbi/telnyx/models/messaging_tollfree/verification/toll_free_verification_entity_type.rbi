# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Business entity classification
        module TollFreeVerificationEntityType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOLE_PROPRIETOR =
            T.let(
              :SOLE_PROPRIETOR,
              Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
            )
          PRIVATE_PROFIT =
            T.let(
              :PRIVATE_PROFIT,
              Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
            )
          PUBLIC_PROFIT =
            T.let(
              :PUBLIC_PROFIT,
              Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :NON_PROFIT,
              Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
            )
          GOVERNMENT =
            T.let(
              :GOVERNMENT,
              Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingTollfree::Verification::TollFreeVerificationEntityType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
