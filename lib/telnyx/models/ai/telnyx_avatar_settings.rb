# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TelnyxAvatarSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute avatar_id
        #   The Telnyx avatar to render.
        #
        #   @return [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::AvatarID]
        required :avatar_id, enum: -> { Telnyx::AI::TelnyxAvatarSettings::AvatarID }

        # @!attribute background_id
        #   The background to render.
        #
        #   @return [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::BackgroundID]
        required :background_id, enum: -> { Telnyx::AI::TelnyxAvatarSettings::BackgroundID }

        # @!attribute model
        #   Required avatar model identifier, separate from `avatar_id`. The supported value
        #   is `foxtrot-1`. Omission, null, and unsupported model identifiers are rejected.
        #
        #   @return [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::Model]
        required :model, enum: -> { Telnyx::AI::TelnyxAvatarSettings::Model }

        # @!attribute provider
        #   Selects the Telnyx open-source avatar provider.
        #
        #   @return [Symbol, :telnyx]
        required :provider, const: :telnyx

        # @!method initialize(avatar_id:, background_id:, model:, provider: :telnyx)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TelnyxAvatarSettings} for more details.
        #
        #   **Beta:** Configuration for the Telnyx open-source avatar provider. The launch
        #   catalog supports six avatars and office, studio, or reception backgrounds.
        #
        #   @param avatar_id [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::AvatarID] The Telnyx avatar to render.
        #
        #   @param background_id [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::BackgroundID] The background to render.
        #
        #   @param model [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::Model] Required avatar model identifier, separate from `avatar_id`. The supported value
        #
        #   @param provider [Symbol, :telnyx] Selects the Telnyx open-source avatar provider.

        # The Telnyx avatar to render.
        #
        # @see Telnyx::Models::AI::TelnyxAvatarSettings#avatar_id
        module AvatarID
          extend Telnyx::Internal::Type::Enum

          ELENA = :elena
          BEN = :ben
          JORDAN = :jordan
          LIN = :lin
          AVERY = :avery
          RAPHAEL = :raphael

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The background to render.
        #
        # @see Telnyx::Models::AI::TelnyxAvatarSettings#background_id
        module BackgroundID
          extend Telnyx::Internal::Type::Enum

          OFFICE = :office
          STUDIO = :studio
          RECEPTION = :reception

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Required avatar model identifier, separate from `avatar_id`. The supported value
        # is `foxtrot-1`. Omission, null, and unsupported model identifiers are rejected.
        #
        # @see Telnyx::Models::AI::TelnyxAvatarSettings#model
        module Model
          extend Telnyx::Internal::Type::Enum

          FOXTROT_1 = :"foxtrot-1"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
