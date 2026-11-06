# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserProfile#patch_all
    class UserProfilePatchAllParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute address_1
      #   First line of the profile address.
      #
      #   @return [String, nil]
      optional :address_1, String, nil?: true

      # @!attribute address_2
      #   Second line of the profile address.
      #
      #   @return [String, nil]
      optional :address_2, String, nil?: true

      # @!attribute business_name
      #   Business name associated with the profile.
      #
      #   @return [String, nil]
      optional :business_name, String, nil?: true

      # @!attribute city
      #   City in the profile address.
      #
      #   @return [String, nil]
      optional :city, String, nil?: true

      # @!attribute company_size
      #   Company size reported by the user.
      #
      #   @return [String, nil]
      optional :company_size, String

      # @!attribute country
      #   Country code in the profile address.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute data_locality
      #   Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      #   Arab Emirates), or CAN (Canada). A change is permitted only if data locality has
      #   not previously been changed. A successful change sets data_locality_updated_at
      #   and initializes data_locality_migration_status to not_started.
      #
      #   @return [Symbol, Telnyx::Models::UserProfilePatchAllParams::DataLocality, nil]
      optional :data_locality, enum: -> { Telnyx::UserProfilePatchAllParams::DataLocality }

      # @!attribute default_managed_account_allow_custom_pricing
      #   Default custom-pricing setting for managed accounts.
      #
      #   @return [Boolean, nil]
      optional :default_managed_account_allow_custom_pricing, Telnyx::Internal::Type::Boolean

      # @!attribute default_managed_account_inherit_emergency_terms_of_service
      #   Default emergency terms-of-service inheritance setting for managed accounts,
      #   where supported.
      #
      #   @return [Boolean, nil]
      optional :default_managed_account_inherit_emergency_terms_of_service, Telnyx::Internal::Type::Boolean

      # @!attribute default_managed_account_rollup_billing
      #   Default rollup-billing setting for managed accounts.
      #
      #   @return [Boolean, nil]
      optional :default_managed_account_rollup_billing, Telnyx::Internal::Type::Boolean

      # @!attribute default_notify_manager_account
      #   Default setting for notifying the manager account.
      #
      #   @return [Boolean, nil]
      optional :default_notify_manager_account, Telnyx::Internal::Type::Boolean

      # @!attribute default_numbers_external_pin
      #   Default alphanumeric external PIN for phone numbers.
      #
      #   @return [String, nil]
      optional :default_numbers_external_pin, String

      # @!attribute first_name
      #   The user's first name.
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute got_free_number_at_signup
      #   Whether the user received a free number at signup.
      #
      #   @return [Boolean, nil]
      optional :got_free_number_at_signup, Telnyx::Internal::Type::Boolean

      # @!attribute last_name
      #   The user's last name.
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute low_balance_notification_frequency
      #   Low-balance notification frequency. Organization sub-users cannot set a non-null
      #   frequency. The resulting profile must have both a threshold and frequency, or
      #   neither.
      #
      #   @return [Integer, Telnyx::Models::UserProfilePatchAllParams::LowBalanceNotificationFrequency, nil]
      optional :low_balance_notification_frequency,
               enum: -> { Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency },
               nil?: true

      # @!attribute low_balance_threshold_amount
      #   Low-balance notification threshold in the billing currency. The resulting
      #   profile must have both a threshold and notification frequency, or neither.
      #
      #   @return [Float, nil]
      optional :low_balance_threshold_amount, Float, nil?: true

      # @!attribute notify_on_invoice_available
      #   Whether to notify the user when an invoice is available.
      #
      #   @return [Boolean, nil]
      optional :notify_on_invoice_available, Telnyx::Internal::Type::Boolean

      # @!attribute notify_on_invoice_payment
      #   Whether to notify the user when an invoice is paid.
      #
      #   @return [Boolean, nil]
      optional :notify_on_invoice_payment, Telnyx::Internal::Type::Boolean

      # @!attribute npac_user
      #   Whether the user is an NPAC user.
      #
      #   @return [Boolean, nil]
      optional :npac_user, Telnyx::Internal::Type::Boolean

      # @!attribute onboarding_build_method
      #   Build methods reported during onboarding.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_build_method, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_industries
      #   Industries reported during onboarding.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_industries, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_monthly_budget
      #   Monthly budget ranges reported during onboarding.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_monthly_budget, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_product_interest
      #   Products of interest reported during onboarding.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_product_interest, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_project_types
      #   Onboarding project types.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_project_types, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_reasons_for_consideration
      #   Reasons for considering Telnyx.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_reasons_for_consideration, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_referrer
      #   Referral sources reported during onboarding.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_referrer, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute onboarding_use_cases_other
      #   Other onboarding use cases.
      #
      #   @return [Array<String>, nil]
      optional :onboarding_use_cases_other, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute phone_number
      #   Contact phone number associated with the profile.
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute port_out_pin_validation
      #   Whether port-out PIN validation is enabled.
      #
      #   @return [Boolean, nil]
      optional :port_out_pin_validation, Telnyx::Internal::Type::Boolean

      # @!attribute primary_use_case
      #   Primary use case for the account.
      #
      #   @return [String, nil]
      optional :primary_use_case, String

      # @!attribute role
      #   The user's role.
      #
      #   @return [String, nil]
      optional :role, String

      # @!attribute state
      #   State or region in the profile address.
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!attribute ui_theme
      #   User interface theme: 0 for dark or 1 for light.
      #
      #   @return [Integer, Telnyx::Models::UserProfilePatchAllParams::UiTheme, nil]
      optional :ui_theme, enum: -> { Telnyx::UserProfilePatchAllParams::UiTheme }

      # @!attribute use_cases
      #   Use cases reported by the user.
      #
      #   @return [Array<String>, nil]
      optional :use_cases, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute user_subscription_opt_in
      #   Whether the user opts in to subscriptions.
      #
      #   @return [Boolean, nil]
      optional :user_subscription_opt_in, Telnyx::Internal::Type::Boolean

      # @!attribute zip
      #   Postal code in the profile address.
      #
      #   @return [String, nil]
      optional :zip, String, nil?: true

      # @!method initialize(address_1: nil, address_2: nil, business_name: nil, city: nil, company_size: nil, country: nil, data_locality: nil, default_managed_account_allow_custom_pricing: nil, default_managed_account_inherit_emergency_terms_of_service: nil, default_managed_account_rollup_billing: nil, default_notify_manager_account: nil, default_numbers_external_pin: nil, first_name: nil, got_free_number_at_signup: nil, last_name: nil, low_balance_notification_frequency: nil, low_balance_threshold_amount: nil, notify_on_invoice_available: nil, notify_on_invoice_payment: nil, npac_user: nil, onboarding_build_method: nil, onboarding_industries: nil, onboarding_monthly_budget: nil, onboarding_product_interest: nil, onboarding_project_types: nil, onboarding_reasons_for_consideration: nil, onboarding_referrer: nil, onboarding_use_cases_other: nil, phone_number: nil, port_out_pin_validation: nil, primary_use_case: nil, role: nil, state: nil, ui_theme: nil, use_cases: nil, user_subscription_opt_in: nil, zip: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserProfilePatchAllParams} for more details.
      #
      #   @param address_1 [String, nil] First line of the profile address.
      #
      #   @param address_2 [String, nil] Second line of the profile address.
      #
      #   @param business_name [String, nil] Business name associated with the profile.
      #
      #   @param city [String, nil] City in the profile address.
      #
      #   @param company_size [String] Company size reported by the user.
      #
      #   @param country [String, nil] Country code in the profile address.
      #
      #   @param data_locality [Symbol, Telnyx::Models::UserProfilePatchAllParams::DataLocality] Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      #
      #   @param default_managed_account_allow_custom_pricing [Boolean] Default custom-pricing setting for managed accounts.
      #
      #   @param default_managed_account_inherit_emergency_terms_of_service [Boolean] Default emergency terms-of-service inheritance setting for managed accounts, whe
      #
      #   @param default_managed_account_rollup_billing [Boolean] Default rollup-billing setting for managed accounts.
      #
      #   @param default_notify_manager_account [Boolean] Default setting for notifying the manager account.
      #
      #   @param default_numbers_external_pin [String] Default alphanumeric external PIN for phone numbers.
      #
      #   @param first_name [String, nil] The user's first name.
      #
      #   @param got_free_number_at_signup [Boolean] Whether the user received a free number at signup.
      #
      #   @param last_name [String, nil] The user's last name.
      #
      #   @param low_balance_notification_frequency [Integer, Telnyx::Models::UserProfilePatchAllParams::LowBalanceNotificationFrequency, nil] Low-balance notification frequency. Organization sub-users cannot set a non-null
      #
      #   @param low_balance_threshold_amount [Float, nil] Low-balance notification threshold in the billing currency. The resulting profil
      #
      #   @param notify_on_invoice_available [Boolean] Whether to notify the user when an invoice is available.
      #
      #   @param notify_on_invoice_payment [Boolean] Whether to notify the user when an invoice is paid.
      #
      #   @param npac_user [Boolean] Whether the user is an NPAC user.
      #
      #   @param onboarding_build_method [Array<String>] Build methods reported during onboarding.
      #
      #   @param onboarding_industries [Array<String>] Industries reported during onboarding.
      #
      #   @param onboarding_monthly_budget [Array<String>] Monthly budget ranges reported during onboarding.
      #
      #   @param onboarding_product_interest [Array<String>] Products of interest reported during onboarding.
      #
      #   @param onboarding_project_types [Array<String>] Onboarding project types.
      #
      #   @param onboarding_reasons_for_consideration [Array<String>] Reasons for considering Telnyx.
      #
      #   @param onboarding_referrer [Array<String>] Referral sources reported during onboarding.
      #
      #   @param onboarding_use_cases_other [Array<String>] Other onboarding use cases.
      #
      #   @param phone_number [String, nil] Contact phone number associated with the profile.
      #
      #   @param port_out_pin_validation [Boolean] Whether port-out PIN validation is enabled.
      #
      #   @param primary_use_case [String] Primary use case for the account.
      #
      #   @param role [String] The user's role.
      #
      #   @param state [String, nil] State or region in the profile address.
      #
      #   @param ui_theme [Integer, Telnyx::Models::UserProfilePatchAllParams::UiTheme] User interface theme: 0 for dark or 1 for light.
      #
      #   @param use_cases [Array<String>] Use cases reported by the user.
      #
      #   @param user_subscription_opt_in [Boolean] Whether the user opts in to subscriptions.
      #
      #   @param zip [String, nil] Postal code in the profile address.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      # Arab Emirates), or CAN (Canada). A change is permitted only if data locality has
      # not previously been changed. A successful change sets data_locality_updated_at
      # and initializes data_locality_migration_status to not_started.
      module DataLocality
        extend Telnyx::Internal::Type::Enum

        USA = :USA
        DEU = :DEU
        AUS = :AUS
        UAE = :UAE
        CAN = :CAN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Low-balance notification frequency. Organization sub-users cannot set a non-null
      # frequency. The resulting profile must have both a threshold and frequency, or
      # neither.
      module LowBalanceNotificationFrequency
        extend Telnyx::Internal::Type::Enum

        FREQUENCY_2 = 2
        FREQUENCY_4 = 4
        FREQUENCY_12 = 12
        FREQUENCY_24 = 24

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # User interface theme: 0 for dark or 1 for light.
      module UiTheme
        extend Telnyx::Internal::Type::Enum

        DARK = 0
        LIGHT = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
