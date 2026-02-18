# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignments#delete
    class GlobalIPAssignmentDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [GlobalIPAssignment, nil]
      optional :data, -> { Telnyx::GlobalIPAssignment }

      # @!method initialize(data: nil)
      #   @param data [GlobalIPAssignment]
    end
  end
end
