# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#retrieve
      class AvatarRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute avatar_id
        #   Stable identifier returned by the Avatars API. Discover available stock IDs with
        #   GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
        #   list. Custom avatar IDs use the `avatar_` prefix and must belong to the
        #   authenticated organization. The service validates that the selected avatar is
        #   available.
        #
        #   @return [String]
        required :avatar_id, String

        # @!method initialize(avatar_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AvatarRetrieveParams} for more details.
        #
        #   @param avatar_id [String] Stable identifier returned by the Avatars API. Discover available stock IDs with
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
