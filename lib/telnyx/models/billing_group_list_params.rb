# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BillingGroups#list
    class BillingGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::BillingGroupListParams::Page, nil]
      optional :page, -> { Telnyx::BillingGroupListParams::Page }

      # @!method initialize(page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BillingGroupListParams} for more details.
      #
      #   @param page [Telnyx::Models::BillingGroupListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Page < Telnyx::Internal::Type::BaseModel
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

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
