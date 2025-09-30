# frozen_string_literal: true

module Telnyx
  module Models
    class ManagedAccount < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the managed account.
      #
      #   @return [String]
      required :id, String

      # @!attribute api_key
      #   The managed account's V2 API access key
      #
      #   @return [String]
      required :api_key, String

      # @!attribute api_token
      #   The managed account's V1 API token
      #
      #   @return [String]
      required :api_token, String

      # @!attribute api_user
      #   The manager account's email, which serves as the V1 API user identifier
      #
      #   @return [String]
      required :api_user, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute email
      #   The managed account's email.
      #
      #   @return [String]
      required :email, String

      # @!attribute manager_account_id
      #   The ID of the manager account associated with the managed account.
      #
      #   @return [String]
      required :manager_account_id, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::ManagedAccount::RecordType]
      required :record_type, enum: -> { Telnyx::ManagedAccount::RecordType }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String]
      required :updated_at, String

      # @!attribute balance
      #
      #   @return [Telnyx::Models::ManagedAccountBalance, nil]
      optional :balance, -> { Telnyx::ManagedAccountBalance }

      # @!attribute managed_account_allow_custom_pricing
      #   Boolean value that indicates if the managed account is able to have custom
      #   pricing set for it or not. If false, uses the pricing of the manager account.
      #   Defaults to false. There may be time lag between when the value is changed and
      #   pricing changes take effect.
      #
      #   @return [Boolean, nil]
      optional :managed_account_allow_custom_pricing, Telnyx::Internal::Type::Boolean

      # @!attribute organization_name
      #   The organization the managed account is associated with.
      #
      #   @return [String, nil]
      optional :organization_name, String

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

      # @!method initialize(id:, api_key:, api_token:, api_user:, created_at:, email:, manager_account_id:, record_type:, updated_at:, balance: nil, managed_account_allow_custom_pricing: nil, organization_name: nil, rollup_billing: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ManagedAccount} for more details.
      #
      #   @param id [String] Uniquely identifies the managed account.
      #
      #   @param api_key [String] The managed account's V2 API access key
      #
      #   @param api_token [String] The managed account's V1 API token
      #
      #   @param api_user [String] The manager account's email, which serves as the V1 API user identifier
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param email [String] The managed account's email.
      #
      #   @param manager_account_id [String] The ID of the manager account associated with the managed account.
      #
      #   @param record_type [Symbol, Telnyx::Models::ManagedAccount::RecordType] Identifies the type of the resource.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @param balance [Telnyx::Models::ManagedAccountBalance]
      #
      #   @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
      #
      #   @param organization_name [String] The organization the managed account is associated with.
      #
      #   @param rollup_billing [Boolean] Boolean value that indicates if the billing information and charges to the manag

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::ManagedAccount#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        MANAGED_ACCOUNT = :managed_account

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
