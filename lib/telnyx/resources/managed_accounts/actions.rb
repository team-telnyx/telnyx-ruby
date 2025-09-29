# frozen_string_literal: true

module Telnyx
  module Resources
    class ManagedAccounts
      class Actions
        # Disables a managed account, forbidding it to use Telnyx services, including
        # sending or receiving phone calls and SMS messages. Ongoing phone calls will not
        # be affected. The managed account and its sub-users will no longer be able to log
        # in via the mission control portal.
        #
        # @overload disable(id, request_options: {})
        #
        # @param id [String] Managed Account User ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ManagedAccounts::ActionDisableResponse]
        #
        # @see Telnyx::Models::ManagedAccounts::ActionDisableParams
        def disable(id, params = {})
          @client.request(
            method: :post,
            path: ["managed_accounts/%1$s/actions/disable", id],
            model: Telnyx::Models::ManagedAccounts::ActionDisableResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ManagedAccounts::ActionEnableParams} for more details.
        #
        # Enables a managed account and its sub-users to use Telnyx services.
        #
        # @overload enable(id, reenable_all_connections: nil, request_options: {})
        #
        # @param id [String] Managed Account User ID
        #
        # @param reenable_all_connections [Boolean] When true, all connections owned by this managed account will automatically be r
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ManagedAccounts::ActionEnableResponse]
        #
        # @see Telnyx::Models::ManagedAccounts::ActionEnableParams
        def enable(id, params = {})
          parsed, options = Telnyx::ManagedAccounts::ActionEnableParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["managed_accounts/%1$s/actions/enable", id],
            body: parsed,
            model: Telnyx::Models::ManagedAccounts::ActionEnableResponse,
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
end
