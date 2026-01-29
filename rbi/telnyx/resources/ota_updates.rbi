# typed: strong

module Telnyx
  module Resources
    class OtaUpdates
      # This API returns the details of an Over the Air (OTA) update.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OtaUpdateRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # List OTA updates
      sig do
        params(
          filter: Telnyx::OtaUpdateListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::OtaUpdateListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter for OTA updates (deepObject style). Originally:
        # filter[status], filter[sim_card_id], filter[type]
        filter: nil,
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
