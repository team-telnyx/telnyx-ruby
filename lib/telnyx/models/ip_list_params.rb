# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#list
    class IPListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection_id], filter[ip_address], filter[port]
      #
      #   @return [Telnyx::Models::IPListParams::Filter, nil]
      optional :filter, -> { Telnyx::IPListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IPListParams} for more details.
      #
      #   @param filter [Telnyx::Models::IPListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection\_
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute connection_id
        #   ID of the IP Connection to which this IP should be attached.
        #
        #   @return [String, nil]
        optional :connection_id, String

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

        # @!method initialize(connection_id: nil, ip_address: nil, port: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[connection_id], filter[ip_address], filter[port]
        #
        #   @param connection_id [String] ID of the IP Connection to which this IP should be attached.
        #
        #   @param ip_address [String] IP adddress represented by this resource.
        #
        #   @param port [Integer] Port to use when connecting to this IP.
      end
    end
  end
end
