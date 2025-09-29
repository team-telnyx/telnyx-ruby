# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class CnamListing < Telnyx::Internal::Type::BaseModel
        # @!attribute cnam_listing_details
        #   The CNAM listing details for this number. Must be alphanumeric characters or
        #   spaces with a maximum length of 15. Requires cnam_listing_enabled to also be set
        #   to true.
        #
        #   @return [String, nil]
        optional :cnam_listing_details, String

        # @!attribute cnam_listing_enabled
        #   Enables CNAM listings for this number. Requires cnam_listing_details to also be
        #   set.
        #
        #   @return [Boolean, nil]
        optional :cnam_listing_enabled, Telnyx::Internal::Type::Boolean

        # @!method initialize(cnam_listing_details: nil, cnam_listing_enabled: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::CnamListing} for more details.
        #
        #   The CNAM listing settings for a phone number.
        #
        #   @param cnam_listing_details [String] The CNAM listing details for this number. Must be alphanumeric characters or spa
        #
        #   @param cnam_listing_enabled [Boolean] Enables CNAM listings for this number. Requires cnam_listing_details to also be
      end
    end
  end
end
