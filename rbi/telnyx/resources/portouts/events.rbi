# typed: strong

module Telnyx
  module Resources
    class Portouts
      # Number portout operations
      class Events
        # Returns the details of a single port-out event, including its type and payload.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Portouts::EventRetrieveResponse)
        end
        def retrieve(
          # Identifies the port-out event.
          id,
          request_options: {}
        )
        end

        # Returns a paginated list of port-out events on your account, such as status
        # changes on port-out requests, with support for filtering.
        sig do
          params(
            filter: Telnyx::Portouts::EventListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Portouts::PortoutEvent::Variants
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[event_type], filter[portout_id], filter[created_at]
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Republishes the specified port-out event, triggering re-delivery of the
        # corresponding webhook to your account.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def republish(
          # Identifies the port-out event.
          id,
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
