# frozen_string_literal: true

module Telnyx
  module Resources
    class Messsages
      # Send an RCS message
      #
      # @overload rcs(agent_id:, agent_message:, messaging_profile_id:, to:, mms_fallback: nil, sms_fallback: nil, type: nil, webhook_url: nil, request_options: {})
      #
      # @param agent_id [String] RCS Agent ID
      #
      # @param agent_message [Telnyx::Models::RcsAgentMessage]
      #
      # @param messaging_profile_id [String] A valid messaging profile ID
      #
      # @param to [String] Phone number in +E.164 format
      #
      # @param mms_fallback [Telnyx::Models::MesssageRcsParams::MmsFallback]
      #
      # @param sms_fallback [Telnyx::Models::MesssageRcsParams::SMSFallback]
      #
      # @param type [Symbol, Telnyx::Models::MesssageRcsParams::Type] Message type - must be set to "RCS"
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MesssageRcsResponse]
      #
      # @see Telnyx::Models::MesssageRcsParams
      def rcs(params)
        parsed, options = Telnyx::MesssageRcsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messsages/rcs",
          body: parsed,
          model: Telnyx::Models::MesssageRcsResponse,
          options: options
        )
      end

      # Send a Whatsapp message
      #
      # @overload whatsapp(from:, to:, whatsapp_message:, type: nil, webhook_url: nil, request_options: {})
      #
      # @param from [String] Phone number in +E.164 format associated with Whatsapp account
      #
      # @param to [String] Phone number in +E.164 format
      #
      # @param whatsapp_message [Telnyx::Models::MesssageWhatsappParams::WhatsappMessage]
      #
      # @param type [Symbol, Telnyx::Models::MesssageWhatsappParams::Type] Message type - must be set to "WHATSAPP"
      #
      # @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MesssageWhatsappResponse]
      #
      # @see Telnyx::Models::MesssageWhatsappParams
      def whatsapp(params)
        parsed, options = Telnyx::MesssageWhatsappParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messsages/whatsapp",
          body: parsed,
          model: Telnyx::Models::MesssageWhatsappResponse,
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
