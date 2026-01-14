# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class Comments
        # Creates a new comment for a porting order.
        sig do
          params(
            id: String,
            body: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::CommentCreateResponse)
        end
        def create(
          # Porting Order id
          id,
          body: nil,
          request_options: {}
        )
        end

        # Returns a list of all comments of a porting order.
        sig do
          params(
            id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::PortingOrders::CommentListResponse
            ]
          )
        end
        def list(
          # Porting Order id
          id,
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
end
