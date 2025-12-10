# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#list
    class InvoiceListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::InvoiceListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::InvoiceListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::InvoiceListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::InvoiceListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::InvoiceListResponse::Data>]
      #   @param meta [Telnyx::Models::InvoiceListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute file_id
        #
        #   @return [String, nil]
        optional :file_id, String

        # @!attribute invoice_id
        #
        #   @return [String, nil]
        optional :invoice_id, String

        # @!attribute paid
        #
        #   @return [Boolean, nil]
        optional :paid, Telnyx::Internal::Type::Boolean

        # @!attribute period_end
        #
        #   @return [Date, nil]
        optional :period_end, Date

        # @!attribute period_start
        #
        #   @return [Date, nil]
        optional :period_start, Date

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(file_id: nil, invoice_id: nil, paid: nil, period_end: nil, period_start: nil, url: nil)
        #   @param file_id [String]
        #   @param invoice_id [String]
        #   @param paid [Boolean]
        #   @param period_end [Date]
        #   @param period_start [Date]
        #   @param url [String]
      end

      # @see Telnyx::Models::InvoiceListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
