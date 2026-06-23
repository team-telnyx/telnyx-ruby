# frozen_string_literal: true

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
        #
        # @overload create(dir_id, content:, parent_comment_id: nil, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param content [String] Comment body. 1–5000 characters.
        #
        # @param parent_comment_id [String] Optional parent comment id to thread this reply under.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::CommentCreateResponse]
        #
        # @see Telnyx::Models::Dir::CommentCreateParams
        def create(dir_id, params)
          parsed, options = Telnyx::Dir::CommentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dir/%1$s/comments", dir_id],
            body: parsed,
            model: Telnyx::Models::Dir::CommentCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Dir::CommentListParams} for more details.
        #
        # List the comments on a DIR. The enterprise is resolved server-side from the DIR
        # id.
        #
        # @overload list(dir_id, comment_type: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param comment_type [Symbol, Telnyx::Models::Dir::CommentType] Restrict to comments of this category. Customer-visible categories only: interna
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Dir::DirComment>]
        #
        # @see Telnyx::Models::Dir::CommentListParams
        def list(dir_id, params = {})
          parsed, options = Telnyx::Dir::CommentListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["dir/%1$s/comments", dir_id],
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Dir::DirComment,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
