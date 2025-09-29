# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Regions#list
    class RegionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::RegionListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RegionListResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::RegionListResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   A code for the region.
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute name
        #   A name for the region.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute supported_interfaces
        #   List of interface types supported in this region.
        #
        #   @return [Array<String>, nil]
        optional :supported_interfaces, Telnyx::Internal::Type::ArrayOf[String]

        response_only do
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
        end

        # @!method initialize(code: nil, created_at: nil, name: nil, record_type: nil, supported_interfaces: nil, updated_at: nil)
        #   @param code [String] A code for the region.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param name [String] A name for the region.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param supported_interfaces [Array<String>] List of interface types supported in this region.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      end
    end
  end
end
