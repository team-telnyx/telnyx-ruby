# typed: strong

module Telnyx
  module Resources
    class ManagedAccounts
      class Actions
        # Disables a managed account, forbidding it to use Telnyx services, including
        # sending or receiving phone calls and SMS messages. Ongoing phone calls will not
        # be affected. The managed account and its sub-users will no longer be able to log
        # in via the mission control portal.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ManagedAccounts::ActionDisableResponse)
        end
        def disable(
          # Managed Account User ID
          id,
          request_options: {}
        )
        end

        # Enables a managed account and its sub-users to use Telnyx services.
        sig do
          params(
            id: String,
            reenable_all_connections: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ManagedAccounts::ActionEnableResponse)
        end
        def enable(
          # Managed Account User ID
          id,
          # When true, all connections owned by this managed account will automatically be
          # re-enabled. Note: Any connections that do not pass validations will not be
          # re-enabled.
          reenable_all_connections: nil,
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
end
