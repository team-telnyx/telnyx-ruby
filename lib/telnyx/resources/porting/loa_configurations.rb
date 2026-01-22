# frozen_string_literal: true

module Telnyx
  module Resources
    class Porting
      class LoaConfigurations
        # Create a LOA configuration.
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

        # Retrieve a specific LOA configuration.
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

        # Update a specific LOA configuration.
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

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Porting::LoaConfigurationListParams} for more details.
        #
        # List the LOA configurations.
        #
        # @overload list(page: nil, request_options: {})
        #
        # @param page [Telnyx::Models::Porting::LoaConfigurationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::Porting::PortingLoaConfiguration>]
        #
        # @see Telnyx::Models::Porting::LoaConfigurationListParams
        def list(params = {})
          parsed, options = Telnyx::Porting::LoaConfigurationListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "porting/loa_configurations",
            query: parsed,
            page: Telnyx::Internal::DefaultPagination,
            model: Telnyx::Porting::PortingLoaConfiguration,
            options: options
          )
        end

        # Delete a specific LOA configuration.
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
            path: "porting/loa_configuration/preview",
            headers: {"accept" => "application/pdf"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Preview a specific LOA configuration.
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
