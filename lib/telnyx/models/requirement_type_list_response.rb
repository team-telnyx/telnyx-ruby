# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementTypes#list
    class RequirementTypeListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DocReqsRequirementType>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DocReqsRequirementType] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::DocReqsRequirementType>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
