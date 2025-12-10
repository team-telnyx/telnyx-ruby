# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#list
    class RoomListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Room>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Room] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Room>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
