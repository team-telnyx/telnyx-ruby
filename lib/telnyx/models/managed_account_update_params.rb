# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#update
    class ManagedAccountUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute managed_account_allow_custom_pricing
      #   Boolean value that indicates if the managed account is able to have custom
      #   pricing set for it or not. If false, uses the pricing of the manager account.
      #   Defaults to false. This value may be changed, but there may be time lag between
      #   when the value is changed and pricing changes take effect.
      #
      #   @return [Boolean, nil]
      optional :managed_account_allow_custom_pricing, Telnyx::Internal::Type::Boolean

      # @!method initialize(managed_account_allow_custom_pricing: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ManagedAccountUpdateParams} for more details.
      #
      #   @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
