# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#create
    class ManagedAccountCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute business_name
      #   The name of the business for which the new managed account is being created,
      #   that will be used as the managed accounts's organization's name.
      #
      #   @return [String]
      required :business_name, String

      # @!attribute email
      #   The email address for the managed account. If not provided, the email address
      #   will be generated based on the email address of the manager account.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute managed_account_allow_custom_pricing
      #   Boolean value that indicates if the managed account is able to have custom
      #   pricing set for it or not. If false, uses the pricing of the manager account.
      #   Defaults to false. This value may be changed after creation, but there may be
      #   time lag between when the value is changed and pricing changes take effect.
      #
      #   @return [Boolean, nil]
      optional :managed_account_allow_custom_pricing, Telnyx::Internal::Type::Boolean

      # @!attribute password
      #   Password for the managed account. If a password is not supplied, the account
      #   will not be able to be signed into directly. (A password reset may still be
      #   performed later to enable sign-in via password.)
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute rollup_billing
      #   Boolean value that indicates if the billing information and charges to the
      #   managed account "roll up" to the manager account. If true, the managed account
      #   will not have its own balance and will use the shared balance with the manager
      #   account. This value cannot be changed after account creation without going
      #   through Telnyx support as changes require manual updates to the account ledger.
      #   Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :rollup_billing, Telnyx::Internal::Type::Boolean

      # @!method initialize(business_name:, email: nil, managed_account_allow_custom_pricing: nil, password: nil, rollup_billing: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ManagedAccountCreateParams} for more details.
      #
      #   @param business_name [String] The name of the business for which the new managed account is being created, tha
      #
      #   @param email [String] The email address for the managed account. If not provided, the email address wi
      #
      #   @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
      #
      #   @param password [String] Password for the managed account. If a password is not supplied, the account wil
      #
      #   @param rollup_billing [Boolean] Boolean value that indicates if the billing information and charges to the manag
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
