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

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute region
      #   Region where the conference data is located
      #
      #   @return [Symbol, Telnyx::Models::ConferenceListParticipantsParams::Region, nil]
      optional :region, enum: -> { Telnyx::ConferenceListParticipantsParams::Region }

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, region: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConferenceListParticipantsParams} for more details.
      #
      #   @param filter [Telnyx::Models::ConferenceListParticipantsParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[muted], fil
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param region [Symbol, Telnyx::Models::ConferenceListParticipantsParams::Region] Region where the conference data is located
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

      # Region where the conference data is located
      module Region
        extend Telnyx::Internal::Type::Enum

        AUSTRALIA = :Australia
        EUROPE = :Europe
        MIDDLE_EAST = :"Middle East"
        US = :US

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
