# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#retrieve_discoverable
    class TtsIntegrationRetrieveDiscoverableParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams::Page, nil]
      optional :page, -> { Telnyx::TtsIntegrationRetrieveDiscoverableParams::Page }

      # @!attribute status
      #   Filter by status.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineStatus, nil]
      optional :status, enum: -> { Telnyx::CommunityTtsEngineStatus }

      # @!attribute visibility
      #   Filter by visibility.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineVisibility, nil]
      optional :visibility, enum: -> { Telnyx::CommunityTtsEngineVisibility }

      # @!method initialize(page: nil, status: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams} for more details.
      #
      #   @param page [Telnyx::Models::TtsIntegrationRetrieveDiscoverableParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param status [Symbol, Telnyx::Models::CommunityTtsEngineStatus] Filter by status.
      #
      #   @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] Filter by visibility.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   Clamped to 1-100.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer]
        #
        #   @param size [Integer] Clamped to 1-100.
      end
    end
  end
end
