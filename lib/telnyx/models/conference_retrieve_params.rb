# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#retrieve
    class ConferenceRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute region
      #   Region where the conference data is located
      #
      #   @return [Symbol, Telnyx::Models::ConferenceRetrieveParams::Region, nil]
      optional :region, enum: -> { Telnyx::ConferenceRetrieveParams::Region }

      # @!method initialize(region: nil, request_options: {})
      #   @param region [Symbol, Telnyx::Models::ConferenceRetrieveParams::Region] Region where the conference data is located
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
