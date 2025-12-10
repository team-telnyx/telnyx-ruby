# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#list
    class RoomCompositionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::RoomComposition>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RoomComposition] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::RoomComposition>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
