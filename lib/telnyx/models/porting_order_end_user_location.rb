# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderEndUserLocation < Telnyx::Internal::Type::BaseModel
      # @!attribute administrative_area
      #   State, province, or similar of billing address
      #
      #   @return [String, nil]
      optional :administrative_area, String

      # @!attribute country_code
      #   ISO3166-1 alpha-2 country code of billing address
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute extended_address
      #   Second line of billing address
      #
      #   @return [String, nil]
      optional :extended_address, String

      # @!attribute locality
      #   City or municipality of billing address
      #
      #   @return [String, nil]
      optional :locality, String

      # @!attribute postal_code
      #   Postal Code of billing address
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute street_address
      #   First line of billing address
      #
      #   @return [String, nil]
      optional :street_address, String

      # @!method initialize(administrative_area: nil, country_code: nil, extended_address: nil, locality: nil, postal_code: nil, street_address: nil)
      #   @param administrative_area [String] State, province, or similar of billing address
      #
      #   @param country_code [String] ISO3166-1 alpha-2 country code of billing address
      #
      #   @param extended_address [String] Second line of billing address
      #
      #   @param locality [String] City or municipality of billing address
      #
      #   @param postal_code [String] Postal Code of billing address
      #
      #   @param street_address [String] First line of billing address
    end
  end
end
