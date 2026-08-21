# typed: strong

module Telnyx
  module Resources
    class Porting
      # Endpoints related to porting orders management.
      class Events
        # Returns the details of a single porting event, including its type and payload.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Porting::EventRetrieveResponse)
        end
        def retrieve(
          # Identifies the porting event.
          id,
          request_options: {}
        )
        end

        # Returns a paginated list of porting-related events on your account, such as
        # status changes on porting orders. Supports filtering and is useful for auditing
        # or reconciling webhook deliveries.
        sig do
          params(
            filter: Telnyx::Porting::EventListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Porting::PortingEvent::Variants
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Republishes the specified porting event, triggering re-delivery of the
        # corresponding webhook to your account.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def republish(
          # Identifies the porting event.
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
