# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPs#delete
    class GlobalIPDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::GlobalIPDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPDeleteResponse::Data]

      # @see Telnyx::Models::GlobalIPDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #   A user specified description for the address.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #   A user specified name for the address.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute ports
        #   A Global IP ports grouped by protocol code.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :ports, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

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

          # @!attribute ip_address
          #   The Global IP address.
          #
          #   @return [String, nil]
          optional :ip_address, String
        end

        # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, description: nil, ip_address: nil, name: nil, ports: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @param description [String] A user specified description for the address.
        #
        #   @param ip_address [String] The Global IP address.
        #
        #   @param name [String] A user specified name for the address.
        #
        #   @param ports [Hash{Symbol=>Object}] A Global IP ports grouped by protocol code.
      end
    end
  end
end
