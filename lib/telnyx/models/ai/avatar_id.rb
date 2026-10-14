# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # Stable identifier of a Telnyx stock avatar or an organization-owned custom
      # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
      # prefix.
      module AvatarID
        extend Telnyx::Internal::Type::Union

        variant const: -> { Telnyx::Models::AI::AvatarID::ELENA }

        variant const: -> { Telnyx::Models::AI::AvatarID::BEN }

        variant const: -> { Telnyx::Models::AI::AvatarID::JORDAN }

        variant const: -> { Telnyx::Models::AI::AvatarID::LIN }

        variant const: -> { Telnyx::Models::AI::AvatarID::AVERY }

        variant const: -> { Telnyx::Models::AI::AvatarID::RAPHAEL }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Telnyx::AI::AvatarID::TaggedSymbol, String) }
        end

        # @!group

        ELENA = :elena
        BEN = :ben
        JORDAN = :jordan
        LIN = :lin
        AVERY = :avery
        RAPHAEL = :raphael

        # @!endgroup
      end
    end
  end
end
