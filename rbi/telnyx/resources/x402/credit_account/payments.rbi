# typed: strong

module Telnyx
  module Resources
    class X402
      class CreditAccount
        # Operations for x402 cryptocurrency payment transactions. Fund your Telnyx
        # account using USDC stablecoin payments via the x402 protocol.
        class Payments
          # Returns a single x402 payment transaction by ID. The transaction must belong to
          # the authenticated user; organization sub-users must have read permission on
          # transactions. Returns 404 if the transaction does not exist or belongs to
          # another user.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::X402::CreditAccount::PaymentRetrieveResponse
            )
          end
          def retrieve(
            # The x402 payment transaction ID.
            id,
            request_options: {}
          )
          end

          # Returns a paginated list of the authenticated user's x402 payment transactions,
          # newest first. Organization sub-users must have read permission on transactions;
          # without it the list is empty.
          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::X402::CreditAccount::X402TransactionRecord
              ]
            )
          end
          def list(
            # The page number to load.
            page_number: nil,
            # The size of the page.
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
end
