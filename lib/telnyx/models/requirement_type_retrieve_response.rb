# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementTypes#retrieve
    class RequirementTypeRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DocReqsRequirementType, nil]
      optional :data, -> { Telnyx::DocReqsRequirementType }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::DocReqsRequirementType]
    end
  end
end
