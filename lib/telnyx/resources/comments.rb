# frozen_string_literal: true

module Telnyx
  module Resources
    # Number orders
    class Comments
      # Creates a comment associated with a supported number-order record. The response
      # contains the created comment.
      #
      # @overload create(body: nil, comment_record_id: nil, comment_record_type: nil, request_options: {})
      #
      # @param body [String]
      # @param comment_record_id [String]
      # @param comment_record_type [Symbol, Telnyx::Models::Comment::CommentRecordType]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommentCreateResponse]
      #
      # @see Telnyx::Models::CommentCreateParams
      def create(params = {})
        parsed, options = Telnyx::CommentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "comments",
          body: parsed,
          model: Telnyx::Models::CommentCreateResponse,
          options: options
        )
      end

      # Returns the comment identified by `id`, including its associated record and
      # comment metadata.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The comment ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommentRetrieveResponse]
      #
      # @see Telnyx::Models::CommentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["comments/%1$s", id],
          model: Telnyx::Models::CommentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CommentListParams} for more details.
      #
      # Returns comments associated with number-order records. Results can be filtered
      # by record type and record ID and include pagination metadata.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::CommentListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[comment_rec
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommentListResponse]
      #
      # @see Telnyx::Models::CommentListParams
      def list(params = {})
        parsed, options = Telnyx::CommentListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "comments",
          query: query,
          model: Telnyx::Models::CommentListResponse,
          options: options
        )
      end

      # Marks the specified comment as read. The response contains the updated read
      # state for the comment.
      #
      # @overload mark_as_read(id, request_options: {})
      #
      # @param id [String] The comment ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CommentMarkAsReadResponse]
      #
      # @see Telnyx::Models::CommentMarkAsReadParams
      def mark_as_read(id, params = {})
        @client.request(
          method: :patch,
          path: ["comments/%1$s/read", id],
          model: Telnyx::Models::CommentMarkAsReadResponse,
          options: params[:request_options]
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
