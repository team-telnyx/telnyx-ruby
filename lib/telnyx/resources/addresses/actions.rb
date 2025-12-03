# frozen_string_literal: true

module Telnyx
  module Resources
    class Addresses
      class Actions
        # Accepts this address suggestion as a new emergency address for Operator Connect
        # and finishes the uploads of the numbers associated with it to Microsoft.
        #
        # @overload accept_suggestions(path_id, body_id: nil, request_options: {})
        #
        # @param path_id [String] The UUID of the address that should be accepted.
        #
        # @param body_id [String] The ID of the address.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse]
        #
        # @see Telnyx::Models::Addresses::ActionAcceptSuggestionsParams
        def accept_suggestions(path_id, params = {})
          parsed, options = Telnyx::Addresses::ActionAcceptSuggestionsParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["addresses/%1$s/actions/accept_suggestions", path_id],
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
