# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      class UserData
        # Fetch Whatsapp user data
        #
        # @overload retrieve(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::UserDataRetrieveResponse]
        #
        # @see Telnyx::Models::Whatsapp::UserDataRetrieveParams
        def retrieve(params = {})
          @client.request(
            method: :get,
            path: "v2/whatsapp/user_data",
            model: Telnyx::Models::Whatsapp::UserDataRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update Whatsapp user data
        #
        # @overload update(webhook_failover_url: nil, webhook_url: nil, request_options: {})
        #
        # @param webhook_failover_url [String] Failover URL to send Whatsapp signup events
        #
        # @param webhook_url [String] URL to send Whatsapp signup events
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::UserDataUpdateResponse]
        #
        # @see Telnyx::Models::Whatsapp::UserDataUpdateParams
        def update(params = {})
          parsed, options = Telnyx::Whatsapp::UserDataUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: "v2/whatsapp/user_data",
            body: parsed,
            model: Telnyx::Models::Whatsapp::UserDataUpdateResponse,
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
