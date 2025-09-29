# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class Actions
        # Activate each number in a porting order asynchronously. This operation is
        # limited to US FastPort orders only.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActionActivateResponse)
        end
        def activate(
          # Porting Order id
          id,
          request_options: {}
        )
        end

        # Cancel a porting order
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActionCancelResponse)
        end
        def cancel(
          # Porting Order id
          id,
          request_options: {}
        )
        end

        # Confirm and submit your porting order.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActionConfirmResponse)
        end
        def confirm(
          # Porting Order id
          id,
          request_options: {}
        )
        end

        # Creates a sharing token for a porting order. The token can be used to share the
        # porting order with non-Telnyx users.
        sig do
          params(
            id: String,
            expires_in_seconds: Integer,
            permissions:
              Telnyx::PortingOrders::ActionShareParams::Permissions::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActionShareResponse)
        end
        def share(
          # Porting Order id
          id,
          # The number of seconds the token will be valid for
          expires_in_seconds: nil,
          # The permissions the token will have
          permissions: nil,
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
