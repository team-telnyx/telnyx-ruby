# typed: strong

module Telnyx
  module Resources
    # Detail Records operations
    class DetailRecords
      # Search for any detail record across the Telnyx Platform
      sig do
        params(
          filter: Telnyx::DetailRecordListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::DetailRecordListResponse::Variants
          ]
        )
      end
      def list(
        # Filter records on a given record attribute and value. <br/>Example:
        # filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
        # <br/>The valid filter fields depend on the record_type: filtering by a field
        # that does not exist for the selected record_type is rejected with a 400 error.
        # Call-control and sip-trunking records use started_at, finished_at and
        # answered_at (they have no created_at); messaging records use created_at. To list
        # the fields available for a record_type, use the /v2/detail_records/options
        # endpoint.
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. <br/>Example: sort=-created_at <br/>The
        # valid sort fields depend on the record_type: sort by a field that does not exist
        # for the selected record_type is rejected with a 400 error. Call-control and
        # sip-trunking records use started_at, finished_at and answered_at (they have no
        # created_at); messaging records use created_at. To list the fields available for
        # a record_type, use the /v2/detail_records/options endpoint.
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
