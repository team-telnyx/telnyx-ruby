# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#list_0
      class SessionList0Response < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::RoomSession>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RoomSession] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::RoomSession>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
