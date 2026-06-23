# typed: strong

module Telnyx
  module Models
    ConferenceRegion = Conferences::ConferenceRegion

    module Conferences
      # Region where the conference data is located. Defaults to the region defined in
      # user's data locality settings (Europe or US).
      module ConferenceRegion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Conferences::ConferenceRegion) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUSTRALIA =
          T.let(:Australia, Telnyx::Conferences::ConferenceRegion::TaggedSymbol)
        EUROPE =
          T.let(:Europe, Telnyx::Conferences::ConferenceRegion::TaggedSymbol)
        MIDDLE_EAST =
          T.let(
            :"Middle East",
            Telnyx::Conferences::ConferenceRegion::TaggedSymbol
          )
        US = T.let(:US, Telnyx::Conferences::ConferenceRegion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Conferences::ConferenceRegion::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
