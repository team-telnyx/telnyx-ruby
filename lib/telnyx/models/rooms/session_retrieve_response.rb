# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#retrieve
      class SessionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::RoomSession, nil]
        optional :data, -> { Telnyx::RoomSession }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::RoomSession]
      end
    end
  end
end
