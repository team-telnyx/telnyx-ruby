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
            components: T::Array[T.anything],
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
              Telnyx::Models::Whatsapp::MessageTemplateListResponse
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

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
