# frozen_string_literal: true

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
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String] The x402 payment transaction ID.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::X402::CreditAccount::PaymentRetrieveResponse]
          #
          # @see Telnyx::Models::X402::CreditAccount::PaymentRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["x402/credit_account/payments/%1$s", id],
              model: Telnyx::Models::X402::CreditAccount::PaymentRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Returns a paginated list of the authenticated user's x402 payment transactions,
          # newest first. Organization sub-users must have read permission on transactions;
          # without it the list is empty.
          #
          # @overload list(page_number: nil, page_size: nil, request_options: {})
          #
          # @param page_number [Integer] The page number to load.
          #
          # @param page_size [Integer] The size of the page.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::X402::CreditAccount::X402TransactionRecord>]
          #
          # @see Telnyx::Models::X402::CreditAccount::PaymentListParams
          def list(params = {})
            parsed, options = Telnyx::X402::CreditAccount::PaymentListParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "x402/credit_account/payments",
              query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::X402::CreditAccount::X402TransactionRecord,
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
end
