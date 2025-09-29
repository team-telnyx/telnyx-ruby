# frozen_string_literal: true

module Telnyx
  module Resources
    class Portouts
      class Comments
        # Creates a comment on a portout request.
        #
        # @overload create(id, body: nil, request_options: {})
        #
        # @param id [String] Portout id
        #
        # @param body [String] Comment to post on this portout request
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::CommentCreateResponse]
        #
        # @see Telnyx::Models::Portouts::CommentCreateParams
        def create(id, params = {})
          parsed, options = Telnyx::Portouts::CommentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["portouts/%1$s/comments", id],
            body: parsed,
            model: Telnyx::Models::Portouts::CommentCreateResponse,
            options: options
          )
        end

        # Returns a list of comments for a portout request.
        #
        # @overload list(id, request_options: {})
        #
        # @param id [String] Portout id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::CommentListResponse]
        #
        # @see Telnyx::Models::Portouts::CommentListParams
        def list(id, params = {})
          @client.request(
            method: :get,
            path: ["portouts/%1$s/comments", id],
            model: Telnyx::Models::Portouts::CommentListResponse,
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
end
