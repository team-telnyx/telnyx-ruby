# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Faxes#list
    class FaxListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
      #   filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
      #
      #   @return [Telnyx::Models::FaxListParams::Filter, nil]
      optional :filter, -> { Telnyx::FaxListParams::Filter }

      # @!attribute page
      #   Consolidated pagination parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::FaxListParams::Page, nil]
      optional :page, -> { Telnyx::FaxListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FaxListParams} for more details.
      #
      #   @param filter [Telnyx::Models::FaxListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[created_at]
      #
      #   @param page [Telnyx::Models::FaxListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[size], pa
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   Date range filtering operations for fax creation timestamp
        #
        #   @return [Telnyx::Models::FaxListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::FaxListParams::Filter::CreatedAt }

        # @!attribute direction
        #   Direction filtering operations
        #
        #   @return [Telnyx::Models::FaxListParams::Filter::Direction, nil]
        optional :direction, -> { Telnyx::FaxListParams::Filter::Direction }

        # @!attribute from
        #   From number filtering operations
        #
        #   @return [Telnyx::Models::FaxListParams::Filter::From, nil]
        optional :from, -> { Telnyx::FaxListParams::Filter::From }

        # @!attribute to
        #   To number filtering operations
        #
        #   @return [Telnyx::Models::FaxListParams::Filter::To, nil]
        optional :to, -> { Telnyx::FaxListParams::Filter::To }

        # @!method initialize(created_at: nil, direction: nil, from: nil, to: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[created_at][gte], filter[created_at][gt], filter[created_at][lte],
        #   filter[created_at][lt], filter[direction][eq], filter[from][eq], filter[to][eq]
        #
        #   @param created_at [Telnyx::Models::FaxListParams::Filter::CreatedAt] Date range filtering operations for fax creation timestamp
        #
        #   @param direction [Telnyx::Models::FaxListParams::Filter::Direction] Direction filtering operations
        #
        #   @param from [Telnyx::Models::FaxListParams::Filter::From] From number filtering operations
        #
        #   @param to [Telnyx::Models::FaxListParams::Filter::To] To number filtering operations

        # @see Telnyx::Models::FaxListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   ISO 8601 date time for filtering faxes created after that date
          #
          #   @return [Time, nil]
          optional :gt, Time

          # @!attribute gte
          #   ISO 8601 date time for filtering faxes created after or on that date
          #
          #   @return [Time, nil]
          optional :gte, Time

          # @!attribute lt
          #   ISO 8601 formatted date time for filtering faxes created before that date
          #
          #   @return [Time, nil]
          optional :lt, Time

          # @!attribute lte
          #   ISO 8601 formatted date time for filtering faxes created on or before that date
          #
          #   @return [Time, nil]
          optional :lte, Time

          # @!method initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          #   Date range filtering operations for fax creation timestamp
          #
          #   @param gt [Time] ISO 8601 date time for filtering faxes created after that date
          #
          #   @param gte [Time] ISO 8601 date time for filtering faxes created after or on that date
          #
          #   @param lt [Time] ISO 8601 formatted date time for filtering faxes created before that date
          #
          #   @param lte [Time] ISO 8601 formatted date time for filtering faxes created on or before that date
        end

        # @see Telnyx::Models::FaxListParams::Filter#direction
        class Direction < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The direction, inbound or outbound, for filtering faxes sent from this account
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   Direction filtering operations
          #
          #   @param eq [String] The direction, inbound or outbound, for filtering faxes sent from this account
        end

        # @see Telnyx::Models::FaxListParams::Filter#from
        class From < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The phone number, in E.164 format for filtering faxes sent from this number
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   From number filtering operations
          #
          #   @param eq [String] The phone number, in E.164 format for filtering faxes sent from this number
        end

        # @see Telnyx::Models::FaxListParams::Filter#to
        class To < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The phone number, in E.164 format for filtering faxes sent to this number
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   To number filtering operations
          #
          #   @param eq [String] The phone number, in E.164 format for filtering faxes sent to this number
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   Number of the page to be retrieved
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   Number of fax resources for the single page returned
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated pagination parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] Number of the page to be retrieved
        #
        #   @param size [Integer] Number of fax resources for the single page returned
      end
    end
  end
end
