# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#retrieve_conformance_runs
    class TtsIntegrationRetrieveConformanceRunsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams::Page, nil]
      optional :page, -> { Telnyx::TtsIntegrationRetrieveConformanceRunsParams::Page }

      # @!method initialize(id:, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams} for more details.
      #
      #   @param id [String]
      #
      #   @param page [Telnyx::Models::TtsIntegrationRetrieveConformanceRunsParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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
