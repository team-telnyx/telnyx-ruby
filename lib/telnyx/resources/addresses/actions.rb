# frozen_string_literal: true

module Telnyx
  module Resources
    class Addresses
      # Operations to work with Address records. Address records are emergency-validated
      # addresses meant to be associated with phone numbers. They are validated for
      # emergency usage purposes at creation time, although you may validate them
      # separately with a custom workflow using the ValidateAddress operation
      # separately. Address records are not usable for physical orders, such as for
      # Telnyx SIM cards, please use UserAddress for that. It is not possible to
      # entirely skip emergency service validation for Address records; if an emergency
      # provider for a phone number rejects the address then it cannot be used on a
      # phone number. To prevent records from getting out of sync, Address records are
      # immutable and cannot be altered once created. If you realize you need to alter
      # an address, a new record must be created with the differing address.
      class Actions
        # Accepts this address suggestion as a new emergency address for Operator Connect
        # and finishes the uploads of the numbers associated with it to Microsoft.
        #
        # @overload accept_suggestions(address_uuid, id: nil, request_options: {})
        #
        # @param address_uuid [String] The UUID of the address that should be accepted.
        #
        # @param id [String] The ID of the address.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse]
        #
        # @see Telnyx::Models::Addresses::ActionAcceptSuggestionsParams
        def accept_suggestions(address_uuid, params = {})
          parsed, options = Telnyx::Addresses::ActionAcceptSuggestionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["addresses/%1$s/actions/accept_suggestions", address_uuid],
            body: parsed,
            model: Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Addresses::ActionValidateParams} for more details.
        #
        # Validates an address for emergency services.
        #
        # @overload validate(country_code:, postal_code:, street_address:, administrative_area: nil, extended_address: nil, locality: nil, request_options: {})
        #
        # @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the address.
        #
        # @param postal_code [String] The postal code of the address.
        #
        # @param street_address [String] The primary street address information about the address.
        #
        # @param administrative_area [String] The locality of the address. For US addresses, this corresponds to the state of
        #
        # @param extended_address [String] Additional street address information about the address such as, but not limited
        #
        # @param locality [String] The locality of the address. For US addresses, this corresponds to the city of t
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Addresses::ActionValidateResponse]
        #
        # @see Telnyx::Models::Addresses::ActionValidateParams
        def validate(params)
          parsed, options = Telnyx::Addresses::ActionValidateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "addresses/actions/validate",
            body: parsed,
            model: Telnyx::Models::Addresses::ActionValidateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
