# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CnamListing < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PhoneNumbers::CnamListing, Telnyx::Internal::AnyHash)
          end

        # The CNAM listing details for this number. Must be alphanumeric characters or
        # spaces with a maximum length of 15. Requires cnam_listing_enabled to also be set
        # to true.
        sig { returns(T.nilable(String)) }
        attr_reader :cnam_listing_details

        sig { params(cnam_listing_details: String).void }
        attr_writer :cnam_listing_details

        # Enables CNAM listings for this number. Requires cnam_listing_details to also be
        # set.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cnam_listing_enabled

        sig { params(cnam_listing_enabled: T::Boolean).void }
        attr_writer :cnam_listing_enabled

        # The CNAM listing settings for a phone number.
        sig do
          params(
            cnam_listing_details: String,
            cnam_listing_enabled: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The CNAM listing details for this number. Must be alphanumeric characters or
          # spaces with a maximum length of 15. Requires cnam_listing_enabled to also be set
          # to true.
          cnam_listing_details: nil,
          # Enables CNAM listings for this number. Requires cnam_listing_details to also be
          # set.
          cnam_listing_enabled: nil
        )
        end

        sig do
          override.returns(
            { cnam_listing_details: String, cnam_listing_enabled: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
