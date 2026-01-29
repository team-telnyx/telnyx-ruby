# typed: strong

module Telnyx
  module Resources
    class DocumentLinks
      # List all documents links ordered by created_at descending.
      sig do
        params(
          filter: Telnyx::DocumentLinkListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::DocumentLinkListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter for document links (deepObject style). Originally:
        # filter[linked_record_type], filter[linked_resource_id]
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
