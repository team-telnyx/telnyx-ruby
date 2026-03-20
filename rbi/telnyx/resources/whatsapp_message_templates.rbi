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
          components: T::Array[T::Hash[Symbol, T.anything]],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WhatsappMessageTemplateUpdateResponse)
      end
      def update(
        # Whatsapp message template ID
        id,
        category: nil,
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
