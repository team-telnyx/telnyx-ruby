# frozen_string_literal: true

module Telnyx
  module Models
    class RegionOut < Telnyx::Internal::Type::BaseModel
      # @!attribute region
      #
      #   @return [Telnyx::Models::RegionOut::Region, nil]
      optional :region, -> { Telnyx::RegionOut::Region }

      # @!attribute region_code
      #   The region interface is deployed to.
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!method initialize(region: nil, region_code: nil)
      #   @param region [Telnyx::Models::RegionOut::Region]
      #
      #   @param region_code [String] The region interface is deployed to.

      # @see Telnyx::Models::RegionOut#region
      class Region < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   Region code of the interface.
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute name
        #   Region name of the interface.
        #
        #   @return [String, nil]
        optional :name, String

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(code: nil, name: nil, record_type: nil)
        #   @param code [String] Region code of the interface.
        #
        #   @param name [String] Region name of the interface.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
