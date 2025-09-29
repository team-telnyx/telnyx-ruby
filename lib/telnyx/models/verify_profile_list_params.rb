# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#list
    class VerifyProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @return [Telnyx::Models::VerifyProfileListParams::Filter, nil]
      optional :filter, -> { Telnyx::VerifyProfileListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::VerifyProfileListParams::Page, nil]
      optional :page, -> { Telnyx::VerifyProfileListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VerifyProfileListParams} for more details.
      #
      #   @param filter [Telnyx::Models::VerifyProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @param page [Telnyx::Models::VerifyProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Optional filter for profile names.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name]
        #
        #   @param name [String] Optional filter for profile names.
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer]
        #   @param size [Integer]
      end
    end
  end
end
