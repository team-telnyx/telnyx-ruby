# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderEndUser < Telnyx::Internal::Type::BaseModel
      # @!attribute admin
      #
      #   @return [Telnyx::Models::PortingOrderEndUserAdmin, nil]
      optional :admin, -> { Telnyx::PortingOrderEndUserAdmin }

      # @!attribute location
      #
      #   @return [Telnyx::Models::PortingOrderEndUserLocation, nil]
      optional :location, -> { Telnyx::PortingOrderEndUserLocation }

      # @!method initialize(admin: nil, location: nil)
      #   @param admin [Telnyx::Models::PortingOrderEndUserAdmin]
      #   @param location [Telnyx::Models::PortingOrderEndUserLocation]
    end
  end
end
