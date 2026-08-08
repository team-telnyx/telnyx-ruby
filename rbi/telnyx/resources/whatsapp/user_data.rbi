# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      class UserData
        # Returns the WhatsApp user-data settings associated with the authenticated Telnyx
        # account.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::Whatsapp::UserDataRetrieveResponse
          )
        end
        def retrieve(request_options: {})
        end

        # Updates the supplied WhatsApp user-data settings for the authenticated Telnyx
        # account.
        sig do
          params(
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::UserDataUpdateResponse)
        end
        def update(
          # Failover URL to send Whatsapp signup events
          webhook_failover_url: nil,
          # URL to send Whatsapp signup events
          webhook_url: nil,
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
