# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#retrieve_participants
      class SessionRetrieveParticipantsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::RoomParticipant>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::RoomParticipant>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
