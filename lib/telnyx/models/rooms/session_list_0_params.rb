# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#list_0
      class SessionList0Params < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_created_at][eq], filter[date_created_at][gte],
        #   filter[date_created_at][lte], filter[date_updated_at][eq],
        #   filter[date_updated_at][gte], filter[date_updated_at][lte],
        #   filter[date_ended_at][eq], filter[date_ended_at][gte],
        #   filter[date_ended_at][lte], filter[room_id], filter[active]
        #
        #   @return [Telnyx::Models::Rooms::SessionList0Params::Filter, nil]
        optional :filter, -> { Telnyx::Rooms::SessionList0Params::Filter }

        # @!attribute include_participants
        #   To decide if room participants should be included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_participants, Telnyx::Internal::Type::Boolean

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter: nil, include_participants: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rooms::SessionList0Params} for more details.
        #
        #   @param filter [Telnyx::Models::Rooms::SessionList0Params::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
        #
        #   @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
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
          #   @return [Telnyx::Models::Rooms::SessionList0Params::Filter::DateCreatedAt, nil]
          optional :date_created_at, -> { Telnyx::Rooms::SessionList0Params::Filter::DateCreatedAt }

          # @!attribute date_ended_at
          #
          #   @return [Telnyx::Models::Rooms::SessionList0Params::Filter::DateEndedAt, nil]
          optional :date_ended_at, -> { Telnyx::Rooms::SessionList0Params::Filter::DateEndedAt }

          # @!attribute date_updated_at
          #
          #   @return [Telnyx::Models::Rooms::SessionList0Params::Filter::DateUpdatedAt, nil]
          optional :date_updated_at, -> { Telnyx::Rooms::SessionList0Params::Filter::DateUpdatedAt }

          # @!attribute room_id
          #   Room_id for filtering room sessions.
          #
          #   @return [String, nil]
          optional :room_id, String

          # @!method initialize(active: nil, date_created_at: nil, date_ended_at: nil, date_updated_at: nil, room_id: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[date_created_at][eq], filter[date_created_at][gte],
          #   filter[date_created_at][lte], filter[date_updated_at][eq],
          #   filter[date_updated_at][gte], filter[date_updated_at][lte],
          #   filter[date_ended_at][eq], filter[date_ended_at][gte],
          #   filter[date_ended_at][lte], filter[room_id], filter[active]
          #
          #   @param active [Boolean] Filter active or inactive room sessions.
          #
          #   @param date_created_at [Telnyx::Models::Rooms::SessionList0Params::Filter::DateCreatedAt]
          #
          #   @param date_ended_at [Telnyx::Models::Rooms::SessionList0Params::Filter::DateEndedAt]
          #
          #   @param date_updated_at [Telnyx::Models::Rooms::SessionList0Params::Filter::DateUpdatedAt]
          #
          #   @param room_id [String] Room_id for filtering room sessions.

          # @see Telnyx::Models::Rooms::SessionList0Params::Filter#date_created_at
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

          # @see Telnyx::Models::Rooms::SessionList0Params::Filter#date_ended_at
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

          # @see Telnyx::Models::Rooms::SessionList0Params::Filter#date_updated_at
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
      end
    end
  end
end
