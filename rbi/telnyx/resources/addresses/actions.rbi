# typed: strong

module Telnyx
  module Resources
    class Addresses
      class Actions
        # Accepts this address suggestion as a new emergency address for Operator Connect
        # and finishes the uploads of the numbers associated with it to Microsoft.
        sig do
          params(
            address_uuid: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse)
        end
        def accept_suggestions(
          # The UUID of the address that should be accepted.
          address_uuid,
          # The ID of the address.
          id: nil,
          request_options: {}
        )
        end

        # Validates an address for emergency services.
        sig do
          params(
            country_code: String,
            postal_code: String,
            street_address: String,
            administrative_area: String,
            extended_address: String,
            locality: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Addresses::ActionValidateResponse)
        end
        def validate(
          # The two-character (ISO 3166-1 alpha-2) country code of the address.
          country_code:,
          # The postal code of the address.
          postal_code:,
          # The primary street address information about the address.
          street_address:,
          # The locality of the address. For US addresses, this corresponds to the state of
          # the address.
          administrative_area: nil,
          # Additional street address information about the address such as, but not limited
          # to, unit number or apartment number.
          extended_address: nil,
          # The locality of the address. For US addresses, this corresponds to the city of
          # the address.
          locality: nil,
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
