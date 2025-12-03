# frozen_string_literal: true

module Telnyx
  module Resources
    class ManagedAccounts
      # @return [Telnyx::Resources::ManagedAccounts::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ManagedAccountCreateParams} for more details.
      #
      # Create a new managed account owned by the authenticated user. You need to be
      # explictly approved by Telnyx in order to become a manager account.
      #
      # @overload create(business_name:, email: nil, managed_account_allow_custom_pricing: nil, password: nil, rollup_billing: nil, request_options: {})
      #
      # @param business_name [String] The name of the business for which the new managed account is being created, tha
      #
      # @param email [String] The email address for the managed account. If not provided, the email address wi
      #
      # @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
      #
      # @param password [String] Password for the managed account. If a password is not supplied, the account wil
      #
      # @param rollup_billing [Boolean] Boolean value that indicates if the billing information and charges to the manag
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountCreateResponse]
      #
      # @see Telnyx::Models::ManagedAccountCreateParams
      def create(params)
        parsed, options = Telnyx::ManagedAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "managed_accounts",
          body: parsed,
          model: Telnyx::Models::ManagedAccountCreateResponse,
          options: options
        )
      end

      # Retrieves the details of a single managed account.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Managed Account User ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountRetrieveResponse]
      #
      # @see Telnyx::Models::ManagedAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["managed_accounts/%1$s", id],
          model: Telnyx::Models::ManagedAccountRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ManagedAccountUpdateParams} for more details.
      #
      # Update a single managed account.
      #
      # @overload update(id, managed_account_allow_custom_pricing: nil, request_options: {})
      #
      # @param id [String] Managed Account User ID
      #
      # @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountUpdateResponse]
      #
      # @see Telnyx::Models::ManagedAccountUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::ManagedAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["managed_accounts/%1$s", id],
          body: parsed,
          model: Telnyx::Models::ManagedAccountUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ManagedAccountListParams} for more details.
      #
      # Lists the accounts managed by the current user. Users need to be explictly
      # approved by Telnyx in order to become manager accounts.
      #
      # @overload list(filter: nil, include_cancelled_accounts: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::ManagedAccountListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[email]cont
      #
      # @param include_cancelled_accounts [Boolean] Specifies if cancelled accounts should be included in the results.
      #
      # @param page [Telnyx::Models::ManagedAccountListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Symbol, Telnyx::Models::ManagedAccountListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountListResponse]
      #
      # @see Telnyx::Models::ManagedAccountListParams
      def list(params = {})
        parsed, options = Telnyx::ManagedAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "managed_accounts",
          query: parsed,
          model: Telnyx::Models::ManagedAccountListResponse,
          options: options
        )
      end

      # Display information about allocatable global outbound channels for the current
      # user. Only usable by account managers.
      #
      # @overload get_allocatable_global_outbound_channels(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse]
      #
      # @see Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsParams
      def get_allocatable_global_outbound_channels(params = {})
        @client.request(
          method: :get,
          path: "managed_accounts/allocatable_global_outbound_channels",
          model: Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitParams} for more details.
      #
      # Update the amount of allocatable global outbound channels allocated to a
      # specific managed account.
      #
      # @overload update_global_channel_limit(id, channel_limit: nil, request_options: {})
      #
      # @param id [String] Managed Account User ID
      #
      # @param channel_limit [Integer] Integer value that indicates the number of allocatable global outbound channels
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse]
      #
      # @see Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitParams
      def update_global_channel_limit(id, params = {})
        parsed, options = Telnyx::ManagedAccountUpdateGlobalChannelLimitParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["managed_accounts/%1$s/update_global_channel_limit", id],
          body: parsed,
          model: Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::ManagedAccounts::Actions.new(client: client)
      end
    end
  end
end
