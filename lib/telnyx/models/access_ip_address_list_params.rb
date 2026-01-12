# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPAddress#list
    class AccessIPAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
      #   filter[ip_address], filter[created_at]. Supports complex bracket operations for
      #   dynamic filtering.
      #
      #   @return [Telnyx::Models::AccessIPAddressListParams::Filter, nil]
      optional :filter, -> { Telnyx::AccessIPAddressListParams::Filter }

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
      #   {Telnyx::Models::AccessIPAddressListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AccessIPAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   Filter by exact creation date-time
        #
        #   @return [Time, Telnyx::Models::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter, nil]
        optional :created_at, union: -> { Telnyx::AccessIPAddressListParams::Filter::CreatedAt }

        # @!attribute ip_address
        #   Filter by IP address
        #
        #   @return [String, nil]
        optional :ip_address, String

        # @!attribute ip_source
        #   Filter by IP source
        #
        #   @return [String, nil]
        optional :ip_source, String

        # @!method initialize(created_at: nil, ip_address: nil, ip_source: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
        #   filter[ip_address], filter[created_at]. Supports complex bracket operations for
        #   dynamic filtering.
        #
        #   @param created_at [Time, Telnyx::Models::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter] Filter by exact creation date-time
        #
        #   @param ip_address [String] Filter by IP address
        #
        #   @param ip_source [String] Filter by IP source

        # Filter by exact creation date-time
        #
        # @see Telnyx::Models::AccessIPAddressListParams::Filter#created_at
        module CreatedAt
          extend Telnyx::Internal::Type::Union

          # Filter by exact creation date-time
          variant Time

          # Date range filtering operations
          variant -> { Telnyx::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter }

          class DateRangeFilter < Telnyx::Internal::Type::BaseModel
            # @!attribute gt
            #   Filter for creation date-time greater than
            #
            #   @return [Time, nil]
            optional :gt, Time

            # @!attribute gte
            #   Filter for creation date-time greater than or equal to
            #
            #   @return [Time, nil]
            optional :gte, Time

            # @!attribute lt
            #   Filter for creation date-time less than
            #
            #   @return [Time, nil]
            optional :lt, Time

            # @!attribute lte
            #   Filter for creation date-time less than or equal to
            #
            #   @return [Time, nil]
            optional :lte, Time

            # @!method initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            #   Date range filtering operations
            #
            #   @param gt [Time] Filter for creation date-time greater than
            #
            #   @param gte [Time] Filter for creation date-time greater than or equal to
            #
            #   @param lt [Time] Filter for creation date-time less than
            #
            #   @param lte [Time] Filter for creation date-time less than or equal to
          end

          # @!method self.variants
          #   @return [Array(Time, Telnyx::Models::AccessIPAddressListParams::Filter::CreatedAt::DateRangeFilter)]
        end
      end
    end
  end
end
