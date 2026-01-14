# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list_interfaces
    class NetworkListInterfacesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name],
      #   filter[type], filter[status]
      #
      #   @return [Telnyx::Models::NetworkListInterfacesParams::Filter, nil]
      optional :filter, -> { Telnyx::NetworkListInterfacesParams::Filter }

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
      #   {Telnyx::Models::NetworkListInterfacesParams} for more details.
      #
      #   @param filter [Telnyx::Models::NetworkListInterfacesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   The interface name to filter on.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute type
        #   The interface type to filter on.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(name: nil, type: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name],
        #   filter[type], filter[status]
        #
        #   @param name [String] The interface name to filter on.
        #
        #   @param type [String] The interface type to filter on.
      end
    end
  end
end
