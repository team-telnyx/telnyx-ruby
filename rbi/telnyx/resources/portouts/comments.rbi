# typed: strong

module Telnyx
  module Resources
    class Portouts
      class Comments
        # Creates a comment on a portout request.
        sig do
          params(
            id: String,
            body: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::CommentCreateResponse)
        end
        def create(
          # Portout id
          id,
          # Comment to post on this portout request
          body: nil,
          request_options: {}
        )
        end

        # Returns a list of comments for a portout request.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::CommentListResponse)
        end
        def list(
          # Portout id
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
end
