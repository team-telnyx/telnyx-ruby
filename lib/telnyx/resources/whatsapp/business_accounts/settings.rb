# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class BusinessAccounts
        # Manage Whatsapp business accounts
        class Settings
          # Get WABA settings
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String] Whatsapp Business Account ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse]
          #
          # @see Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["v2/whatsapp/business_accounts/%1$s/settings", id],
              model: Telnyx::Models::Whatsapp::BusinessAccounts::SettingRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Update WABA settings
          #
          # @overload update(id, name: nil, timezone: nil, webhook_enabled: nil, webhook_events: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
          #
          # @param id [String] Whatsapp Business Account ID
          #
          # @param name [String]
          #
          # @param timezone [String] IANA timezone identifier
          #
          # @param webhook_enabled [Boolean] Enable/disable receiving Whatsapp events
          #
          # @param webhook_events [Array<String>]
          #
          # @param webhook_failover_url [String] Failover URL to send Whatsapp events
          #
          # @param webhook_url [String] URL to send Whatsapp events
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse]
          #
          # @see Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateParams
          def update(id, params = {})
            parsed, options = Telnyx::Whatsapp::BusinessAccounts::SettingUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["v2/whatsapp/business_accounts/%1$s/settings", id],
              body: parsed,
              model: Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse,
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
end
