# frozen_string_literal: true

module Telnyx
  module Models
    module ManagedAccounts
      # @see Telnyx::Resources::ManagedAccounts::Actions#enable
      class ActionEnableParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute reenable_all_connections
        #   When true, all connections owned by this managed account will automatically be
        #   re-enabled. Note: Any connections that do not pass validations will not be
        #   re-enabled.
        #
        #   @return [Boolean, nil]
        optional :reenable_all_connections, Telnyx::Internal::Type::Boolean

        # @!method initialize(reenable_all_connections: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ManagedAccounts::ActionEnableParams} for more details.
        #
        #   @param reenable_all_connections [Boolean] When true, all connections owned by this managed account will automatically be r
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
