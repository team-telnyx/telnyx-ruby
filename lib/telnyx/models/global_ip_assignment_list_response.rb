# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignments#list
    class GlobalIPAssignmentListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPAssignment>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::GlobalIPAssignment] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPAssignment>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
