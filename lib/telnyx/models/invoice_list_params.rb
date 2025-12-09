# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#list
    class InvoiceListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Specifies the sort order for results.
      #
      #   @return [Symbol, Telnyx::Models::InvoiceListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::InvoiceListParams::Sort }

      # @!method initialize(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::InvoiceListParams::Sort] Specifies the sort order for results.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
