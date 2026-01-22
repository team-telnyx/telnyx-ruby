# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#list
    class RoomCompositionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[date_created_at][eq], filter[date_created_at][gte],
      #   filter[date_created_at][lte], filter[session_id], filter[status]
      #
      #   @return [Telnyx::Models::RoomCompositionListParams::Filter, nil]
      optional :filter, -> { Telnyx::RoomCompositionListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::RoomCompositionListParams::Page, nil]
      optional :page, -> { Telnyx::RoomCompositionListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomCompositionListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RoomCompositionListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
      #
      #   @param page [Telnyx::Models::RoomCompositionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute date_created_at
        #
        #   @return [Telnyx::Models::RoomCompositionListParams::Filter::DateCreatedAt, nil]
        optional :date_created_at, -> { Telnyx::RoomCompositionListParams::Filter::DateCreatedAt }

        # @!attribute session_id
        #   The session_id for filtering room compositions.
        #
        #   @return [String, nil]
        optional :session_id, String

        # @!attribute status
        #   The status for filtering room compositions.
        #
        #   @return [Symbol, Telnyx::Models::RoomCompositionListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::RoomCompositionListParams::Filter::Status }

        # @!method initialize(date_created_at: nil, session_id: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[date_created_at][eq], filter[date_created_at][gte],
        #   filter[date_created_at][lte], filter[session_id], filter[status]
        #
        #   @param date_created_at [Telnyx::Models::RoomCompositionListParams::Filter::DateCreatedAt]
        #
        #   @param session_id [String] The session_id for filtering room compositions.
        #
        #   @param status [Symbol, Telnyx::Models::RoomCompositionListParams::Filter::Status] The status for filtering room compositions.

        # @see Telnyx::Models::RoomCompositionListParams::Filter#date_created_at
        class DateCreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   ISO 8601 date for filtering room compositions created on that date.
          #
          #   @return [Date, nil]
          optional :eq, Date

          # @!attribute gte
          #   ISO 8601 date for filtering room compositions created on or after that date.
          #
          #   @return [Date, nil]
          optional :gte, Date

          # @!attribute lte
          #   ISO 8601 date for filtering room compositions created on or before that date.
          #
          #   @return [Date, nil]
          optional :lte, Date

          # @!method initialize(eq: nil, gte: nil, lte: nil)
          #   @param eq [Date] ISO 8601 date for filtering room compositions created on that date.
          #
          #   @param gte [Date] ISO 8601 date for filtering room compositions created on or after that date.
          #
          #   @param lte [Date] ISO 8601 date for filtering room compositions created on or before that date.
        end

        # The status for filtering room compositions.
        #
        # @see Telnyx::Models::RoomCompositionListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          COMPLETED = :completed
          PROCESSING = :processing
          ENQUEUED = :enqueued

          # @!method self.values
          #   @return [Array<Symbol>]
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
