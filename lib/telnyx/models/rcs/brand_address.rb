# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class BrandAddress < Telnyx::Internal::Type::BaseModel
        # @!attribute administrative_area
        #
        #   @return [String]
        required :administrative_area, String

        # @!attribute city
        #
        #   @return [String]
        required :city, String

        # @!attribute country_code
        #   The two-letter ISO 3166-1 country code.
        #
        #   @return [String]
        required :country_code, String

        # @!attribute line_1
        #
        #   @return [String]
        required :line_1, String

        # @!attribute postal_code
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute line_2
        #
        #   @return [String, nil]
        optional :line_2, String, nil?: true

        # @!method initialize(administrative_area:, city:, country_code:, line_1:, postal_code:, line_2: nil)
        #   @param administrative_area [String]
        #
        #   @param city [String]
        #
        #   @param country_code [String] The two-letter ISO 3166-1 country code.
        #
        #   @param line_1 [String]
        #
        #   @param postal_code [String]
        #
        #   @param line_2 [String, nil]
      end
    end
  end
end
