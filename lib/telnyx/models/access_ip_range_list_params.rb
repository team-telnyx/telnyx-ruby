# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPRanges#list
    class AccessIPRangeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[cidr_block], filter[cidr_block][startswith],
      #   filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
      #   Supports complex bracket operations for dynamic filtering.
      #
      #   @return [Telnyx::Models::AccessIPRangeListParams::Filter, nil]
      optional :filter, -> { Telnyx::AccessIPRangeListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::AccessIPRangeListParams::Page, nil]
      optional :page, -> { Telnyx::AccessIPRangeListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AccessIPRangeListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AccessIPRangeListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[cidr_block]
      #
      #   @param page [Telnyx::Models::AccessIPRangeListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute cidr_block
        #   Filter by exact CIDR block match
        #
        #   @return [String, Telnyx::Models::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter, nil]
        optional :cidr_block, union: -> { Telnyx::AccessIPRangeListParams::Filter::CidrBlock }

        # @!attribute created_at
        #   Filter by exact creation date-time
        #
        #   @return [Time, Telnyx::Models::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter, nil]
        optional :created_at, union: -> { Telnyx::AccessIPRangeListParams::Filter::CreatedAt }

        # @!method initialize(cidr_block: nil, created_at: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[cidr_block], filter[cidr_block][startswith],
        #   filter[cidr_block][endswith], filter[cidr_block][contains], filter[created_at].
        #   Supports complex bracket operations for dynamic filtering.
        #
        #   @param cidr_block [String, Telnyx::Models::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter] Filter by exact CIDR block match
        #
        #   @param created_at [Time, Telnyx::Models::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter] Filter by exact creation date-time

        # Filter by exact CIDR block match
        #
        # @see Telnyx::Models::AccessIPRangeListParams::Filter#cidr_block
        module CidrBlock
          extend Telnyx::Internal::Type::Union

          # Filter by exact CIDR block match
          variant String

          # CIDR block pattern matching operations
          variant -> { Telnyx::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter }

          class CidrBlockPatternFilter < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Filter CIDR blocks containing the specified string
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute endswith
            #   Filter CIDR blocks ending with the specified string
            #
            #   @return [String, nil]
            optional :endswith, String

            # @!attribute startswith
            #   Filter CIDR blocks starting with the specified string
            #
            #   @return [String, nil]
            optional :startswith, String

            # @!method initialize(contains: nil, endswith: nil, startswith: nil)
            #   CIDR block pattern matching operations
            #
            #   @param contains [String] Filter CIDR blocks containing the specified string
            #
            #   @param endswith [String] Filter CIDR blocks ending with the specified string
            #
            #   @param startswith [String] Filter CIDR blocks starting with the specified string
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::AccessIPRangeListParams::Filter::CidrBlock::CidrBlockPatternFilter)]
        end

        # Filter by exact creation date-time
        #
        # @see Telnyx::Models::AccessIPRangeListParams::Filter#created_at
        module CreatedAt
          extend Telnyx::Internal::Type::Union

          # Filter by exact creation date-time
          variant Time

          # Date range filtering operations
          variant -> { Telnyx::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter }

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
          #   @return [Array(Time, Telnyx::Models::AccessIPRangeListParams::Filter::CreatedAt::DateRangeFilter)]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer]
        #   @param size [Integer]
      end
    end
  end
end
