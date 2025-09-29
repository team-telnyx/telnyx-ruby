# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkCoverage#list
    class NetworkCoverageListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NetworkCoverageListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkCoverageListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NetworkCoverageListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute available_services
        #   List of interface types supported in this region.
        #
        #   @return [Array<Symbol, Telnyx::Models::AvailableService>, nil]
        optional :available_services,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::AvailableService] }

        # @!attribute location
        #
        #   @return [Telnyx::Models::NetworkCoverageListResponse::Data::Location, nil]
        optional :location, -> { Telnyx::Models::NetworkCoverageListResponse::Data::Location }

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
        #   @param location [Telnyx::Models::NetworkCoverageListResponse::Data::Location]
        #
        #   @param record_type [String] Identifies the type of the resource.

        # @see Telnyx::Models::NetworkCoverageListResponse::Data#location
        class Location < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   Location code.
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute name
          #   Human readable name of location.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute pop
          #   Point of presence of location.
          #
          #   @return [String, nil]
          optional :pop, String

          # @!attribute region
          #   Identifies the geographical region of location.
          #
          #   @return [String, nil]
          optional :region, String

          # @!attribute site
          #   Site of location.
          #
          #   @return [String, nil]
          optional :site, String

          # @!method initialize(code: nil, name: nil, pop: nil, region: nil, site: nil)
          #   @param code [String] Location code.
          #
          #   @param name [String] Human readable name of location.
          #
          #   @param pop [String] Point of presence of location.
          #
          #   @param region [String] Identifies the geographical region of location.
          #
          #   @param site [String] Site of location.
        end
      end
    end
  end
end
