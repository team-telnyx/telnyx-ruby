# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#create
      class AvatarResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::Avatar]
        required :data, -> { Telnyx::AI::Avatar }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::Avatar]
      end
    end
  end
end
