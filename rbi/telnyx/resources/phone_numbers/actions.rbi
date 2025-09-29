# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class Actions
        # Change the bundle status for a phone number (set to being in a bundle or remove
        # from a bundle)
        sig do
          params(
            id: String,
            bundle_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusResponse
          )
        end
        def change_bundle_status(
          # Identifies the resource.
          id,
          # The new bundle_id setting for the number. If you are assigning the number to a
          # bundle, this is the unique ID of the bundle you wish to use. If you are removing
          # the number from a bundle, this must be null. You cannot assign a number from one
          # bundle to another directly. You must first remove it from a bundle, and then
          # assign it to a new bundle.
          bundle_id:,
          request_options: {}
        )
        end

        # Enable emergency for a phone number
        sig do
          params(
            id: String,
            emergency_address_id: String,
            emergency_enabled: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::ActionEnableEmergencyResponse)
        end
        def enable_emergency(
          # Identifies the resource.
          id,
          # Identifies the address to be used with emergency services.
          emergency_address_id:,
          # Indicates whether to enable emergency services on this number.
          emergency_enabled:,
          request_options: {}
        )
        end

        # Verifies ownership of the provided phone numbers and returns a mapping of
        # numbers to their IDs, plus a list of numbers not found in the account.
        sig do
          params(
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse)
        end
        def verify_ownership(
          # Array of phone numbers to verify ownership for
          phone_numbers:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
