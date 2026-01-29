# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomRecordings#delete_bulk
    class RoomRecordingDeleteBulkParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[date_ended_at][eq], filter[date_ended_at][gte],
      #   filter[date_ended_at][lte], filter[date_started_at][eq],
      #   filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
      #   filter[participant_id], filter[session_id], filter[status], filter[type],
      #   filter[duration_secs]
      #
      #   @return [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter, nil]
      optional :filter, -> { Telnyx::RoomRecordingDeleteBulkParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::RoomRecordingDeleteBulkParams::Page, nil]
      optional :page, -> { Telnyx::RoomRecordingDeleteBulkParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomRecordingDeleteBulkParams} for more details.
      #
      #   @param filter [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date*ended*
      #
      #   @param page [Telnyx::Models::RoomRecordingDeleteBulkParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute date_ended_at
        #
        #   @return [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter::DateEndedAt, nil]
        optional :date_ended_at, -> { Telnyx::RoomRecordingDeleteBulkParams::Filter::DateEndedAt }

        # @!attribute date_started_at
        #
        #   @return [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter::DateStartedAt, nil]
        optional :date_started_at, -> { Telnyx::RoomRecordingDeleteBulkParams::Filter::DateStartedAt }

        # @!attribute duration_secs
        #   duration_secs greater or equal for filtering room recordings.
        #
        #   @return [Integer, nil]
        optional :duration_secs, Integer

        # @!attribute participant_id
        #   participant_id for filtering room recordings.
        #
        #   @return [String, nil]
        optional :participant_id, String

        # @!attribute room_id
        #   room_id for filtering room recordings.
        #
        #   @return [String, nil]
        optional :room_id, String

        # @!attribute session_id
        #   session_id for filtering room recordings.
        #
        #   @return [String, nil]
        optional :session_id, String

        # @!attribute status
        #   status for filtering room recordings.
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute type
        #   type for filtering room recordings.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(date_ended_at: nil, date_started_at: nil, duration_secs: nil, participant_id: nil, room_id: nil, session_id: nil, status: nil, type: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_ended_at][eq], filter[date_ended_at][gte],
        #   filter[date_ended_at][lte], filter[date_started_at][eq],
        #   filter[date_started_at][gte], filter[date_started_at][lte], filter[room_id],
        #   filter[participant_id], filter[session_id], filter[status], filter[type],
        #   filter[duration_secs]
        #
        #   @param date_ended_at [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter::DateEndedAt]
        #
        #   @param date_started_at [Telnyx::Models::RoomRecordingDeleteBulkParams::Filter::DateStartedAt]
        #
        #   @param duration_secs [Integer] duration_secs greater or equal for filtering room recordings.
        #
        #   @param participant_id [String] participant_id for filtering room recordings.
        #
        #   @param room_id [String] room_id for filtering room recordings.
        #
        #   @param session_id [String] session_id for filtering room recordings.
        #
        #   @param status [String] status for filtering room recordings.
        #
        #   @param type [String] type for filtering room recordings.

        # @see Telnyx::Models::RoomRecordingDeleteBulkParams::Filter#date_ended_at
        class DateEndedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room recordings ended on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room recordings ended on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room recordings ended on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering room recordings ended on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room recordings ended on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room recordings ended on or before that date.
        end

        # @see Telnyx::Models::RoomRecordingDeleteBulkParams::Filter#date_started_at
        class DateStartedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room recordings started on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room recordings started on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room recordings started on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering room recordings started on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room recordings started on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room recordings started on or before that date.
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
