# frozen_string_literal: true

module Telnyx
  module Resources
    # Manage Whatsapp message templates
    class WhatsappMessageTemplates
      # Get a Whatsapp message template by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Whatsapp message template ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WhatsappMessageTemplateRetrieveResponse]
      #
      # @see Telnyx::Models::WhatsappMessageTemplateRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v2/whatsapp_message_templates/%1$s", id],
          model: Telnyx::Models::WhatsappMessageTemplateRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Whatsapp message template
      #
      # @overload update(id, category: nil, components: nil, request_options: {})
      #
      # @param id [String] Whatsapp message template ID
      #
      # @param category [Symbol, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Category]
      #
      # @param components [Array<Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent, Telnyx::Models::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent>] Updated template components. Same structure as the create request.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WhatsappMessageTemplateUpdateResponse]
      #
      # @see Telnyx::Models::WhatsappMessageTemplateUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::WhatsappMessageTemplateUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v2/whatsapp_message_templates/%1$s", id],
          body: parsed,
          model: Telnyx::Models::WhatsappMessageTemplateUpdateResponse,
          options: options
        )
      end

      # Delete a Whatsapp message template
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Whatsapp message template ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::WhatsappMessageTemplateDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v2/whatsapp_message_templates/%1$s", id],
          model: NilClass,
          options: params[:request_options]
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
