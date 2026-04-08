# typed: strong

module Telnyx
  module Resources
    # Manage Whatsapp message templates
    class WhatsappMessageTemplates
      # Get a Whatsapp message template by ID
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WhatsappMessageTemplateRetrieveResponse)
      end
      def retrieve(
        # Whatsapp message template ID
        id,
        request_options: {}
      )
      end

      # Update a Whatsapp message template
      sig do
        params(
          id: String,
          category:
            Telnyx::WhatsappMessageTemplateUpdateParams::Category::OrSymbol,
          components:
            T::Array[
              T.any(
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateHeaderComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateBodyComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateFooterComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateButtonsComponent::OrHash,
                Telnyx::WhatsappMessageTemplateUpdateParams::Component::WhatsappTemplateCarouselComponent::OrHash
              )
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WhatsappMessageTemplateUpdateResponse)
      end
      def update(
        # Whatsapp message template ID
        id,
        category: nil,
        # Updated template components. Same structure as the create request.
        components: nil,
        request_options: {}
      )
      end

      # Delete a Whatsapp message template
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Whatsapp message template ID
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
