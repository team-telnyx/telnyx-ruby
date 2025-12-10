# typed: strong

module Telnyx
  module Resources
    class Queues
      class Calls
        # Retrieve an existing call from an existing queue
        sig do
          params(
            call_control_id: String,
            queue_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Queues::CallRetrieveResponse)
        end
        def retrieve(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Uniquely identifies the queue by name
          queue_name:,
          request_options: {}
        )
        end

        # Update queued call's keep_after_hangup flag
        sig do
          params(
            call_control_id: String,
            queue_name: String,
            keep_after_hangup: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def update(
          # Path param: Unique identifier and token for controlling the call
          call_control_id,
          # Path param: Uniquely identifies the queue by name
          queue_name:,
          # Body param: Whether the call should remain in queue after hangup.
          keep_after_hangup: nil,
          request_options: {}
        )
        end

        # Retrieve the list of calls in an existing queue
        sig do
          params(
            queue_name: String,
            page: Telnyx::Queues::CallListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::Models::Queues::CallListResponse
            ]
          )
        end
        def list(
          # Uniquely identifies the queue by name
          queue_name,
          # Consolidated page parameter (deepObject style). Originally: page[after],
          # page[before], page[limit], page[size], page[number]
          page: nil,
          request_options: {}
        )
        end

        # Removes an inactive call from a queue. If the call is no longer active, use this
        # command to remove it from the queue.
        sig do
          params(
            call_control_id: String,
            queue_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def remove(
          # Unique identifier and token for controlling the call
          call_control_id,
          # Uniquely identifies the queue by name
          queue_name:,
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
