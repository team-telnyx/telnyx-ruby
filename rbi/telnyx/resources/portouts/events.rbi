# typed: strong

module Telnyx
  module Resources
    class Portouts
      class Events
        # Show a specific port-out event.
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

        # Returns a list of all port-out events.
        sig do
          params(
            filter: Telnyx::Portouts::EventListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Portouts::EventListResponse::Variants
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

        # Republish a specific port-out event.
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
