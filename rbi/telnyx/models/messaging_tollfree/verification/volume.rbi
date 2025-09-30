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

          VOLUME_10 =
            T.let(
              :"10",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_100 =
            T.let(
              :"100",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_1_000 =
            T.let(
              :"1,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_10_000 =
            T.let(
              :"10,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_100_000 =
            T.let(
              :"100,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_250_000 =
            T.let(
              :"250,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_500_000 =
            T.let(
              :"500,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_750_000 =
            T.let(
              :"750,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_1_000_000 =
            T.let(
              :"1,000,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_5_000_000 =
            T.let(
              :"5,000,000",
              Telnyx::MessagingTollfree::Verification::Volume::TaggedSymbol
            )
          VOLUME_10_000_000 =
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
