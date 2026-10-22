# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
      # Send RCS messages
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
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["messages/rcs/deeplinks/%1$s", agent_id],
            query: query,
            model: Telnyx::Models::Messages::RcGenerateDeeplinkResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Messages::RcSendParams} for more details.
        #
        # Queues an outbound RCS message through the selected RCS agent. Check recipient
        # capabilities before sending features that require RCS support.
        #
        # @overload send_(agent_id:, agent_message:, messaging_profile_id:, to:, mms_fallback: nil, sms_fallback: nil, type: nil, webhook_url: nil, idempotency_key: nil, request_options: {})
        #
        # @param agent_id [String] Body param: RCS Agent ID
        #
        # @param agent_message [Telnyx::Models::RcsAgentMessage] Body param
        #
        # @param messaging_profile_id [String] Body param: A valid messaging profile ID
        #
        # @param to [String] Body param: Phone number in +E.164 format
        #
        # @param mms_fallback [Telnyx::Models::Messages::RcSendParams::MmsFallback] Body param
        #
        # @param sms_fallback [Telnyx::Models::Messages::RcSendParams::SMSFallback] Body param
        #
        # @param type [Symbol, Telnyx::Models::Messages::RcSendParams::Type] Body param: Message type - must be set to "RCS"
        #
        # @param webhook_url [String] Body param: The URL where webhooks related to this message will be sent.
        #
        # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messages::RcSendResponse]
        #
        # @see Telnyx::Models::Messages::RcSendParams
        def send_(params)
          parsed, options = Telnyx::Messages::RcSendParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "messages/rcs",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
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
