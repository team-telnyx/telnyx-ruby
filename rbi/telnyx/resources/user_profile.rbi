# typed: strong

module Telnyx
  module Resources
    # Read and update the authenticated user's profile and data locality.
    class UserProfile
      # Retrieve the authenticated user's profile, including data locality and migration
      # status.
      #
      # **Beta:** this API should be considered a beta integration target because it may
      # change if user account settings require changes
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::UserProfileListResponse
        )
      end
      def list(request_options: {})
      end

      # Update the authenticated user's profile using top-level JSON fields. Returns the
      # updated profile.
      #
      # **Beta:** this API should be considered a beta integration target because it may
      # change if user account settings require changes
      sig do
        params(
          address_1: T.nilable(String),
          address_2: T.nilable(String),
          business_name: T.nilable(String),
          city: T.nilable(String),
          company_size: String,
          country: T.nilable(String),
          data_locality:
            Telnyx::UserProfilePatchAllParams::DataLocality::OrSymbol,
          default_managed_account_allow_custom_pricing: T::Boolean,
          default_managed_account_inherit_emergency_terms_of_service:
            T::Boolean,
          default_managed_account_rollup_billing: T::Boolean,
          default_notify_manager_account: T::Boolean,
          default_numbers_external_pin: String,
          first_name: T.nilable(String),
          got_free_number_at_signup: T::Boolean,
          last_name: T.nilable(String),
          low_balance_notification_frequency:
            T.nilable(
              Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::OrInteger
            ),
          low_balance_threshold_amount: T.nilable(Float),
          notify_on_invoice_available: T::Boolean,
          notify_on_invoice_payment: T::Boolean,
          npac_user: T::Boolean,
          onboarding_build_method: T::Array[String],
          onboarding_industries: T::Array[String],
          onboarding_monthly_budget: T::Array[String],
          onboarding_product_interest: T::Array[String],
          onboarding_project_types: T::Array[String],
          onboarding_reasons_for_consideration: T::Array[String],
          onboarding_referrer: T::Array[String],
          onboarding_use_cases_other: T::Array[String],
          phone_number: T.nilable(String),
          port_out_pin_validation: T::Boolean,
          primary_use_case: String,
          role: String,
          state: T.nilable(String),
          ui_theme: Telnyx::UserProfilePatchAllParams::UiTheme::OrInteger,
          use_cases: T::Array[String],
          user_subscription_opt_in: T::Boolean,
          zip: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UserProfilePatchAllResponse)
      end
      def patch_all(
        # First line of the profile address.
        address_1: nil,
        # Second line of the profile address.
        address_2: nil,
        # Business name associated with the profile.
        business_name: nil,
        # City in the profile address.
        city: nil,
        # Company size reported by the user.
        company_size: nil,
        # Country code in the profile address.
        country: nil,
        # Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
        # Arab Emirates), or CAN (Canada). A change is permitted only if data locality has
        # not previously been changed. A successful change sets data_locality_updated_at
        # and initializes data_locality_migration_status to not_started.
        data_locality: nil,
        # Default custom-pricing setting for managed accounts.
        default_managed_account_allow_custom_pricing: nil,
        # Default emergency terms-of-service inheritance setting for managed accounts,
        # where supported.
        default_managed_account_inherit_emergency_terms_of_service: nil,
        # Default rollup-billing setting for managed accounts.
        default_managed_account_rollup_billing: nil,
        # Default setting for notifying the manager account.
        default_notify_manager_account: nil,
        # Default alphanumeric external PIN for phone numbers.
        default_numbers_external_pin: nil,
        # The user's first name.
        first_name: nil,
        # Whether the user received a free number at signup.
        got_free_number_at_signup: nil,
        # The user's last name.
        last_name: nil,
        # Low-balance notification frequency. Organization sub-users cannot set a non-null
        # frequency. The resulting profile must have both a threshold and frequency, or
        # neither.
        low_balance_notification_frequency: nil,
        # Low-balance notification threshold in the billing currency. The resulting
        # profile must have both a threshold and notification frequency, or neither.
        low_balance_threshold_amount: nil,
        # Whether to notify the user when an invoice is available.
        notify_on_invoice_available: nil,
        # Whether to notify the user when an invoice is paid.
        notify_on_invoice_payment: nil,
        # Whether the user is an NPAC user.
        npac_user: nil,
        # Build methods reported during onboarding.
        onboarding_build_method: nil,
        # Industries reported during onboarding.
        onboarding_industries: nil,
        # Monthly budget ranges reported during onboarding.
        onboarding_monthly_budget: nil,
        # Products of interest reported during onboarding.
        onboarding_product_interest: nil,
        # Onboarding project types.
        onboarding_project_types: nil,
        # Reasons for considering Telnyx.
        onboarding_reasons_for_consideration: nil,
        # Referral sources reported during onboarding.
        onboarding_referrer: nil,
        # Other onboarding use cases.
        onboarding_use_cases_other: nil,
        # Contact phone number associated with the profile.
        phone_number: nil,
        # Whether port-out PIN validation is enabled.
        port_out_pin_validation: nil,
        # Primary use case for the account.
        primary_use_case: nil,
        # The user's role.
        role: nil,
        # State or region in the profile address.
        state: nil,
        # User interface theme: 0 for dark or 1 for light.
        ui_theme: nil,
        # Use cases reported by the user.
        use_cases: nil,
        # Whether the user opts in to subscriptions.
        user_subscription_opt_in: nil,
        # Postal code in the profile address.
        zip: nil,
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
