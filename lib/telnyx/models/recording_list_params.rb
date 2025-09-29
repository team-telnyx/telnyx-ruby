# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Recordings#list
    class RecordingListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[conference_id], filter[created_at][gte], filter[created_at][lte],
      #   filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
      #   filter[connection_id]
      #
      #   @return [Telnyx::Models::RecordingListParams::Filter, nil]
      optional :filter, -> { Telnyx::RecordingListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::RecordingListParams::Page, nil]
      optional :page, -> { Telnyx::RecordingListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RecordingListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RecordingListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[conference\_
      #
      #   @param page [Telnyx::Models::RecordingListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute call_leg_id
        #   If present, recordings will be filtered to those with a matching call_leg_id.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   If present, recordings will be filtered to those with a matching
        #   call_session_id.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute conference_id
        #   Returns only recordings associated with a given conference.
        #
        #   @return [String, nil]
        optional :conference_id, String

        # @!attribute connection_id
        #   If present, recordings will be filtered to those with a matching `connection_id`
        #   attribute (case-sensitive).
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute created_at
        #
        #   @return [Telnyx::Models::RecordingListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::RecordingListParams::Filter::CreatedAt }

        # @!attribute from
        #   If present, recordings will be filtered to those with a matching `from`
        #   attribute (case-sensitive).
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute to
        #   If present, recordings will be filtered to those with a matching `to` attribute
        #   (case-sensitive).
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(call_leg_id: nil, call_session_id: nil, conference_id: nil, connection_id: nil, created_at: nil, from: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RecordingListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[conference_id], filter[created_at][gte], filter[created_at][lte],
        #   filter[call_leg_id], filter[call_session_id], filter[from], filter[to],
        #   filter[connection_id]
        #
        #   @param call_leg_id [String] If present, recordings will be filtered to those with a matching call_leg_id.
        #
        #   @param call_session_id [String] If present, recordings will be filtered to those with a matching call_session_id
        #
        #   @param conference_id [String] Returns only recordings associated with a given conference.
        #
        #   @param connection_id [String] If present, recordings will be filtered to those with a matching `connection_id`
        #
        #   @param created_at [Telnyx::Models::RecordingListParams::Filter::CreatedAt]
        #
        #   @param from [String] If present, recordings will be filtered to those with a matching `from` attribut
        #
        #   @param to [String] If present, recordings will be filtered to those with a matching `to` attribute

        # @see Telnyx::Models::RecordingListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Returns only recordings created later than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Returns only recordings created earlier than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   @param gte [String] Returns only recordings created later than or at given ISO 8601 datetime.
          #
          #   @param lte [String] Returns only recordings created earlier than or at given ISO 8601 datetime.
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
