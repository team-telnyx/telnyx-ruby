# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TelnyxAvatarSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute avatar_id
        #   The Telnyx stock avatar or organization-owned custom avatar to render.
        #
        #   @return [String]
        required :avatar_id, String

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
        #   **Beta:** Configuration for the Telnyx open-source avatar provider. Use a stock
        #   avatar or an organization-owned custom avatar returned by the Avatars API.
        #   Discover the available stock catalog with GET /v2/ai/avatars and
        #   filter[avatar_type]=stock; follow meta.total_pages to load every page.
        #
        #   @param avatar_id [String] The Telnyx stock avatar or organization-owned custom avatar to render.
        #
        #   @param background_id [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::BackgroundID] The background to render.
        #
        #   @param model [Symbol, Telnyx::Models::AI::TelnyxAvatarSettings::Model] Required avatar model identifier, separate from `avatar_id`. The supported value
        #
        #   @param provider [Symbol, :telnyx] Selects the Telnyx open-source avatar provider.

        # The background to render.
        #
        # @see Telnyx::Models::AI::TelnyxAvatarSettings#background_id
        module BackgroundID
          extend Telnyx::Internal::Type::Enum

          OFFICE = :office
          STUDIO = :studio
          RECEPTION = :reception
          ILLUSTRATED_WORKSPACE = :illustrated_workspace

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
