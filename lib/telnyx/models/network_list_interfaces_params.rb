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

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::NetworkListInterfacesParams::Page, nil]
      optional :page, -> { Telnyx::NetworkListInterfacesParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NetworkListInterfacesParams} for more details.
      #
      #   @param filter [Telnyx::Models::NetworkListInterfacesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      #   @param page [Telnyx::Models::NetworkListInterfacesParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
