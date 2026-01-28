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
      #   {Telnyx::Models::RoomCompositionListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RoomCompositionListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[date_create
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
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
    end
  end
end
