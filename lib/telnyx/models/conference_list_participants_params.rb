# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#list_participants
    class ConferenceListParticipantsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[muted],
      #   filter[on_hold], filter[whispering]
      #
      #   @return [Telnyx::Models::ConferenceListParticipantsParams::Filter, nil]
      optional :filter, -> { Telnyx::ConferenceListParticipantsParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[after],
      #   page[before], page[limit], page[size], page[number]
      #
      #   @return [Telnyx::Models::ConferenceListParticipantsParams::Page, nil]
      optional :page, -> { Telnyx::ConferenceListParticipantsParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConferenceListParticipantsParams} for more details.
      #
      #   @param filter [Telnyx::Models::ConferenceListParticipantsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[muted], fil
      #
      #   @param page [Telnyx::Models::ConferenceListParticipantsParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute muted
        #   If present, participants will be filtered to those who are/are not muted
        #
        #   @return [Boolean, nil]
        optional :muted, Telnyx::Internal::Type::Boolean

        # @!attribute on_hold
        #   If present, participants will be filtered to those who are/are not put on hold
        #
        #   @return [Boolean, nil]
        optional :on_hold, Telnyx::Internal::Type::Boolean

        # @!attribute whispering
        #   If present, participants will be filtered to those who are whispering or are not
        #
        #   @return [Boolean, nil]
        optional :whispering, Telnyx::Internal::Type::Boolean

        # @!method initialize(muted: nil, on_hold: nil, whispering: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ConferenceListParticipantsParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally: filter[muted],
        #   filter[on_hold], filter[whispering]
        #
        #   @param muted [Boolean] If present, participants will be filtered to those who are/are not muted
        #
        #   @param on_hold [Boolean] If present, participants will be filtered to those who are/are not put on hold
        #
        #   @param whispering [Boolean] If present, participants will be filtered to those who are whispering or are not
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute after
        #   Opaque identifier of next page
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute before
        #   Opaque identifier of previous page
        #
        #   @return [String, nil]
        optional :before, String

        # @!attribute limit
        #   Limit of records per single page
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(after: nil, before: nil, limit: nil, number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[after],
        #   page[before], page[limit], page[size], page[number]
        #
        #   @param after [String] Opaque identifier of next page
        #
        #   @param before [String] Opaque identifier of previous page
        #
        #   @param limit [Integer] Limit of records per single page
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
