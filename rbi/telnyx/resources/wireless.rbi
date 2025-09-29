# typed: strong

module Telnyx
  module Resources
    class Wireless
      sig { returns(Telnyx::Resources::Wireless::DetailRecordsReports) }
      attr_reader :detail_records_reports

      # Retrieve all wireless regions for the given product.
      sig do
        params(
          product: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WirelessRetrieveRegionsResponse)
      end
      def retrieve_regions(
        # The product for which to list regions (e.g., 'public_ips',
        # 'private_wireless_gateways').
        product:,
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
