# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnectsCoverage#list
    class VirtualCrossConnectsCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
      #   filter[location.site], filter[location.pop], filter[location.code]
      #
      #   @return [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter, nil]
      optional :filter, -> { Telnyx::VirtualCrossConnectsCoverageListParams::Filter }

      # @!attribute filters
      #   Consolidated filters parameter (deepObject style). Originally:
      #   filters[available_bandwidth][contains]
      #
      #   @return [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters, nil]
      optional :filters, -> { Telnyx::VirtualCrossConnectsCoverageListParams::Filters }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, filters: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VirtualCrossConnectsCoverageListParams} for more details.
      #
      #   @param filter [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[cloud_provi
      #
      #   @param filters [Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters] Consolidated filters parameter (deepObject style). Originally: filters[available
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute cloud_provider
        #   The Virtual Private Cloud provider.
        #
        #   @return [Symbol, Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider, nil]
        optional :cloud_provider,
                 enum: -> { Telnyx::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider }

        # @!attribute cloud_provider_region
        #   The region of specific cloud provider.
        #
        #   @return [String, nil]
        optional :cloud_provider_region, String

        # @!attribute location_code
        #   The code of associated location to filter on.
        #
        #   @return [String, nil]
        optional :location_code, String, api_name: :"location.code"

        # @!attribute location_pop
        #   The POP of associated location to filter on.
        #
        #   @return [String, nil]
        optional :location_pop, String, api_name: :"location.pop"

        # @!attribute location_region
        #   The region of associated location to filter on.
        #
        #   @return [String, nil]
        optional :location_region, String, api_name: :"location.region"

        # @!attribute location_site
        #   The site of associated location to filter on.
        #
        #   @return [String, nil]
        optional :location_site, String, api_name: :"location.site"

        # @!method initialize(cloud_provider: nil, cloud_provider_region: nil, location_code: nil, location_pop: nil, location_region: nil, location_site: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
        #   filter[location.site], filter[location.pop], filter[location.code]
        #
        #   @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter::CloudProvider] The Virtual Private Cloud provider.
        #
        #   @param cloud_provider_region [String] The region of specific cloud provider.
        #
        #   @param location_code [String] The code of associated location to filter on.
        #
        #   @param location_pop [String] The POP of associated location to filter on.
        #
        #   @param location_region [String] The region of associated location to filter on.
        #
        #   @param location_site [String] The site of associated location to filter on.

        # The Virtual Private Cloud provider.
        #
        # @see Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filter#cloud_provider
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws
          AZURE = :azure
          GCE = :gce

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Filters < Telnyx::Internal::Type::BaseModel
        # @!attribute available_bandwidth
        #   Filter by exact available bandwidth match
        #
        #   @return [Integer, Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains, nil]
        optional :available_bandwidth,
                 union: -> { Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth }

        # @!method initialize(available_bandwidth: nil)
        #   Consolidated filters parameter (deepObject style). Originally:
        #   filters[available_bandwidth][contains]
        #
        #   @param available_bandwidth [Integer, Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains] Filter by exact available bandwidth match

        # Filter by exact available bandwidth match
        #
        # @see Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters#available_bandwidth
        module AvailableBandwidth
          extend Telnyx::Internal::Type::Union

          # Filter by exact available bandwidth match
          variant Integer

          # Available bandwidth filtering operations
          variant -> { Telnyx::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains }

          class Contains < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter by available bandwidth containing the specified value
            #
            #   @return [Integer, nil]
            optional :contains, Integer

            # @!method initialize(contains: nil)
            #   Available bandwidth filtering operations
            #
            #   @param contains [Integer] Filter by available bandwidth containing the specified value
          end

          # @!method self.variants
          #   @return [Array(Integer, Telnyx::Models::VirtualCrossConnectsCoverageListParams::Filters::AvailableBandwidth::Contains)]
        end
      end
    end
  end
end
