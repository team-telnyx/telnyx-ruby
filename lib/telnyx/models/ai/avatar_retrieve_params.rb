# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#retrieve
      class AvatarRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute avatar_id
        #   Stable identifier of a Telnyx stock avatar or an organization-owned custom
        #   avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
        #   prefix.
        #
        #   @return [Symbol, String, Telnyx::Models::AI::AvatarID]
        required :avatar_id, union: -> { Telnyx::AI::AvatarID }

        # @!method initialize(avatar_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AvatarRetrieveParams} for more details.
        #
        #   @param avatar_id [Symbol, String, Telnyx::Models::AI::AvatarID] Stable identifier of a Telnyx stock avatar or an organization-owned custom avata
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
