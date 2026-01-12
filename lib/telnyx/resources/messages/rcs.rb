# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
      class Rcs
        # Generate a deeplink URL that can be used to start an RCS conversation with a
        # specific agent.
        #
        # @overload generate_deeplink(agent_id, body: nil, phone_number: nil, request_options: {})
        #
        # @param agent_id [String] RCS agent ID
        #
        # @param body [String] Pre-filled message body (URL encoded)
        #
        # @param phone_number [String] Phone number in E164 format (URL encoded)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messages::RcGenerateDeeplinkResponse]
        #
        # @see Telnyx::Models::Messages::RcGenerateDeeplinkParams
        def generate_deeplink(agent_id, params = {})
          parsed, options = Telnyx::Messages::RcGenerateDeeplinkParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["messages/rcs/deeplinks/%1$s", agent_id],
            query: parsed,
            model: Telnyx::Models::Messages::RcGenerateDeeplinkResponse,
            options: options
          )
        end

        # Send an RCS message
        #
        # @overload send_(agent_id:, agent_message:, messaging_profile_id:, to:, mms_fallback: nil, sms_fallback: nil, type: nil, webhook_url: nil, request_options: {})
        #
        # @param agent_id [String] RCS Agent ID
        #
        # @param agent_message [Telnyx::Models::RcsAgentMessage]
        #
        # @param messaging_profile_id [String] A valid messaging profile ID
        #
        # @param to [String] Phone number in +E.164 format
        #
        # @param mms_fallback [Telnyx::Models::Messages::RcSendParams::MmsFallback]
        #
        # @param sms_fallback [Telnyx::Models::Messages::RcSendParams::SMSFallback]
        #
        # @param type [Symbol, Telnyx::Models::Messages::RcSendParams::Type] Message type - must be set to "RCS"
        #
        # @param webhook_url [String] The URL where webhooks related to this message will be sent.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messages::RcSendResponse]
        #
        # @see Telnyx::Models::Messages::RcSendParams
        def send_(params)
          parsed, options = Telnyx::Messages::RcSendParams.dump_request(params)
          @client.request(
            method: :post,
            path: "messages/rcs",
            body: parsed,
            model: Telnyx::Models::Messages::RcSendResponse,
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
