# frozen_string_literal: true

module Telnyx
  module Resources
    # Read and update the authenticated user's profile and data locality.
    class UserProfile
      # Retrieve the authenticated user's profile, including data locality and migration
      # status.
      #
      # **Beta:** this API should be considered a beta integration target because it may
      # change if user account settings require changes
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UserProfileListResponse]
      #
      # @see Telnyx::Models::UserProfileListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "user_profile",
          model: Telnyx::Models::UserProfileListResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::UserProfilePatchAllParams} for more details.
      #
      # Update the authenticated user's profile using top-level JSON fields. Returns the
      # updated profile.
      #
      # **Beta:** this API should be considered a beta integration target because it may
      # change if user account settings require changes
      #
      # @overload patch_all(address_1: nil, address_2: nil, business_name: nil, city: nil, company_size: nil, country: nil, data_locality: nil, default_managed_account_allow_custom_pricing: nil, default_managed_account_inherit_emergency_terms_of_service: nil, default_managed_account_rollup_billing: nil, default_notify_manager_account: nil, default_numbers_external_pin: nil, first_name: nil, got_free_number_at_signup: nil, last_name: nil, low_balance_notification_frequency: nil, low_balance_threshold_amount: nil, notify_on_invoice_available: nil, notify_on_invoice_payment: nil, npac_user: nil, onboarding_build_method: nil, onboarding_industries: nil, onboarding_monthly_budget: nil, onboarding_product_interest: nil, onboarding_project_types: nil, onboarding_reasons_for_consideration: nil, onboarding_referrer: nil, onboarding_use_cases_other: nil, phone_number: nil, port_out_pin_validation: nil, primary_use_case: nil, role: nil, state: nil, ui_theme: nil, use_cases: nil, user_subscription_opt_in: nil, zip: nil, request_options: {})
      #
      # @param address_1 [String, nil] First line of the profile address.
      #
      # @param address_2 [String, nil] Second line of the profile address.
      #
      # @param business_name [String, nil] Business name associated with the profile.
      #
      # @param city [String, nil] City in the profile address.
      #
      # @param company_size [String] Company size reported by the user.
      #
      # @param country [String, nil] Country code in the profile address.
      #
      # @param data_locality [Symbol, Telnyx::Models::UserProfilePatchAllParams::DataLocality] Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      #
      # @param default_managed_account_allow_custom_pricing [Boolean] Default custom-pricing setting for managed accounts.
      #
      # @param default_managed_account_inherit_emergency_terms_of_service [Boolean] Default emergency terms-of-service inheritance setting for managed accounts, whe
      #
      # @param default_managed_account_rollup_billing [Boolean] Default rollup-billing setting for managed accounts.
      #
      # @param default_notify_manager_account [Boolean] Default setting for notifying the manager account.
      #
      # @param default_numbers_external_pin [String] Default alphanumeric external PIN for phone numbers.
      #
      # @param first_name [String, nil] The user's first name.
      #
      # @param got_free_number_at_signup [Boolean] Whether the user received a free number at signup.
      #
      # @param last_name [String, nil] The user's last name.
      #
      # @param low_balance_notification_frequency [Integer, Telnyx::Models::UserProfilePatchAllParams::LowBalanceNotificationFrequency, nil] Low-balance notification frequency. Organization sub-users cannot set a non-null
      #
      # @param low_balance_threshold_amount [Float, nil] Low-balance notification threshold in the billing currency. The resulting profil
      #
      # @param notify_on_invoice_available [Boolean] Whether to notify the user when an invoice is available.
      #
      # @param notify_on_invoice_payment [Boolean] Whether to notify the user when an invoice is paid.
      #
      # @param npac_user [Boolean] Whether the user is an NPAC user.
      #
      # @param onboarding_build_method [Array<String>] Build methods reported during onboarding.
      #
      # @param onboarding_industries [Array<String>] Industries reported during onboarding.
      #
      # @param onboarding_monthly_budget [Array<String>] Monthly budget ranges reported during onboarding.
      #
      # @param onboarding_product_interest [Array<String>] Products of interest reported during onboarding.
      #
      # @param onboarding_project_types [Array<String>] Onboarding project types.
      #
      # @param onboarding_reasons_for_consideration [Array<String>] Reasons for considering Telnyx.
      #
      # @param onboarding_referrer [Array<String>] Referral sources reported during onboarding.
      #
      # @param onboarding_use_cases_other [Array<String>] Other onboarding use cases.
      #
      # @param phone_number [String, nil] Contact phone number associated with the profile.
      #
      # @param port_out_pin_validation [Boolean] Whether port-out PIN validation is enabled.
      #
      # @param primary_use_case [String] Primary use case for the account.
      #
      # @param role [String] The user's role.
      #
      # @param state [String, nil] State or region in the profile address.
      #
      # @param ui_theme [Integer, Telnyx::Models::UserProfilePatchAllParams::UiTheme] User interface theme: 0 for dark or 1 for light.
      #
      # @param use_cases [Array<String>] Use cases reported by the user.
      #
      # @param user_subscription_opt_in [Boolean] Whether the user opts in to subscriptions.
      #
      # @param zip [String, nil] Postal code in the profile address.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::UserProfilePatchAllResponse]
      #
      # @see Telnyx::Models::UserProfilePatchAllParams
      def patch_all(params = {})
        parsed, options = Telnyx::UserProfilePatchAllParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "user_profile",
          body: parsed,
          model: Telnyx::Models::UserProfilePatchAllResponse,
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
