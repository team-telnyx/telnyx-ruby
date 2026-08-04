# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Business entity classification
        module MessagingTollFreeVerificationEntityType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOLE_PROPRIETOR =
            T.let(
              :SOLE_PROPRIETOR,
              Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
            )
          PRIVATE_PROFIT =
            T.let(
              :PRIVATE_PROFIT,
              Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
            )
          PUBLIC_PROFIT =
            T.let(
              :PUBLIC_PROFIT,
              Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :NON_PROFIT,
              Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
            )
          GOVERNMENT =
            T.let(
              :GOVERNMENT,
              Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingTollfree::Verification::MessagingTollFreeVerificationEntityType::TaggedSymbol
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
