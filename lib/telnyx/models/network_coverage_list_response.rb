# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkCoverage#list
    class NetworkCoverageListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute available_services
      #   List of interface types supported in this region.
      #
      #   @return [Array<Symbol, Telnyx::Models::AvailableService>, nil]
      optional :available_services, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AvailableService] }

      # @!attribute location
      #
      #   @return [Telnyx::Models::NetappsLocation, nil]
      optional :location, -> { Telnyx::NetappsLocation }

      response_only do
        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(available_services: nil, location: nil, record_type: nil)
      #   @param available_services [Array<Symbol, Telnyx::Models::AvailableService>] List of interface types supported in this region.
      #
      #   @param location [Telnyx::Models::NetappsLocation]
      #
      #   @param record_type [String] Identifies the type of the resource.
    end
  end
end
