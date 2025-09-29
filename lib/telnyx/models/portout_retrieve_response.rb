# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#retrieve
    class PortoutRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PortoutDetails, nil]
      optional :data, -> { Telnyx::PortoutDetails }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PortoutDetails]
    end
  end
end
