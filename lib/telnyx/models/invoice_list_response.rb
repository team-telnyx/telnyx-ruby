# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Invoices#list
    class InvoiceListResponse < Telnyx::Internal::Type::BaseModel
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
  end
end
