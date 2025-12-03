# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#list
      class ActionListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::SimCardGroups::SimCardGroupAction>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimCardGroups::SimCardGroupAction] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::SimCardGroups::SimCardGroupAction>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
