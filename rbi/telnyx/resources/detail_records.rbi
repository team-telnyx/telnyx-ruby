# typed: strong

module Telnyx
  module Resources
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
        filter: nil,
        page_number: nil,
        page_size: nil,
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
