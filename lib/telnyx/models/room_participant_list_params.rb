# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomParticipants#list
    class RoomParticipantListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[date_joined_at][eq], filter[date_joined_at][gte],
      #   filter[date_joined_at][lte], filter[date_updated_at][eq],
      #   filter[date_updated_at][gte], filter[date_updated_at][lte],
      #   filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
      #   filter[context], filter[session_id]
      #
      #   @return [Telnyx::Models::RoomParticipantListParams::Filter, nil]
      optional :filter, -> { Telnyx::RoomParticipantListParams::Filter }

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
      #   {Telnyx::Models::RoomParticipantListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RoomParticipantListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_joined
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute context
        #   Filter room participants based on the context.
        #
        #   @return [String, nil]
        optional :context, String

        # @!attribute date_joined_at
        #
        #   @return [Telnyx::Models::RoomParticipantListParams::Filter::DateJoinedAt, nil]
        optional :date_joined_at, -> { Telnyx::RoomParticipantListParams::Filter::DateJoinedAt }

        # @!attribute date_left_at
        #
        #   @return [Telnyx::Models::RoomParticipantListParams::Filter::DateLeftAt, nil]
        optional :date_left_at, -> { Telnyx::RoomParticipantListParams::Filter::DateLeftAt }

        # @!attribute date_updated_at
        #
        #   @return [Telnyx::Models::RoomParticipantListParams::Filter::DateUpdatedAt, nil]
        optional :date_updated_at, -> { Telnyx::RoomParticipantListParams::Filter::DateUpdatedAt }

        # @!attribute session_id
        #   Session_id for filtering room participants.
        #
        #   @return [String, nil]
        optional :session_id, String

        # @!method initialize(context: nil, date_joined_at: nil, date_left_at: nil, date_updated_at: nil, session_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_joined_at][eq], filter[date_joined_at][gte],
        #   filter[date_joined_at][lte], filter[date_updated_at][eq],
        #   filter[date_updated_at][gte], filter[date_updated_at][lte],
        #   filter[date_left_at][eq], filter[date_left_at][gte], filter[date_left_at][lte],
        #   filter[context], filter[session_id]
        #
        #   @param context [String] Filter room participants based on the context.
        #
        #   @param date_joined_at [Telnyx::Models::RoomParticipantListParams::Filter::DateJoinedAt]
        #
        #   @param date_left_at [Telnyx::Models::RoomParticipantListParams::Filter::DateLeftAt]
        #
        #   @param date_updated_at [Telnyx::Models::RoomParticipantListParams::Filter::DateUpdatedAt]
        #
        #   @param session_id [String] Session_id for filtering room participants.

        # @see Telnyx::Models::RoomParticipantListParams::Filter#date_joined_at
        class DateJoinedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room participants that joined on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room participants that joined on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room participants that joined on or before that
          #   date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::RoomParticipantListParams::Filter::DateJoinedAt} for more
          #   details.
          #
          #   @param eq [Date] ISO 8601 date for filtering room participants that joined on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room participants that joined on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room participants that joined on or before that date
        end

        # @see Telnyx::Models::RoomParticipantListParams::Filter#date_left_at
        class DateLeftAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room participants that left on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room participants that left on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room participants that left on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering room participants that left on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room participants that left on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room participants that left on or before that date.
        end

        # @see Telnyx::Models::RoomParticipantListParams::Filter#date_updated_at
        class DateUpdatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room participants updated on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room participants updated on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room participants updated on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering room participants updated on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room participants updated on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room participants updated on or before that date.
        end
      end
    end
  end
end
