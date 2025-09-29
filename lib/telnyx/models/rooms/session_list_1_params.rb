# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#list_1
      class SessionList1Params < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_created_at][eq], filter[date_created_at][gte],
        #   filter[date_created_at][lte], filter[date_updated_at][eq],
        #   filter[date_updated_at][gte], filter[date_updated_at][lte],
        #   filter[date_ended_at][eq], filter[date_ended_at][gte],
        #   filter[date_ended_at][lte], filter[active]
        #
        #   @return [Telnyx::Models::Rooms::SessionList1Params::Filter, nil]
        optional :filter, -> { Telnyx::Rooms::SessionList1Params::Filter }

        # @!attribute include_participants
        #   To decide if room participants should be included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_participants, Telnyx::Internal::Type::Boolean

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::Rooms::SessionList1Params::Page, nil]
        optional :page, -> { Telnyx::Rooms::SessionList1Params::Page }

        # @!method initialize(filter: nil, include_participants: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rooms::SessionList1Params} for more details.
        #
        #   @param filter [Telnyx::Models::Rooms::SessionList1Params::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
        #
        #   @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        #   @param page [Telnyx::Models::Rooms::SessionList1Params::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute active
          #   Filter active or inactive room sessions.
          #
          #   @return [Boolean, nil]
          optional :active, Telnyx::Internal::Type::Boolean

          # @!attribute date_created_at
          #
          #   @return [Telnyx::Models::Rooms::SessionList1Params::Filter::DateCreatedAt, nil]
          optional :date_created_at, -> { Telnyx::Rooms::SessionList1Params::Filter::DateCreatedAt }

          # @!attribute date_ended_at
          #
          #   @return [Telnyx::Models::Rooms::SessionList1Params::Filter::DateEndedAt, nil]
          optional :date_ended_at, -> { Telnyx::Rooms::SessionList1Params::Filter::DateEndedAt }

          # @!attribute date_updated_at
          #
          #   @return [Telnyx::Models::Rooms::SessionList1Params::Filter::DateUpdatedAt, nil]
          optional :date_updated_at, -> { Telnyx::Rooms::SessionList1Params::Filter::DateUpdatedAt }

          # @!method initialize(active: nil, date_created_at: nil, date_ended_at: nil, date_updated_at: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[date_created_at][eq], filter[date_created_at][gte],
          #   filter[date_created_at][lte], filter[date_updated_at][eq],
          #   filter[date_updated_at][gte], filter[date_updated_at][lte],
          #   filter[date_ended_at][eq], filter[date_ended_at][gte],
          #   filter[date_ended_at][lte], filter[active]
          #
          #   @param active [Boolean] Filter active or inactive room sessions.
          #
          #   @param date_created_at [Telnyx::Models::Rooms::SessionList1Params::Filter::DateCreatedAt]
          #
          #   @param date_ended_at [Telnyx::Models::Rooms::SessionList1Params::Filter::DateEndedAt]
          #
          #   @param date_updated_at [Telnyx::Models::Rooms::SessionList1Params::Filter::DateUpdatedAt]

          # @see Telnyx::Models::Rooms::SessionList1Params::Filter#date_created_at
          class DateCreatedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room sessions created on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room sessions created on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room sessions created on or before that date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   @param eq [Date] ISO 8601 date for filtering room sessions created on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room sessions created on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room sessions created on or before that date.
          end

          # @see Telnyx::Models::Rooms::SessionList1Params::Filter#date_ended_at
          class DateEndedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room sessions ended on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room sessions ended on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room sessions ended on or before that date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   @param eq [Date] ISO 8601 date for filtering room sessions ended on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room sessions ended on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room sessions ended on or before that date.
          end

          # @see Telnyx::Models::Rooms::SessionList1Params::Filter#date_updated_at
          class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
            # @!attribute eq
            #   ISO 8601 date for filtering room sessions updated on that date.
            #
            #   @return [Date, nil]
            optional :eq, Date

            # @!attribute gte
            #   ISO 8601 date for filtering room sessions updated on or after that date.
            #
            #   @return [Date, nil]
            optional :gte, Date

            # @!attribute lte
            #   ISO 8601 date for filtering room sessions updated on or before that date.
            #
            #   @return [Date, nil]
            optional :lte, Date

            # @!method initialize(eq: nil, gte: nil, lte: nil)
            #   @param eq [Date] ISO 8601 date for filtering room sessions updated on that date.
            #
            #   @param gte [Date] ISO 8601 date for filtering room sessions updated on or after that date.
            #
            #   @param lte [Date] ISO 8601 date for filtering room sessions updated on or before that date.
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          # @!attribute number
          #   The page number to load.
          #
          #   @return [Integer, nil]
          optional :number, Integer

          # @!attribute size
          #   The size of the page.
          #
          #   @return [Integer, nil]
          optional :size, Integer

          # @!method initialize(number: nil, size: nil)
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @param number [Integer] The page number to load.
          #
          #   @param size [Integer] The size of the page.
        end
      end
    end
  end
end
