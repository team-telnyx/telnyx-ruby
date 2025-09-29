# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#list
      class ActionListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::SimCards::SimCardAction>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimCards::SimCardAction] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::SimCards::SimCardAction>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
