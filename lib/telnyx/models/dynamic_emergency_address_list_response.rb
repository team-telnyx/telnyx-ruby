# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyAddresses#list
    class DynamicEmergencyAddressListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DynamicEmergencyAddress>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DynamicEmergencyAddress] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Metadata, nil]
      optional :meta, -> { Telnyx::Metadata }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::DynamicEmergencyAddress>]
      #   @param meta [Telnyx::Models::Metadata]
    end
  end
end
