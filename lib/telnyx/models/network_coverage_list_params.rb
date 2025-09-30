# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkCoverage#list
    class NetworkCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[location.region], filter[location.site], filter[location.pop],
      #   filter[location.code]
      #
      #   @return [Telnyx::Models::NetworkCoverageListParams::Filter, nil]
      optional :filter, -> { Telnyx::NetworkCoverageListParams::Filter }

      # @!attribute filters
      #   Consolidated filters parameter (deepObject style). Originally:
      #   filters[available_services][contains]
      #
      #   @return [Telnyx::Models::NetworkCoverageListParams::Filters, nil]
      optional :filters, -> { Telnyx::NetworkCoverageListParams::Filters }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::NetworkCoverageListParams::Page, nil]
      optional :page, -> { Telnyx::NetworkCoverageListParams::Page }

      # @!method initialize(filter: nil, filters: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetworkCoverageListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NetworkCoverageListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[location.re
      #
      #   @param filters [Telnyx::Models::NetworkCoverageListParams::Filters] Consolidated filters parameter (deepObject style). Originally: filters[available
      #
      #   @param page [Telnyx::Models::NetworkCoverageListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
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

        # @!method initialize(location_code: nil, location_pop: nil, location_region: nil, location_site: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[location.region], filter[location.site], filter[location.pop],
        #   filter[location.code]
        #
        #   @param location_code [String] The code of associated location to filter on.
        #
        #   @param location_pop [String] The POP of associated location to filter on.
        #
        #   @param location_region [String] The region of associated location to filter on.
        #
        #   @param location_site [String] The site of associated location to filter on.
      end

      class Filters < Telnyx::Internal::Type::BaseModel
        # @!attribute available_services
        #   Filter by exact available service match
        #
        #   @return [Symbol, Telnyx::Models::AvailableService, Telnyx::Models::NetworkCoverageListParams::Filters::AvailableServices::Contains, nil]
        optional :available_services, union: -> { Telnyx::NetworkCoverageListParams::Filters::AvailableServices }

        # @!method initialize(available_services: nil)
        #   Consolidated filters parameter (deepObject style). Originally:
        #   filters[available_services][contains]
        #
        #   @param available_services [Symbol, Telnyx::Models::AvailableService, Telnyx::Models::NetworkCoverageListParams::Filters::AvailableServices::Contains] Filter by exact available service match

        # Filter by exact available service match
        #
        # @see Telnyx::Models::NetworkCoverageListParams::Filters#available_services
        module AvailableServices
          extend Telnyx::Internal::Type::Union

          # Filter by exact available service match
          variant enum: -> { Telnyx::AvailableService }

          # Available service filtering operations
          variant -> { Telnyx::NetworkCoverageListParams::Filters::AvailableServices::Contains }

          class Contains < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter by available services containing the specified service
            #
            #   @return [Symbol, Telnyx::Models::AvailableService, nil]
            optional :contains, enum: -> { Telnyx::AvailableService }

            # @!method initialize(contains: nil)
            #   Available service filtering operations
            #
            #   @param contains [Symbol, Telnyx::Models::AvailableService] Filter by available services containing the specified service
          end

          # @!method self.variants
          #   @return [Array(Symbol, Telnyx::Models::AvailableService, Telnyx::Models::NetworkCoverageListParams::Filters::AvailableServices::Contains)]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
