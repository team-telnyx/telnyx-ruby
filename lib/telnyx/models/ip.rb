# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#list
    class IP < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute connection_id
      #   ID of the IP Connection to which this IP should be attached.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute ip_address
      #   IP adddress represented by this resource.
      #
      #   @return [String, nil]
      optional :ip_address, String

      # @!attribute port
      #   Port to use when connecting to this IP.
      #
      #   @return [Integer, nil]
      optional :port, Integer

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id: nil, connection_id: nil, created_at: nil, ip_address: nil, port: nil, record_type: nil, updated_at: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param connection_id [String] ID of the IP Connection to which this IP should be attached.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param ip_address [String] IP adddress represented by this resource.
      #
      #   @param port [Integer] Port to use when connecting to this IP.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
    end
  end
end
