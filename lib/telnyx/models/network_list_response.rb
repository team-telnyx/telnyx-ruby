# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list
    class NetworkListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute name
      #   A user specified name for the network.
      #
      #   @return [String, nil]
      optional :name, String

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
      end

      # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, name: nil)
      #   @param id [String] Identifies the resource.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
      #
      #   @param name [String] A user specified name for the network.
    end
  end
end
