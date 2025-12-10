# typed: strong

module Telnyx
  module Resources
    class AuthenticationProviders
      # Creates an authentication provider.
      sig do
        params(
          name: String,
          settings: Telnyx::Settings::OrHash,
          short_name: String,
          active: T::Boolean,
          settings_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuthenticationProviderCreateResponse)
      end
      def create(
        # The name associated with the authentication provider.
        name:,
        # The settings associated with the authentication provider.
        settings:,
        # The short name associated with the authentication provider. This must be unique
        # and URL-friendly, as it's going to be part of the login URL.
        short_name:,
        # The active status of the authentication provider
        active: nil,
        # The URL for the identity provider metadata file to populate the settings
        # automatically. If the settings attribute is provided, that will be used instead.
        settings_url: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing authentication provider.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuthenticationProviderRetrieveResponse)
      end
      def retrieve(
        # authentication provider ID
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing authentication provider.
      sig do
        params(
          id: String,
          active: T::Boolean,
          name: String,
          settings: Telnyx::Settings::OrHash,
          settings_url: String,
          short_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuthenticationProviderUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # The active status of the authentication provider
        active: nil,
        # The name associated with the authentication provider.
        name: nil,
        # The settings associated with the authentication provider.
        settings: nil,
        # The URL for the identity provider metadata file to populate the settings
        # automatically. If the settings attribute is provided, that will be used instead.
        settings_url: nil,
        # The short name associated with the authentication provider. This must be unique
        # and URL-friendly, as it's going to be part of the login URL.
        short_name: nil,
        request_options: {}
      )
      end

      # Returns a list of your SSO authentication providers.
      sig do
        params(
          page: Telnyx::AuthenticationProviderListParams::Page::OrHash,
          sort: Telnyx::AuthenticationProviderListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuthenticationProviderListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code>-</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>name</code>: sorts the result by the
        #     <code>name</code> field in ascending order.
        #   </li>
        #   <li>
        #     <code>-name</code>: sorts the result by the
        #     <code>name</code> field in descending order.
        #   </li>
        # </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an existing authentication provider.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AuthenticationProviderDeleteResponse)
      end
      def delete(
        # authentication provider ID
        id,
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
