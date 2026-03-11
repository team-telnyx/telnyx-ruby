# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp message templates
      class Templates
        # Create a Whatsapp message template
        #
        # @overload create(category:, components:, language:, name:, waba_id:, request_options: {})
        #
        # @param category [Symbol, Telnyx::Models::Whatsapp::TemplateCreateParams::Category]
        # @param components [Array<Object>]
        # @param language [String]
        # @param name [String]
        # @param waba_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::TemplateCreateResponse]
        #
        # @see Telnyx::Models::Whatsapp::TemplateCreateParams
        def create(params)
          parsed, options = Telnyx::Whatsapp::TemplateCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/whatsapp/message_templates",
            body: parsed,
            model: Telnyx::Models::Whatsapp::TemplateCreateResponse,
            options: options
          )
        end

        # List Whatsapp message templates
        #
        # @overload list(filter_category: nil, filter_search: nil, filter_status: nil, filter_waba_id: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_category [Symbol, Telnyx::Models::Whatsapp::TemplateListParams::FilterCategory] Filter by category
        #
        # @param filter_search [String] Search templates by name
        #
        # @param filter_status [String] Filter by template status
        #
        # @param filter_waba_id [String] Filter by WABA ID
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::WhatsappTemplateData>]
        #
        # @see Telnyx::Models::Whatsapp::TemplateListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::TemplateListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v2/whatsapp/message_templates",
            query: query.transform_keys(
              filter_category: "filter[category]",
              filter_search: "filter[search]",
              filter_status: "filter[status]",
              filter_waba_id: "filter[waba_id]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::WhatsappTemplateData,
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
