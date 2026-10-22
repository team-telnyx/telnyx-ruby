# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        # TeXML REST Commands
        class Queues
          # Creates a new queue resource for the account with the provided settings and
          # returns it.
          sig do
            params(
              account_sid: String,
              friendly_name: String,
              max_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Texml::Accounts::QueueResource)
          end
          def create(
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid,
            # A human readable name for the queue.
            friendly_name: nil,
            # The maximum size of the queue.
            max_size: nil,
            request_options: {}
          )
          end

          # Returns a single queue resource for the account by its QueueSid.
          sig do
            params(
              queue_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Texml::Accounts::QueueResource)
          end
          def retrieve(
            # The QueueSid that identifies the call queue.
            queue_sid,
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
            request_options: {}
          )
          end

          # Updates the specified queue resource's settings and returns the updated queue.
          sig do
            params(
              queue_sid: String,
              account_sid: String,
              max_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Texml::Accounts::QueueResource)
          end
          def update(
            # Path param: The QueueSid that identifies the call queue.
            queue_sid,
            # Path param: The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
            # Body param: The maximum size of the queue.
            max_size: nil,
            request_options: {}
          )
          end

          # Returns a paginated list of queue resources for the account, with support for
          # filtering by creation or update dates.
          sig do
            params(
              account_sid: String,
              date_created: String,
              date_updated: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultPaginationForQueues[
                Telnyx::Texml::Accounts::QueueResource
              ]
            )
          end
          def list(
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid,
            # Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also
            # accepts inequality operators, e.g. DateCreated>=2023-05-22.
            date_created: nil,
            # Filters conferences by the time they were last updated. Expected format is
            # YYYY-MM-DD. Also accepts inequality operators, e.g. DateUpdated>=2023-05-22.
            date_updated: nil,
            # The number of the page to be displayed, zero-indexed, should be used in
            # conjuction with PageToken.
            page: nil,
            # The number of records to be displayed on a page
            page_size: nil,
            # Used to request the next page of results.
            page_token: nil,
            request_options: {}
          )
          end

          # Permanently deletes the specified queue resource from the account.
          sig do
            params(
              queue_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The QueueSid that identifies the call queue.
            queue_sid,
            # The UUID of the Telnyx account that owns the resource, for example
            # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
            # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
            # Twilio `AC...` SID. It must match the account that owns the API key used to
            # authenticate the request, otherwise the endpoint returns `404`. The same value
            # is sent as `AccountSid` in TeXML webhooks.
            account_sid:,
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
