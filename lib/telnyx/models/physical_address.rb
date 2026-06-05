# frozen_string_literal: true

module Telnyx
  module Models
    class PhysicalAddress < Telnyx::Internal::Type::BaseModel
      # @!attribute administrative_area
      #   State or province code (e.g. `IL`, `ON`).
      #
      #   @return [String]
      required :administrative_area, String

      # @!attribute city
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      #
      #   @return [String]
      required :country, String

      # @!attribute postal_code
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute street_address
      #
      #   @return [String]
      required :street_address, String

      # @!attribute extended_address
      #
      #   @return [String, nil]
      optional :extended_address, String, nil?: true

      # @!method initialize(administrative_area:, city:, country:, postal_code:, street_address:, extended_address: nil)
      #   @param administrative_area [String] State or province code (e.g. `IL`, `ON`).
      #
      #   @param city [String]
      #
      #   @param country [String] ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      #
      #   @param postal_code [String]
      #
      #   @param street_address [String]
      #
      #   @param extended_address [String, nil]
    end
  end
end
