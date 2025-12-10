# frozen_string_literal: true

module Telnyx
  module Models
    class Fqdn < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute connection_id
      #   ID of the FQDN connection to which this FQDN is attached.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute dns_record_type
      #   The DNS record type for the FQDN. For cases where a port is not set, the DNS
      #   record type must be 'srv'. For cases where a port is set, the DNS record type
      #   must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
      #   will be used.
      #
      #   @return [String, nil]
      optional :dns_record_type, String

      # @!attribute fqdn
      #   FQDN represented by this resource.
      #
      #   @return [String, nil]
      optional :fqdn, String

      # @!attribute port
      #   Port to use when connecting to this FQDN.
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

      # @!method initialize(id: nil, connection_id: nil, created_at: nil, dns_record_type: nil, fqdn: nil, port: nil, record_type: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Fqdn} for
      #   more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param connection_id [String] ID of the FQDN connection to which this FQDN is attached.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param dns_record_type [String] The DNS record type for the FQDN. For cases where a port is not set, the DNS rec
      #
      #   @param fqdn [String] FQDN represented by this resource.
      #
      #   @param port [Integer] Port to use when connecting to this FQDN.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
    end
  end
end
