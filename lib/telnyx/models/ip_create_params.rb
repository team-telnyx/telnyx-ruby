# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#create
    class IPCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute ip_address
      #   IP adddress represented by this resource.
      #
      #   @return [String]
      required :ip_address, String

      # @!attribute connection_id
      #   ID of the IP Connection to which this IP should be attached.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute port
      #   Port to use when connecting to this IP.
      #
      #   @return [Integer, nil]
      optional :port, Integer

      # @!method initialize(ip_address:, connection_id: nil, port: nil, request_options: {})
      #   @param ip_address [String] IP adddress represented by this resource.
      #
      #   @param connection_id [String] ID of the IP Connection to which this IP should be attached.
      #
      #   @param port [Integer] Port to use when connecting to this IP.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
