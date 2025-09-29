# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#create
    class RoomCompositionCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RoomComposition, nil]
      optional :data, -> { Telnyx::RoomComposition }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RoomComposition]
    end
  end
end
