# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#list_active_calls
    class ConnectionListActiveCallsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[after],
      #   page[before], page[limit], page[size], page[number]
      #
      #   @return [Telnyx::Models::ConnectionListActiveCallsParams::Page, nil]
      optional :page, -> { Telnyx::ConnectionListActiveCallsParams::Page }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConnectionListActiveCallsParams} for more details.
      #
      #   @param page [Telnyx::Models::ConnectionListActiveCallsParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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

        # @!method initialize(after: nil, before: nil, limit: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[after],
        #   page[before], page[limit], page[size], page[number]
        #
        #   @param after [String] Opaque identifier of next page
        #
        #   @param before [String] Opaque identifier of previous page
        #
        #   @param limit [Integer] Limit of records per single page
      end
    end
  end
end
