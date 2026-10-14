# typed: strong

module Telnyx
  module Models
    module AI
      # Stable identifier of a Telnyx stock avatar or an organization-owned custom
      # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
      # prefix.
      module AvatarID
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Telnyx::AI::AvatarID::TaggedSymbol, String) }

        sig { override.returns(T::Array[Telnyx::AI::AvatarID::Variants]) }
        def self.variants
        end

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AI::AvatarID) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ELENA = T.let(:elena, Telnyx::AI::AvatarID::TaggedSymbol)
        BEN = T.let(:ben, Telnyx::AI::AvatarID::TaggedSymbol)
        JORDAN = T.let(:jordan, Telnyx::AI::AvatarID::TaggedSymbol)
        LIN = T.let(:lin, Telnyx::AI::AvatarID::TaggedSymbol)
        AVERY = T.let(:avery, Telnyx::AI::AvatarID::TaggedSymbol)
        RAPHAEL = T.let(:raphael, Telnyx::AI::AvatarID::TaggedSymbol)
      end
    end
  end
end
