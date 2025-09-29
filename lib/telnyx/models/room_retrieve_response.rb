# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#retrieve
    class RoomRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Room, nil]
      optional :data, -> { Telnyx::Room }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Room]
    end
  end
end
