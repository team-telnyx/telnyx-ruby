# typed: strong

module Telnyx
  module Models
    class ManagedAccountCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ManagedAccountCreateParams, Telnyx::Internal::AnyHash)
        end

      # The name of the business for which the new managed account is being created,
      # that will be used as the managed accounts's organization's name.
      sig { returns(String) }
      attr_accessor :business_name

      # The email address for the managed account. If not provided, the email address
      # will be generated based on the email address of the manager account.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Boolean value that indicates if the managed account is able to have custom
      # pricing set for it or not. If false, uses the pricing of the manager account.
      # Defaults to false. This value may be changed after creation, but there may be
      # time lag between when the value is changed and pricing changes take effect.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :managed_account_allow_custom_pricing

      sig { params(managed_account_allow_custom_pricing: T::Boolean).void }
      attr_writer :managed_account_allow_custom_pricing

      # Password for the managed account. If a password is not supplied, the account
      # will not be able to be signed into directly. (A password reset may still be
      # performed later to enable sign-in via password.)
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # Boolean value that indicates if the billing information and charges to the
      # managed account "roll up" to the manager account. If true, the managed account
      # will not have its own balance and will use the shared balance with the manager
      # account. This value cannot be changed after account creation without going
      # through Telnyx support as changes require manual updates to the account ledger.
      # Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :rollup_billing

      sig { params(rollup_billing: T::Boolean).void }
      attr_writer :rollup_billing

      sig do
        params(
          business_name: String,
          email: String,
          managed_account_allow_custom_pricing: T::Boolean,
          password: String,
          rollup_billing: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the business for which the new managed account is being created,
        # that will be used as the managed accounts's organization's name.
        business_name:,
        # The email address for the managed account. If not provided, the email address
        # will be generated based on the email address of the manager account.
        email: nil,
        # Boolean value that indicates if the managed account is able to have custom
        # pricing set for it or not. If false, uses the pricing of the manager account.
        # Defaults to false. This value may be changed after creation, but there may be
        # time lag between when the value is changed and pricing changes take effect.
        managed_account_allow_custom_pricing: nil,
        # Password for the managed account. If a password is not supplied, the account
        # will not be able to be signed into directly. (A password reset may still be
        # performed later to enable sign-in via password.)
        password: nil,
        # Boolean value that indicates if the billing information and charges to the
        # managed account "roll up" to the manager account. If true, the managed account
        # will not have its own balance and will use the shared balance with the manager
        # account. This value cannot be changed after account creation without going
        # through Telnyx support as changes require manual updates to the account ledger.
        # Defaults to false.
        rollup_billing: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            business_name: String,
            email: String,
            managed_account_allow_custom_pricing: T::Boolean,
            password: String,
            rollup_billing: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
