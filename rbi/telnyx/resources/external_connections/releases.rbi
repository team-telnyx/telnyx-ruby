# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      class Releases
        # Return the details of a Release request and its phone numbers.
        sig do
          params(
            release_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse
          )
        end
        def retrieve(
          # Identifies a Release request
          release_id,
          # Identifies the resource.
          id:,
          request_options: {}
        )
        end

        # Returns a list of your Releases for the given external connection. These are
        # automatically created when you change the `connection_id` of a phone number that
        # is currently on Microsoft Teams.
        sig do
          params(
            id: String,
            filter:
              Telnyx::ExternalConnections::ReleaseListParams::Filter::OrHash,
            page: Telnyx::ExternalConnections::ReleaseListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::Models::ExternalConnections::ReleaseListResponse
            ]
          )
        end
        def list(
          # Identifies the resource.
          id,
          # Filter parameter for releases (deepObject style). Supports filtering by status,
          # civic_address_id, location_id, and phone_number with eq/contains operations.
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
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
