# frozen_string_literal: true

module Telnyx
  module Models
    class RegionInformation < Telnyx::Internal::Type::BaseModel
      # @!attribute region_name
      #
      #   @return [String, nil]
      optional :region_name, String

      # @!attribute region_type
      #
      #   @return [Symbol, Telnyx::Models::RegionInformation::RegionType, nil]
      optional :region_type, enum: -> { Telnyx::RegionInformation::RegionType }

      # @!method initialize(region_name: nil, region_type: nil)
      #   @param region_name [String]
      #   @param region_type [Symbol, Telnyx::Models::RegionInformation::RegionType]

      # @see Telnyx::Models::RegionInformation#region_type
      module RegionType
        extend Telnyx::Internal::Type::Enum

        COUNTRY_CODE = :country_code
        RATE_CENTER = :rate_center
        STATE = :state
        LOCATION = :location

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
