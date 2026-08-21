# frozen_string_literal: true

module Telnyx
  module Resources
    class Porting
      # Endpoints related to porting orders management.
      class LoaConfigurations
        # Creates a new LOA configuration with your company details and branding for use
        # when generating LOA documents for porting orders.
        #
        # @overload create(address:, company_name:, contact:, logo:, name:, request_options: {})
        #
        # @param address [Telnyx::Models::Porting::LoaConfigurationCreateParams::Address] The address of the company.
        #
        # @param company_name [String] The name of the company
        #
        # @param contact [Telnyx::Models::Porting::LoaConfigurationCreateParams::Contact] The contact information of the company.
        #
        # @param logo [Telnyx::Models::Porting::LoaConfigurationCreateParams::Logo] The logo of the LOA configuration
        #
        # @param name [String] The name of the LOA configuration
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::LoaConfigurationCreateResponse]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationCreateParams
        def create(params)
          parsed, options = Telnyx::Porting::LoaConfigurationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "porting/loa_configurations",
            body: parsed,
            model: Telnyx::Models::Porting::LoaConfigurationCreateResponse,
            options: options
          )
        end

        # Returns the details of a single LOA (Letter of Authorization) configuration by
        # its identifier.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies a LOA configuration.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::LoaConfigurationRetrieveResponse]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["porting/loa_configurations/%1$s", id],
            model: Telnyx::Models::Porting::LoaConfigurationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Updates the specified LOA configuration with the provided fields and returns the
        # updated configuration.
        #
        # @overload update(id, address:, company_name:, contact:, logo:, name:, request_options: {})
        #
        # @param id [String] Identifies a LOA configuration.
        #
        # @param address [Telnyx::Models::Porting::LoaConfigurationUpdateParams::Address] The address of the company.
        #
        # @param company_name [String] The name of the company
        #
        # @param contact [Telnyx::Models::Porting::LoaConfigurationUpdateParams::Contact] The contact information of the company.
        #
        # @param logo [Telnyx::Models::Porting::LoaConfigurationUpdateParams::Logo] The logo of the LOA configuration
        #
        # @param name [String] The name of the LOA configuration
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::LoaConfigurationUpdateResponse]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationUpdateParams
        def update(id, params)
          parsed, options = Telnyx::Porting::LoaConfigurationUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["porting/loa_configurations/%1$s", id],
            body: parsed,
            model: Telnyx::Models::Porting::LoaConfigurationUpdateResponse,
            options: options
          )
        end

        # Returns a paginated list of your LOA (Letter of Authorization) configurations.
        # LOA configurations customize the company details and branding used on generated
        # LOA documents.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Porting::PortingLoaConfiguration>]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationListParams
        def list(params = {})
          parsed, options = Telnyx::Porting::LoaConfigurationListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "porting/loa_configurations",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Porting::PortingLoaConfiguration,
            options: options
          )
        end

        # Permanently deletes the specified LOA configuration so it can no longer be used
        # when generating LOA documents.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] Identifies a LOA configuration.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["porting/loa_configurations/%1$s", id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Preview the LOA template that would be generated without need to create LOA
        # configuration.
        #
        # @overload preview(address:, company_name:, contact:, logo:, name:, request_options: {})
        #
        # @param address [Telnyx::Models::Porting::LoaConfigurationPreviewParams::Address] The address of the company.
        #
        # @param company_name [String] The name of the company
        #
        # @param contact [Telnyx::Models::Porting::LoaConfigurationPreviewParams::Contact] The contact information of the company.
        #
        # @param logo [Telnyx::Models::Porting::LoaConfigurationPreviewParams::Logo] The logo of the LOA configuration
        #
        # @param name [String] The name of the LOA configuration
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationPreviewParams
        def preview(params)
          parsed, options = Telnyx::Porting::LoaConfigurationPreviewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "porting/loa_configurations/preview",
            headers: {"accept" => "application/pdf"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Preview the LOA template that would be generated without need to create LOA
        # configuration.
        #
        # @overload preview_0(address:, company_name:, contact:, logo:, name:, request_options: {})
        #
        # @param address [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Address] The address of the company.
        #
        # @param company_name [String] The name of the company
        #
        # @param contact [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Contact] The contact information of the company.
        #
        # @param logo [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Logo] The logo of the LOA configuration
        #
        # @param name [String] The name of the LOA configuration
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationPreview0Params
        def preview_0(params)
          parsed, options = Telnyx::Porting::LoaConfigurationPreview0Params.dump_request(params)
          @client.request(
            method: :post,
            path: "porting/loa_configurations/preview",
            headers: {"accept" => "application/pdf"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Renders a preview of the LOA document produced by this configuration so you can
        # verify company details and branding before using it on porting orders.
        #
        # @overload preview_1(id, request_options: {})
        #
        # @param id [String] Identifies a LOA configuration.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationPreview1Params
        def preview_1(id, params = {})
          @client.request(
            method: :get,
            path: ["porting/loa_configurations/%1$s/preview", id],
            headers: {"accept" => "application/pdf"},
            model: StringIO,
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
