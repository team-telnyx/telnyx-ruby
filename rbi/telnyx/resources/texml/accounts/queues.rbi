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
