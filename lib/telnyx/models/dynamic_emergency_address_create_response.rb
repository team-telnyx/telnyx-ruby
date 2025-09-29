# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DynamicEmergencyAddresses#create
    class DynamicEmergencyAddressCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DynamicEmergencyAddress, nil]
      optional :data, -> { Telnyx::DynamicEmergencyAddress }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::DynamicEmergencyAddress]
    end
  end
end
