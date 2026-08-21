# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailMessages
      # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
      # endpoints.
      class Recipients
        # Returns the current delivery state of a single recipient, including status,
        # billable flag, SMTP detail, and lifecycle timestamps. BCC recipient addresses
        # are redacted (returned as null).
        #
        # @overload retrieve(recipient_id, email_id:, request_options: {})
        #
        # @param recipient_id [String] Recipient UUID.
        #
        # @param email_id [String] Email message UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailMessages::RecipientRetrieveResponse]
        #
        # @see Telnyx::Models::EmailMessages::RecipientRetrieveParams
        def retrieve(recipient_id, params)
          parsed, options = Telnyx::EmailMessages::RecipientRetrieveParams.dump_request(params)
          email_id =
            parsed.delete(:email_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["email_messages/%1$s/recipients/%2$s", email_id, recipient_id],
            model: Telnyx::Models::EmailMessages::RecipientRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailMessages::RecipientListParams} for more details.
        #
        # Lists per-recipient delivery states for a single message with cursor pagination.
        # Each recipient has an independent status, billable flag, and lifecycle
        # timestamps. BCC recipient addresses are redacted (returned as null) to protect
        # BCC privacy. Default page size is 25, maximum is 100.
        #
        # @overload list(email_id, kind: nil, page_cursor: nil, page_size: nil, status: nil, request_options: {})
        #
        # @param email_id [String] Email message UUID.
        #
        # @param kind [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Kind] Filter recipients by address kind.
        #
        # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
        #
        # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        #
        # @param status [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Status] Filter recipients by status.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::EmailCursorPagination<Telnyx::Models::EmailMessages::EmailRecipient>]
        #
        # @see Telnyx::Models::EmailMessages::RecipientListParams
        def list(email_id, params = {})
          parsed, options = Telnyx::EmailMessages::RecipientListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["email_messages/%1$s/recipients", email_id],
            query: query,
            page: Telnyx::Internal::EmailCursorPagination,
            model: Telnyx::EmailMessages::EmailRecipient,
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
