# frozen_string_literal: true

module Telnyx
  module Models
    class BillingAddress < Telnyx::Internal::Type::BaseModel
      # @!attribute administrative_area
      #   State or province
      #
      #   @return [String]
      required :administrative_area, String

      # @!attribute city
      #   City name
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   Country name (e.g., United States)
      #
      #   @return [String]
      required :country, String

      # @!attribute postal_code
      #   ZIP or postal code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute street_address
      #   Street address
      #
      #   @return [String]
      required :street_address, String

      # @!attribute extended_address
      #   Additional address line (suite, apt, etc.)
      #
      #   @return [String, nil]
      optional :extended_address, String, nil?: true

      # @!method initialize(administrative_area:, city:, country:, postal_code:, street_address:, extended_address: nil)
      #   @param administrative_area [String] State or province
      #
      #   @param city [String] City name
      #
      #   @param country [String] Country name (e.g., United States)
      #
      #   @param postal_code [String] ZIP or postal code
      #
      #   @param street_address [String] Street address
      #
      #   @param extended_address [String, nil] Additional address line (suite, apt, etc.)
    end
  end
end
