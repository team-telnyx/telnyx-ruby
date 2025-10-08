# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#list
    class PublicInternetGatewayListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PublicInternetGatewayListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PublicInternetGatewayListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PublicInternetGatewayListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   A user specified name for the interface.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute network_id
        #   The id of the network associated with the interface.
        #
        #   @return [String, nil]
        optional :network_id, String

        # @!attribute region
        #
        #   @return [Telnyx::Models::PublicInternetGatewayListResponse::Data::Region, nil]
        optional :region, -> { Telnyx::Models::PublicInternetGatewayListResponse::Data::Region }

        # @!attribute region_code
        #   The region interface is deployed to.
        #
        #   @return [String, nil]
        optional :region_code, String

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String

          # @!attribute status
          #   The current status of the interface deployment.
          #
          #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
          optional :status, enum: -> { Telnyx::InterfaceStatus }

          # @!attribute public_ip
          #   The publically accessible ip for this interface.
          #
          #   @return [String, nil]
          optional :public_ip, String
        end

        # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, name: nil, network_id: nil, status: nil, public_ip: nil, region: nil, region_code: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @param name [String] A user specified name for the interface.
        #
        #   @param network_id [String] The id of the network associated with the interface.
        #
        #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
        #
        #   @param public_ip [String] The publically accessible ip for this interface.
        #
        #   @param region [Telnyx::Models::PublicInternetGatewayListResponse::Data::Region]
        #
        #   @param region_code [String] The region interface is deployed to.

        # @see Telnyx::Models::PublicInternetGatewayListResponse::Data#region
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
end
