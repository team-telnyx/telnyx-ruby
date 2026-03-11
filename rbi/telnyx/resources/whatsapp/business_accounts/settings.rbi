# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class BusinessAccounts
        # Manage Whatsapp business accounts
        class Settings
          # Get WABA settings
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse
            )
          end
          def retrieve(
            # Whatsapp Business Account ID
            id,
            request_options: {}
          )
          end

          # Update WABA settings
          sig do
            params(
              id: String,
              name: String,
              timezone: String,
              webhook_enabled: T::Boolean,
              webhook_events: T::Array[String],
              webhook_failover_url: String,
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse
            )
          end
          def update(
            # Whatsapp Business Account ID
            id,
            name: nil,
            # IANA timezone identifier
            timezone: nil,
            # Enable/disable receiving Whatsapp events
            webhook_enabled: nil,
            webhook_events: nil,
            # Failover URL to send Whatsapp events
            webhook_failover_url: nil,
            # URL to send Whatsapp events
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
end
