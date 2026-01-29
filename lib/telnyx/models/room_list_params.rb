# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#list
    class RoomListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[date_created_at][eq], filter[date_created_at][gte],
      #   filter[date_created_at][lte], filter[date_updated_at][eq],
      #   filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
      #
      #   @return [Telnyx::Models::RoomListParams::Filter, nil]
      optional :filter, -> { Telnyx::RoomListParams::Filter }

      # @!attribute include_sessions
      #   To decide if room sessions should be included in the response.
      #
      #   @return [Boolean, nil]
      optional :include_sessions, Telnyx::Internal::Type::Boolean

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, include_sessions: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RoomListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
      #
      #   @param include_sessions [Boolean] To decide if room sessions should be included in the response.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute date_created_at
        #
        #   @return [Telnyx::Models::RoomListParams::Filter::DateCreatedAt, nil]
        optional :date_created_at, -> { Telnyx::RoomListParams::Filter::DateCreatedAt }

        # @!attribute date_updated_at
        #
        #   @return [Telnyx::Models::RoomListParams::Filter::DateUpdatedAt, nil]
        optional :date_updated_at, -> { Telnyx::RoomListParams::Filter::DateUpdatedAt }

        # @!attribute unique_name
        #   Unique_name for filtering rooms.
        #
        #   @return [String, nil]
        optional :unique_name, String

        # @!method initialize(date_created_at: nil, date_updated_at: nil, unique_name: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_created_at][eq], filter[date_created_at][gte],
        #   filter[date_created_at][lte], filter[date_updated_at][eq],
        #   filter[date_updated_at][gte], filter[date_updated_at][lte], filter[unique_name]
        #
        #   @param date_created_at [Telnyx::Models::RoomListParams::Filter::DateCreatedAt]
        #
        #   @param date_updated_at [Telnyx::Models::RoomListParams::Filter::DateUpdatedAt]
        #
        #   @param unique_name [String] Unique_name for filtering rooms.

        # @see Telnyx::Models::RoomListParams::Filter#date_created_at
        class DateCreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering rooms created on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering rooms created on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering rooms created on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering rooms created on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering rooms created on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering rooms created on or before that date.
        end

        # @see Telnyx::Models::RoomListParams::Filter#date_updated_at
        class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering rooms updated on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering rooms updated on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering rooms updated on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering rooms updated on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering rooms updated on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering rooms updated on or before that date.
        end
      end
    end
  end
end
