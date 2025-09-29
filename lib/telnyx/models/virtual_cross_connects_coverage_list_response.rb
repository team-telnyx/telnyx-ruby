# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnectsCoverage#list
    class VirtualCrossConnectsCoverageListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute available_bandwidth
        #   The available throughput in Megabits per Second (Mbps) for your Virtual Cross
        #   Connect.
        #
        #   @return [Array<Float>, nil]
        optional :available_bandwidth, Telnyx::Internal::Type::ArrayOf[Float]

        # @!attribute cloud_provider
        #   The Virtual Private Cloud with which you would like to establish a cross
        #   connect.
        #
        #   @return [Symbol, Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider, nil]
        optional :cloud_provider,
                 enum: -> { Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider }

        # @!attribute cloud_provider_region
        #   The region where your Virtual Private Cloud hosts are located. Should be
        #   identical to how the cloud provider names region, i.e. us-east-1 for AWS but
        #   Frankfurt for Azure
        #
        #   @return [String, nil]
        optional :cloud_provider_region, String

        # @!attribute location
        #
        #   @return [Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location, nil]
        optional :location, -> { Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location }

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(available_bandwidth: nil, cloud_provider: nil, cloud_provider_region: nil, location: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data} for more
        #   details.
        #
        #   @param available_bandwidth [Array<Float>] The available throughput in Megabits per Second (Mbps) for your Virtual Cross Co
        #
        #   @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::CloudProvider] The Virtual Private Cloud with which you would like to establish a cross connect
        #
        #   @param cloud_provider_region [String] The region where your Virtual Private Cloud hosts are located. Should be identic
        #
        #   @param location [Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data::Location]
        #
        #   @param record_type [String] Identifies the type of the resource.

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        #
        # @see Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data#cloud_provider
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws
          AZURE = :azure
          GCE = :gce

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data#location
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
