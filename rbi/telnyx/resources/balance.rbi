# typed: strong

module Telnyx
  module Resources
    # Billing operations
    class Balance
      # Retrieve the current balance, available credit, and credit limit for your
      # account.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::BalanceRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
