# typed: strong

module Telnyx
  module Resources
    class NetworkCoverage
      # List all locations and the interfaces that region supports
      sig do
        params(
          filter: Telnyx::NetworkCoverageListParams::Filter::OrHash,
          filters: Telnyx::NetworkCoverageListParams::Filters::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::NetworkCoverageListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[location.region], filter[location.site], filter[location.pop],
        # filter[location.code]
        filter: nil,
        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_services][contains]
        filters: nil,
        page_number: nil,
        page_size: nil,
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
