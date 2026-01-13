# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Queues
          # Creates a new queue resource.
          sig do
            params(
              account_sid: String,
              friendly_name: String,
              max_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::QueueCreateResponse)
          end
          def create(
            # The id of the account the resource belongs to.
            account_sid,
            # A human readable name for the queue.
            friendly_name: nil,
            # The maximum size of the queue.
            max_size: nil,
            request_options: {}
          )
          end

          # Returns a queue resource.
          sig do
            params(
              queue_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::QueueRetrieveResponse)
          end
          def retrieve(
            # The QueueSid that identifies the call queue.
            queue_sid,
            # The id of the account the resource belongs to.
            account_sid:,
            request_options: {}
          )
          end

          # Updates a queue resource.
          sig do
            params(
              queue_sid: String,
              account_sid: String,
              max_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::QueueUpdateResponse)
          end
          def update(
            # Path param: The QueueSid that identifies the call queue.
            queue_sid,
            # Path param: The id of the account the resource belongs to.
            account_sid:,
            # Body param: The maximum size of the queue.
            max_size: nil,
            request_options: {}
          )
          end

          # Lists queue resources.
          sig do
            params(
              account_sid: String,
              date_created: String,
              date_updated: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::QueueListResponse)
          end
          def list(
            # The id of the account the resource belongs to.
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

          # Delete a queue resource.
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
            # The id of the account the resource belongs to.
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
