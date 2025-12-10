# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyEndpoints#list
    class DynamicEmergencyEndpointListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DynamicEmergencyEndpoint>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DynamicEmergencyEndpoint] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Metadata, nil]
      optional :meta, -> { Telnyx::Metadata }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::DynamicEmergencyEndpoint>]
      #   @param meta [Telnyx::Models::Metadata]
    end
  end
end
