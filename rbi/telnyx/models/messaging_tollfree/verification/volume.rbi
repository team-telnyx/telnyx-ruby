# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # Message Volume Enums
        module Volume
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MessagingTollfree::Verification::Volume)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          V_10 =
            T.let(
              :"10",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_100 =
            T.let(
              :"100",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_1000 =
            T.let(
              :"1,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_10000 =
            T.let(
              :"10,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_100000 =
            T.let(
              :"100,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_250000 =
            T.let(
              :"250,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_500000 =
            T.let(
              :"500,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_750000 =
            T.let(
              :"750,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_1000000 =
            T.let(
              :"1,000,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_5000000 =
            T.let(
              :"5,000,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          V_10000000_PLUS =
            T.let(
              :"10,000,000+",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
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
