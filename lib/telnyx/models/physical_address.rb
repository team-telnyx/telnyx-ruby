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
      #   The city of your registered business address.
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      #
      #   @return [String]
      required :country, String

      # @!attribute postal_code
      #   The postal or ZIP code of your registered business address.
      #
      #   @return [String]
      required :postal_code, String

      # @!attribute street_address
      #   The street address of your registered business, including the building number
      #   and street name.
      #
      #   @return [String]
      required :street_address, String

      # @!attribute extended_address
      #   An optional second address line, such as a suite, unit, or floor. Leave blank if
      #   it does not apply.
      #
      #   @return [String, nil]
      optional :extended_address, String, nil?: true

      # @!method initialize(administrative_area:, city:, country:, postal_code:, street_address:, extended_address: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhysicalAddress} for more details.
      #
      #   @param administrative_area [String] State or province code (e.g. `IL`, `ON`).
      #
      #   @param city [String] The city of your registered business address.
      #
      #   @param country [String] ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      #
      #   @param postal_code [String] The postal or ZIP code of your registered business address.
      #
      #   @param street_address [String] The street address of your registered business, including the building number an
      #
      #   @param extended_address [String, nil] An optional second address line, such as a suite, unit, or floor. Leave blank if
    end
  end
end
