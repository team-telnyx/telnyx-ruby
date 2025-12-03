# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#list
    class SimCardListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SimpleSimCard>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::SimpleSimCard>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
