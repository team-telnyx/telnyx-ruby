# typed: strong

module Telnyx
  module Models
    module AI
      # Whether the avatar is provided by Telnyx or was uploaded by the authenticated
      # organization.
      module AvatarType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AI::AvatarType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STOCK = T.let(:stock, Telnyx::AI::AvatarType::TaggedSymbol)
        CUSTOM = T.let(:custom, Telnyx::AI::AvatarType::TaggedSymbol)

        sig { override.returns(T::Array[Telnyx::AI::AvatarType::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
