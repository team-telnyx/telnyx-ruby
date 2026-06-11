# typed: strong

module Telnyx
  module Resources
    class Dir
      # Read messages from the Telnyx vetting team and reply with clarifying
      # information.
      class Comments
        # Post a customer comment on a DIR (for example, to respond to reviewer notes).
        # Send only `content` (1–5000 chars) and an optional `parent_comment_id`; the
        # server sets the comment type, visibility, and author automatically. The
        # enterprise is resolved server-side from the DIR id.
        sig do
          params(
            dir_id: String,
            content: String,
            parent_comment_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Dir::CommentCreateResponse)
        end
        def create(
          # The DIR id. Lowercase UUID.
          dir_id,
          # Comment body. 1–5000 characters.
          content:,
          # Optional parent comment id to thread this reply under.
          parent_comment_id: nil,
          request_options: {}
        )
        end

        # List the comments on a DIR. The enterprise is resolved server-side from the DIR
        # id.
        sig do
          params(
            dir_id: String,
            comment_type: Telnyx::Dir::CommentListParams::CommentType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Dir::CommentListResponse
            ]
          )
        end
        def list(
          # The DIR id. Lowercase UUID.
          dir_id,
          # Restrict to comments of this category. Customer-visible categories only:
          # internal-only comments are filtered out regardless of this filter.
          comment_type: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
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
end
