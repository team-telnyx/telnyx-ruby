# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#retrieve
    class InvoiceRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InvoiceRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::InvoiceRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InvoiceRetrieveResponse::Data]

      # @see Telnyx::Models::InvoiceRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute download_url
        #   Present only if the query parameter `action=link` is set.
        #
        #   @return [String, nil]
        optional :download_url, String

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

        # @!method initialize(download_url: nil, file_id: nil, invoice_id: nil, paid: nil, period_end: nil, period_start: nil, url: nil)
        #   @param download_url [String] Present only if the query parameter `action=link` is set.
        #
        #   @param file_id [String]
        #
        #   @param invoice_id [String]
        #
        #   @param paid [Boolean]
        #
        #   @param period_end [Date]
        #
        #   @param period_start [Date]
        #
        #   @param url [String]
      end
    end
  end
end
