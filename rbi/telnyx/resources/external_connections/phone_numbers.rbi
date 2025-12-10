# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      class PhoneNumbers
        # Return the details of a phone number associated with the given external
        # connection.
        sig do
          params(
            phone_number_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::PhoneNumberRetrieveResponse
          )
        end
        def retrieve(
          # A phone number's ID via the Telnyx API
          phone_number_id,
          # Identifies the resource.
          id:,
          request_options: {}
        )
        end

        # Asynchronously update settings of the phone number associated with the given
        # external connection.
        sig do
          params(
            phone_number_id: String,
            id: String,
            location_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::PhoneNumberUpdateResponse
          )
        end
        def update(
          # Path param: A phone number's ID via the Telnyx API
          phone_number_id,
          # Path param: Identifies the resource.
          id:,
          # Body param: Identifies the location to assign the phone number to.
          location_id: nil,
          request_options: {}
        )
        end

        # Returns a list of all active phone numbers associated with the given external
        # connection.
        sig do
          params(
            id: String,
            filter:
              Telnyx::ExternalConnections::PhoneNumberListParams::Filter::OrHash,
            page:
              Telnyx::ExternalConnections::PhoneNumberListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::PhoneNumberListResponse
          )
        end
        def list(
          # Identifies the resource.
          id,
          # Filter parameter for phone numbers (deepObject style). Supports filtering by
          # phone_number, civic_address_id, and location_id with eq/contains operations.
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
