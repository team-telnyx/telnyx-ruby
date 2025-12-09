# typed: strong

module Telnyx
  module Resources
    class ManagedAccounts
      sig { returns(Telnyx::Resources::ManagedAccounts::Actions) }
      attr_reader :actions

      # Create a new managed account owned by the authenticated user. You need to be
      # explictly approved by Telnyx in order to become a manager account.
      sig do
        params(
          business_name: String,
          email: String,
          managed_account_allow_custom_pricing: T::Boolean,
          password: String,
          rollup_billing: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ManagedAccountCreateResponse)
      end
      def create(
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

      # Retrieves the details of a single managed account.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ManagedAccountRetrieveResponse)
      end
      def retrieve(
        # Managed Account User ID
        id,
        request_options: {}
      )
      end

      # Update a single managed account.
      sig do
        params(
          id: String,
          managed_account_allow_custom_pricing: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ManagedAccountUpdateResponse)
      end
      def update(
        # Managed Account User ID
        id,
        # Boolean value that indicates if the managed account is able to have custom
        # pricing set for it or not. If false, uses the pricing of the manager account.
        # Defaults to false. This value may be changed, but there may be time lag between
        # when the value is changed and pricing changes take effect.
        managed_account_allow_custom_pricing: nil,
        request_options: {}
      )
      end

      # Lists the accounts managed by the current user. Users need to be explictly
      # approved by Telnyx in order to become manager accounts.
      sig do
        params(
          filter: Telnyx::ManagedAccountListParams::Filter::OrHash,
          include_cancelled_accounts: T::Boolean,
          page: Telnyx::ManagedAccountListParams::Page::OrHash,
          sort: Telnyx::ManagedAccountListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::ManagedAccountListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[email][contains], filter[email][eq], filter[organization_name][contains],
        # filter[organization_name][eq]
        filter: nil,
        # Specifies if cancelled accounts should be included in the results.
        include_cancelled_accounts: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>email</code>: sorts the result by the
        #     <code>email</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-email</code>: sorts the result by the
        #     <code>email</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Display information about allocatable global outbound channels for the current
      # user. Only usable by account managers.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse
        )
      end
      def get_allocatable_global_outbound_channels(request_options: {})
      end

      # Update the amount of allocatable global outbound channels allocated to a
      # specific managed account.
      sig do
        params(
          id: String,
          channel_limit: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse
        )
      end
      def update_global_channel_limit(
        # Managed Account User ID
        id,
        # Integer value that indicates the number of allocatable global outbound channels
        # that should be allocated to the managed account. Must be 0 or more. If the value
        # is 0 then the account will have no usable channels and will not be able to
        # perform outbound calling.
        channel_limit: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
