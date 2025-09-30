# typed: strong

module Telnyx
  module Resources
    class InventoryCoverage
      # Creates an inventory coverage request. If locality, npa or
      # national_destination_code is used in groupBy, and no region or locality filters
      # are used, the whole paginated set is returned.
      sig do
        params(
          filter: Telnyx::InventoryCoverageListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InventoryCoverageListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[npa],
        # filter[nxx], filter[administrative_area], filter[phone_number_type],
        # filter[country_code], filter[count], filter[features], filter[groupBy]
        filter: nil,
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
