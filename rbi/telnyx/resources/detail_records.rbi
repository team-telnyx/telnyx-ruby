# typed: strong

module Telnyx
  module Resources
    class DetailRecords
      # Search for any detail record across the Telnyx Platform
      sig do
        params(
          filter: Telnyx::DetailRecordListParams::Filter::OrHash,
          page: Telnyx::DetailRecordListParams::Page::OrHash,
          sort: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DetailRecordListResponse)
      end
      def list(
        # Filter records on a given record attribute and value. <br/>Example:
        # filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. <br/>Example: sort=-created_at
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
