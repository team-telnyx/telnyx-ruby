# typed: strong

module Telnyx
  module Models
    class ManagedAccountUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ManagedAccountUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Boolean value that indicates if the managed account is able to have custom
      # pricing set for it or not. If false, uses the pricing of the manager account.
      # Defaults to false. This value may be changed, but there may be time lag between
      # when the value is changed and pricing changes take effect.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :managed_account_allow_custom_pricing

      sig { params(managed_account_allow_custom_pricing: T::Boolean).void }
      attr_writer :managed_account_allow_custom_pricing

      sig do
        params(
          managed_account_allow_custom_pricing: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Boolean value that indicates if the managed account is able to have custom
        # pricing set for it or not. If false, uses the pricing of the manager account.
        # Defaults to false. This value may be changed, but there may be time lag between
        # when the value is changed and pricing changes take effect.
        managed_account_allow_custom_pricing: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            managed_account_allow_custom_pricing: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
