# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Requirements#retrieve
    class RequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DocReqsRequirement, nil]
      optional :data, -> { Telnyx::DocReqsRequirement }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::DocReqsRequirement]
    end
  end
end
