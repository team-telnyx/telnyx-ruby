# typed: strong

module Telnyx
  module Resources
    # Number orders
    class Comments
      # Creates a comment associated with a supported number-order record. The response
      # contains the created comment.
      sig do
        params(
          body: String,
          comment_record_id: String,
          comment_record_type: Telnyx::Comment::CommentRecordType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CommentCreateResponse)
      end
      def create(
        body: nil,
        comment_record_id: nil,
        comment_record_type: nil,
        request_options: {}
      )
      end

      # Returns the comment identified by `id`, including its associated record and
      # comment metadata.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CommentRetrieveResponse)
      end
      def retrieve(
        # The comment ID.
        id,
        request_options: {}
      )
      end

      # Returns comments associated with number-order records. Results can be filtered
      # by record type and record ID and include pagination metadata.
      sig do
        params(
          filter: Telnyx::CommentListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CommentListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[comment_record_type], filter[comment_record_id]
        filter: nil,
        request_options: {}
      )
      end

      # Marks the specified comment as read. The response contains the updated read
      # state for the comment.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CommentMarkAsReadResponse)
      end
      def mark_as_read(
        # The comment ID.
        id,
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
