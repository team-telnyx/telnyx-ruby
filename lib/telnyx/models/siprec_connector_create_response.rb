# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SiprecConnectors#create
    class SiprecConnectorCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SiprecConnectorCreateResponse::Data]
      required :data, -> { Telnyx::Models::SiprecConnectorCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::SiprecConnectorCreateResponse::Data]

      # @see Telnyx::Models::SiprecConnectorCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute app_subdomain
        #   Subdomain to route calls when using Telnyx SRS (optional).
        #
        #   @return [String, nil]
        optional :app_subdomain, String

        # @!attribute created_at
        #   ISO 8601 formatted date/time of creation.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute host
        #   Hostname/IPv4 address of the SIPREC SRS.
        #
        #   @return [String, nil]
        optional :host, String

        # @!attribute name
        #   Name for the SIPREC connector resource.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute port
        #   Port for the SIPREC SRS.
        #
        #   @return [Integer, nil]
        optional :port, Integer

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date/time of last update.
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(app_subdomain: nil, created_at: nil, host: nil, name: nil, port: nil, record_type: nil, updated_at: nil)
        #   @param app_subdomain [String] Subdomain to route calls when using Telnyx SRS (optional).
        #
        #   @param created_at [String] ISO 8601 formatted date/time of creation.
        #
        #   @param host [String] Hostname/IPv4 address of the SIPREC SRS.
        #
        #   @param name [String] Name for the SIPREC connector resource.
        #
        #   @param port [Integer] Port for the SIPREC SRS.
        #
        #   @param record_type [String]
        #
        #   @param updated_at [String] ISO 8601 formatted date/time of last update.
      end
    end
  end
end
