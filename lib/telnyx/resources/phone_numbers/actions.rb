# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusParams} for more details.
        #
        # Change the bundle status for a phone number (set to being in a bundle or remove
        # from a bundle)
        #
        # @overload change_bundle_status(id, bundle_id:, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param bundle_id [String] The new bundle_id setting for the number. If you are assigning the number to a b
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusParams
        def change_bundle_status(id, params)
          parsed, options = Telnyx::PhoneNumbers::ActionChangeBundleStatusParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["phone_numbers/%1$s/actions/bundle_status_change", id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusResponse,
            options: options
          )
        end

        # Enable emergency for a phone number
        #
        # @overload enable_emergency(id, emergency_address_id:, emergency_enabled:, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param emergency_address_id [String] Identifies the address to be used with emergency services.
        #
        # @param emergency_enabled [Boolean] Indicates whether to enable emergency services on this number.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::ActionEnableEmergencyResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::ActionEnableEmergencyParams
        def enable_emergency(id, params)
          parsed, options = Telnyx::PhoneNumbers::ActionEnableEmergencyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["phone_numbers/%1$s/actions/enable_emergency", id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::ActionEnableEmergencyResponse,
            options: options
          )
        end

        # Verifies ownership of the provided phone numbers and returns a mapping of
        # numbers to their IDs, plus a list of numbers not found in the account.
        #
        # @overload verify_ownership(phone_numbers:, request_options: {})
        #
        # @param phone_numbers [Array<String>] Array of phone numbers to verify ownership for
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipParams
        def verify_ownership(params)
          parsed, options = Telnyx::PhoneNumbers::ActionVerifyOwnershipParams.dump_request(params)
          @client.request(
            method: :post,
            path: "phone_numbers/actions/verify_ownership",
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse,
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
