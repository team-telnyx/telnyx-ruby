# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Comments#list
      class CommentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PortingOrders::CommentListParams::Page, nil]
        optional :page, -> { Telnyx::PortingOrders::CommentListParams::Page }

        # @!method initialize(page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::CommentListParams} for more details.
        #
        #   @param page [Telnyx::Models::PortingOrders::CommentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @param number [Integer] The page number to load
          #
          #   @param size [Integer] The size of the page
        end
      end
    end
  end
end
