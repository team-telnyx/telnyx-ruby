# typed: strong

module Telnyx
  module Resources
    class Porting
      class Events
        # Show a specific porting event.
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

        # Returns a list of all porting events.
        sig do
          params(
            filter: Telnyx::Porting::EventListParams::Filter::OrHash,
            page: Telnyx::Porting::EventListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::Models::Porting::EventListResponse::Variants
            ]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[porting_order_id], filter[created_at][gte], filter[created_at][lte]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        # Republish a specific porting event.
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
