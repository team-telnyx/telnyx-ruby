# typed: strong

module Telnyx
  module Models
    class UserProfilePatchAllParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UserProfilePatchAllParams, Telnyx::Internal::AnyHash)
        end

      # First line of the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_1

      # Second line of the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_2

      # Business name associated with the profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      # City in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :city

      # Company size reported by the user.
      sig { returns(T.nilable(String)) }
      attr_reader :company_size

      sig { params(company_size: String).void }
      attr_writer :company_size

      # Country code in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      # Arab Emirates), or CAN (Canada). A change is permitted only if data locality has
      # not previously been changed. A successful change sets data_locality_updated_at
      # and initializes data_locality_migration_status to not_started.
      sig do
        returns(
          T.nilable(Telnyx::UserProfilePatchAllParams::DataLocality::OrSymbol)
        )
      end
      attr_reader :data_locality

      sig do
        params(
          data_locality:
            Telnyx::UserProfilePatchAllParams::DataLocality::OrSymbol
        ).void
      end
      attr_writer :data_locality

      # Default custom-pricing setting for managed accounts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_managed_account_allow_custom_pricing

      sig do
        params(default_managed_account_allow_custom_pricing: T::Boolean).void
      end
      attr_writer :default_managed_account_allow_custom_pricing

      # Default emergency terms-of-service inheritance setting for managed accounts,
      # where supported.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_managed_account_inherit_emergency_terms_of_service

      sig do
        params(
          default_managed_account_inherit_emergency_terms_of_service: T::Boolean
        ).void
      end
      attr_writer :default_managed_account_inherit_emergency_terms_of_service

      # Default rollup-billing setting for managed accounts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_managed_account_rollup_billing

      sig { params(default_managed_account_rollup_billing: T::Boolean).void }
      attr_writer :default_managed_account_rollup_billing

      # Default setting for notifying the manager account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_notify_manager_account

      sig { params(default_notify_manager_account: T::Boolean).void }
      attr_writer :default_notify_manager_account

      # Default alphanumeric external PIN for phone numbers.
      sig { returns(T.nilable(String)) }
      attr_reader :default_numbers_external_pin

      sig { params(default_numbers_external_pin: String).void }
      attr_writer :default_numbers_external_pin

      # The user's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # Whether the user received a free number at signup.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :got_free_number_at_signup

      sig { params(got_free_number_at_signup: T::Boolean).void }
      attr_writer :got_free_number_at_signup

      # The user's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # Low-balance notification frequency. Organization sub-users cannot set a non-null
      # frequency. The resulting profile must have both a threshold and frequency, or
      # neither.
      sig do
        returns(
          T.nilable(
            Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::OrInteger
          )
        )
      end
      attr_accessor :low_balance_notification_frequency

      # Low-balance notification threshold in the billing currency. The resulting
      # profile must have both a threshold and notification frequency, or neither.
      sig { returns(T.nilable(Float)) }
      attr_accessor :low_balance_threshold_amount

      # Whether to notify the user when an invoice is available.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :notify_on_invoice_available

      sig { params(notify_on_invoice_available: T::Boolean).void }
      attr_writer :notify_on_invoice_available

      # Whether to notify the user when an invoice is paid.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :notify_on_invoice_payment

      sig { params(notify_on_invoice_payment: T::Boolean).void }
      attr_writer :notify_on_invoice_payment

      # Whether the user is an NPAC user.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :npac_user

      sig { params(npac_user: T::Boolean).void }
      attr_writer :npac_user

      # Build methods reported during onboarding.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_build_method

      sig { params(onboarding_build_method: T::Array[String]).void }
      attr_writer :onboarding_build_method

      # Industries reported during onboarding.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_industries

      sig { params(onboarding_industries: T::Array[String]).void }
      attr_writer :onboarding_industries

      # Monthly budget ranges reported during onboarding.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_monthly_budget

      sig { params(onboarding_monthly_budget: T::Array[String]).void }
      attr_writer :onboarding_monthly_budget

      # Products of interest reported during onboarding.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_product_interest

      sig { params(onboarding_product_interest: T::Array[String]).void }
      attr_writer :onboarding_product_interest

      # Onboarding project types.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_project_types

      sig { params(onboarding_project_types: T::Array[String]).void }
      attr_writer :onboarding_project_types

      # Reasons for considering Telnyx.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_reasons_for_consideration

      sig do
        params(onboarding_reasons_for_consideration: T::Array[String]).void
      end
      attr_writer :onboarding_reasons_for_consideration

      # Referral sources reported during onboarding.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_referrer

      sig { params(onboarding_referrer: T::Array[String]).void }
      attr_writer :onboarding_referrer

      # Other onboarding use cases.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :onboarding_use_cases_other

      sig { params(onboarding_use_cases_other: T::Array[String]).void }
      attr_writer :onboarding_use_cases_other

      # Contact phone number associated with the profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # Whether port-out PIN validation is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :port_out_pin_validation

      sig { params(port_out_pin_validation: T::Boolean).void }
      attr_writer :port_out_pin_validation

      # Primary use case for the account.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_use_case

      sig { params(primary_use_case: String).void }
      attr_writer :primary_use_case

      # The user's role.
      sig { returns(T.nilable(String)) }
      attr_reader :role

      sig { params(role: String).void }
      attr_writer :role

      # State or region in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      # User interface theme: 0 for dark or 1 for light.
      sig do
        returns(
          T.nilable(Telnyx::UserProfilePatchAllParams::UiTheme::OrInteger)
        )
      end
      attr_reader :ui_theme

      sig do
        params(
          ui_theme: Telnyx::UserProfilePatchAllParams::UiTheme::OrInteger
        ).void
      end
      attr_writer :ui_theme

      # Use cases reported by the user.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :use_cases

      sig { params(use_cases: T::Array[String]).void }
      attr_writer :use_cases

      # Whether the user opts in to subscriptions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :user_subscription_opt_in

      sig { params(user_subscription_opt_in: T::Boolean).void }
      attr_writer :user_subscription_opt_in

      # Postal code in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :zip

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Data locality: USA (United States), DEU (Germany), AUS (Australia), UAE (United
      # Arab Emirates), or CAN (Canada). A change is permitted only if data locality has
      # not previously been changed. A successful change sets data_locality_updated_at
      # and initializes data_locality_migration_status to not_started.
      module DataLocality
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UserProfilePatchAllParams::DataLocality)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
          )
        UAE =
          T.let(
            :UAE,
            Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
          )
        CAN =
          T.let(
            :CAN,
            Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UserProfilePatchAllParams::DataLocality::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Low-balance notification frequency. Organization sub-users cannot set a non-null
      # frequency. The resulting profile must have both a threshold and frequency, or
      # neither.
      module LowBalanceNotificationFrequency
        extend Telnyx::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(
              Integer,
              Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency
            )
          end
        OrInteger = T.type_alias { Integer }

        FREQUENCY_2 =
          T.let(
            2,
            Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::TaggedInteger
          )
        FREQUENCY_4 =
          T.let(
            4,
            Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::TaggedInteger
          )
        FREQUENCY_12 =
          T.let(
            12,
            Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::TaggedInteger
          )
        FREQUENCY_24 =
          T.let(
            24,
            Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UserProfilePatchAllParams::LowBalanceNotificationFrequency::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # User interface theme: 0 for dark or 1 for light.
      module UiTheme
        extend Telnyx::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Telnyx::UserProfilePatchAllParams::UiTheme)
          end
        OrInteger = T.type_alias { Integer }

        DARK =
          T.let(0, Telnyx::UserProfilePatchAllParams::UiTheme::TaggedInteger)
        LIGHT =
          T.let(1, Telnyx::UserProfilePatchAllParams::UiTheme::TaggedInteger)

        sig do
          override.returns(
            T::Array[Telnyx::UserProfilePatchAllParams::UiTheme::TaggedInteger]
          )
        end
        def self.values
        end
      end
    end
  end
end
