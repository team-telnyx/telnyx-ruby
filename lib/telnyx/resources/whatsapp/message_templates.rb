# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp message templates
      class MessageTemplates
        # Create a Whatsapp message template
        #
        # @overload create(category:, components:, language:, name:, waba_id:, request_options: {})
        #
        # @param category [Symbol, Telnyx::Models::Whatsapp::MessageTemplateCreateParams::Category]
        # @param components [Array<Hash{Symbol=>Object}>]
        # @param language [String]
        # @param name [String]
        # @param waba_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::MessageTemplateCreateResponse]
        #
        # @see Telnyx::Models::Whatsapp::MessageTemplateCreateParams
        def create(params)
          parsed, options = Telnyx::Whatsapp::MessageTemplateCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v2/whatsapp/message_templates",
            body: parsed,
            model: Telnyx::Models::Whatsapp::MessageTemplateCreateResponse,
            options: options
          )
        end

        # Get a Whatsapp message template by ID
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Whatsapp message template ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::MessageTemplateRetrieveResponse]
        #
        # @see Telnyx::Models::Whatsapp::MessageTemplateRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["v2/whatsapp_message_templates/%1$s", id],
            model: Telnyx::Models::Whatsapp::MessageTemplateRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update a Whatsapp message template
        #
        # @overload update(id, category: nil, components: nil, request_options: {})
        #
        # @param id [String] Whatsapp message template ID
        #
        # @param category [Symbol, Telnyx::Models::Whatsapp::MessageTemplateUpdateParams::Category]
        #
        # @param components [Array<Hash{Symbol=>Object}>]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::MessageTemplateUpdateResponse]
        #
        # @see Telnyx::Models::Whatsapp::MessageTemplateUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Whatsapp::MessageTemplateUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["v2/whatsapp_message_templates/%1$s", id],
            body: parsed,
            model: Telnyx::Models::Whatsapp::MessageTemplateUpdateResponse,
            options: options
          )
        end

        # List Whatsapp message templates
        #
        # @overload list(filter_category: nil, filter_search: nil, filter_status: nil, filter_waba_id: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_category [Symbol, Telnyx::Models::Whatsapp::MessageTemplateListParams::FilterCategory] Filter by category
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
        # @see Telnyx::Models::Whatsapp::MessageTemplateListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::MessageTemplateListParams.dump_request(params)
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
        # @see Telnyx::Models::Whatsapp::MessageTemplateDeleteParams
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
end
