# typed: strong

module Telnyx
  module Resources
    class Invoices
      # Retrieve a single invoice by its unique identifier.
      sig do
        params(
          id: String,
          action: Telnyx::InvoiceRetrieveParams::Action::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InvoiceRetrieveResponse)
      end
      def retrieve(
        # Invoice UUID
        id,
        # Invoice action
        action: nil,
        request_options: {}
      )
      end

      # Retrieve a paginated list of invoices.
      sig do
        params(
          page: Telnyx::InvoiceListParams::Page::OrHash,
          sort: Telnyx::InvoiceListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InvoiceListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results.
        sort: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
