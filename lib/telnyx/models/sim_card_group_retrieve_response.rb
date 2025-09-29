# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#retrieve
    class SimCardGroupRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardGroup, nil]
      optional :data, -> { Telnyx::SimCardGroup }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardGroup]
    end
  end
end
