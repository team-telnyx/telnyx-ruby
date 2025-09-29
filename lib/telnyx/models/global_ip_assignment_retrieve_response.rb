# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAssignments#retrieve
    class GlobalIPAssignmentRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPAssignment, nil]
      optional :data, -> { Telnyx::GlobalIPAssignment }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPAssignment]
    end
  end
end
