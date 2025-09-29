# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyEndpoints#delete
    class DynamicEmergencyEndpointDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DynamicEmergencyEndpoint, nil]
      optional :data, -> { Telnyx::DynamicEmergencyEndpoint }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::DynamicEmergencyEndpoint]
    end
  end
end
