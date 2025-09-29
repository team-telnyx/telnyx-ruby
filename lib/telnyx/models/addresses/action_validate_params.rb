# frozen_string_literal: true

module Telnyx
  module Models
    module Addresses
      # @see Telnyx::Resources::Addresses::Actions#validate
      class ActionValidateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute country_code
        #   The two-character (ISO 3166-1 alpha-2) country code of the address.
        #
        #   @return [String]
        required :country_code, String

        # @!attribute postal_code
        #   The postal code of the address.
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute street_address
        #   The primary street address information about the address.
        #
        #   @return [String]
        required :street_address, String

        # @!attribute administrative_area
        #   The locality of the address. For US addresses, this corresponds to the state of
        #   the address.
        #
        #   @return [String, nil]
        optional :administrative_area, String

        # @!attribute extended_address
        #   Additional street address information about the address such as, but not limited
        #   to, unit number or apartment number.
        #
        #   @return [String, nil]
        optional :extended_address, String

        # @!attribute locality
        #   The locality of the address. For US addresses, this corresponds to the city of
        #   the address.
        #
        #   @return [String, nil]
        optional :locality, String

        # @!method initialize(country_code:, postal_code:, street_address:, administrative_area: nil, extended_address: nil, locality: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Addresses::ActionValidateParams} for more details.
        #
        #   @param country_code [String] The two-character (ISO 3166-1 alpha-2) country code of the address.
        #
        #   @param postal_code [String] The postal code of the address.
        #
        #   @param street_address [String] The primary street address information about the address.
        #
        #   @param administrative_area [String] The locality of the address. For US addresses, this corresponds to the state of
        #
        #   @param extended_address [String] Additional street address information about the address such as, but not limited
        #
        #   @param locality [String] The locality of the address. For US addresses, this corresponds to the city of t
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
