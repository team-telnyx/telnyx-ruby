# typed: strong

module Telnyx
  module Resources
    class VirtualCrossConnectsCoverage
      # List Virtual Cross Connects Cloud Coverage.<br /><br />This endpoint shows which
      # cloud regions are available for the `location_code` your Virtual Cross Connect
      # will be provisioned in.
      sig do
        params(
          filter:
            Telnyx::VirtualCrossConnectsCoverageListParams::Filter::OrHash,
          filters:
            Telnyx::VirtualCrossConnectsCoverageListParams::Filters::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::VirtualCrossConnectsCoverageListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[cloud_provider], filter[cloud_provider_region], filter[location.region],
        # filter[location.site], filter[location.pop], filter[location.code]
        filter: nil,
        # Consolidated filters parameter (deepObject style). Originally:
        # filters[available_bandwidth][contains]
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
