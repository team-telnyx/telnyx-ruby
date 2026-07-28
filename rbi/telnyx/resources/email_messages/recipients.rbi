# typed: strong

module Telnyx
  module Resources
    class EmailMessages
      # Send and manage email messages. Legacy `/v2/emails` routes are aliases for these
      # endpoints.
      class Recipients
        # Returns the current delivery state of a single recipient, including status,
        # billable flag, SMTP detail, and lifecycle timestamps. BCC recipient addresses
        # are redacted (returned as null).
        sig do
          params(
            recipient_id: String,
            email_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailMessages::RecipientRetrieveResponse)
        end
        def retrieve(
          # Recipient UUID.
          recipient_id,
          # Email message UUID.
          email_id:,
          request_options: {}
        )
        end

        # Lists per-recipient delivery states for a single message with cursor pagination.
        # Each recipient has an independent status, billable flag, and lifecycle
        # timestamps. BCC recipient addresses are redacted (returned as null) to protect
        # BCC privacy. Default page size is 25, maximum is 100.
        sig do
          params(
            email_id: String,
            kind: Telnyx::EmailMessages::RecipientListParams::Kind::OrSymbol,
            page_cursor: String,
            page_size: Integer,
            status:
              Telnyx::EmailMessages::RecipientListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailMessages::RecipientListResponse)
        end
        def list(
          # Email message UUID.
          email_id,
          # Filter recipients by address kind.
          kind: nil,
          # Opaque URL-safe Base64 cursor returned by a previous list response.
          page_cursor: nil,
          # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
          # clamped to the valid range.
          page_size: nil,
          # Filter recipients by status.
          status: nil,
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
