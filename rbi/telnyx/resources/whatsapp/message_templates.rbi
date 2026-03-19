# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp message templates
      class MessageTemplates
        # Create a Whatsapp message template
        sig do
          params(
            category:
              Telnyx::Whatsapp::MessageTemplateCreateParams::Category::OrSymbol,
            components: T::Array[T::Hash[Symbol, T.anything]],
            language: String,
            name: String,
            waba_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::MessageTemplateCreateResponse)
        end
        def create(
          category:,
          components:,
          language:,
          name:,
          waba_id:,
          request_options: {}
        )
        end

        # Get a Whatsapp message template by ID
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::MessageTemplateRetrieveResponse)
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
              Telnyx::Whatsapp::MessageTemplateUpdateParams::Category::OrSymbol,
            components: T::Array[T::Hash[Symbol, T.anything]],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::MessageTemplateUpdateResponse)
        end
        def update(
          # Whatsapp message template ID
          id,
          category: nil,
          components: nil,
          request_options: {}
        )
        end

        # List Whatsapp message templates
        sig do
          params(
            filter_category:
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::OrSymbol,
            filter_search: String,
            filter_status: String,
            filter_waba_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::WhatsappTemplateData
            ]
          )
        end
        def list(
          # Filter by category
          filter_category: nil,
          # Search templates by name
          filter_search: nil,
          # Filter by template status
          filter_status: nil,
          # Filter by WABA ID
          filter_waba_id: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        # Delete a Whatsapp message template
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
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
end
