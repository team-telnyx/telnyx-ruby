# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#list
    class InvoiceListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::InvoiceListParams::Page, nil]
      optional :page, -> { Telnyx::InvoiceListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results.
      #
      #   @return [Symbol, Telnyx::Models::InvoiceListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::InvoiceListParams::Sort }

      # @!method initialize(page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InvoiceListParams} for more details.
      #
      #   @param page [Telnyx::Models::InvoiceListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Symbol, Telnyx::Models::InvoiceListParams::Sort] Specifies the sort order for results.
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

      # Specifies the sort order for results.
      module Sort
        extend Telnyx::Internal::Type::Enum

        PERIOD_START = :period_start
        PERIOD_START_DESC = :"-period_start"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
