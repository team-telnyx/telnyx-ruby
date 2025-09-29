# frozen_string_literal: true

module Telnyx
  module Resources
    class Brand
      # @return [Telnyx::Resources::Brand::ExternalVetting]
      attr_reader :external_vetting

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BrandCreateParams} for more details.
      #
      # This endpoint is used to create a new brand. A brand is an entity created by The
      # Campaign Registry (TCR) that represents an organization or a company. It is this
      # entity that TCR created campaigns will be associated with. Each brand creation
      # will entail an upfront, non-refundable $4 expense.
      #
      # @overload create(country:, display_name:, email:, entity_type:, vertical:, business_contact_email: nil, city: nil, company_name: nil, ein: nil, first_name: nil, ip_address: nil, is_reseller: nil, last_name: nil, mobile_phone: nil, mock: nil, phone: nil, postal_code: nil, state: nil, stock_exchange: nil, stock_symbol: nil, street: nil, webhook_failover_url: nil, webhook_url: nil, website: nil, request_options: {})
      #
      # @param country [String] ISO2 2 characters country code. Example: US - United States
      #
      # @param display_name [String] Display name, marketing name, or DBA name of the brand.
      #
      # @param email [String] Valid email address of brand support contact.
      #
      # @param entity_type [Symbol, Telnyx::Models::EntityType] Entity type behind the brand. This is the form of business establishment.
      #
      # @param vertical [Symbol, Telnyx::Models::Vertical] Vertical or industry segment of the brand or campaign.
      #
      # @param business_contact_email [String] Business contact email.
      #
      # @param city [String] City name
      #
      # @param company_name [String] (Required for Non-profit/private/public) Legal company name.
      #
      # @param ein [String] (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
      #
      # @param first_name [String] First name of business contact.
      #
      # @param ip_address [String] IP address of the browser requesting to create brand identity.
      #
      # @param is_reseller [Boolean]
      #
      # @param last_name [String] Last name of business contact.
      #
      # @param mobile_phone [String] Valid mobile phone number in e.164 international format.
      #
      # @param mock [Boolean] Mock brand for testing purposes. Defaults to false.
      #
      # @param phone [String] Valid phone number in e.164 international format.
      #
      # @param postal_code [String] Postal codes. Use 5 digit zipcode for United States
      #
      # @param state [String] State. Must be 2 letters code for United States.
      #
      # @param stock_exchange [Symbol, Telnyx::Models::StockExchange] (Required for public company) stock exchange.
      #
      # @param stock_symbol [String] (Required for public company) stock symbol.
      #
      # @param street [String] Street number and name.
      #
      # @param webhook_failover_url [String] Webhook failover URL for brand status updates.
      #
      # @param webhook_url [String] Webhook URL for brand status updates.
      #
      # @param website [String] Brand website URL.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelnyxBrand]
      #
      # @see Telnyx::Models::BrandCreateParams
      def create(params)
        parsed, options = Telnyx::BrandCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand",
          body: parsed,
          model: Telnyx::TelnyxBrand,
          options: options
        )
      end

      # Retrieve a brand by `brandId`.
      #
      # @overload retrieve(brand_id, request_options: {})
      #
      # @param brand_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrandRetrieveResponse]
      #
      # @see Telnyx::Models::BrandRetrieveParams
      def retrieve(brand_id, params = {})
        @client.request(
          method: :get,
          path: ["brand/%1$s", brand_id],
          model: Telnyx::Models::BrandRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BrandUpdateParams} for more details.
      #
      # Update a brand's attributes by `brandId`.
      #
      # @overload update(brand_id, country:, display_name:, email:, entity_type:, vertical:, alt_business_id: nil, alt_business_id_type: nil, business_contact_email: nil, city: nil, company_name: nil, ein: nil, first_name: nil, identity_status: nil, ip_address: nil, is_reseller: nil, last_name: nil, phone: nil, postal_code: nil, state: nil, stock_exchange: nil, stock_symbol: nil, street: nil, webhook_failover_url: nil, webhook_url: nil, website: nil, request_options: {})
      #
      # @param brand_id [String]
      #
      # @param country [String] ISO2 2 characters country code. Example: US - United States
      #
      # @param display_name [String] Display or marketing name of the brand.
      #
      # @param email [String] Valid email address of brand support contact.
      #
      # @param entity_type [Symbol, Telnyx::Models::EntityType] Entity type behind the brand. This is the form of business establishment.
      #
      # @param vertical [Symbol, Telnyx::Models::Vertical] Vertical or industry segment of the brand or campaign.
      #
      # @param alt_business_id [String] Alternate business identifier such as DUNS, LEI, or GIIN
      #
      # @param alt_business_id_type [Symbol, Telnyx::Models::AltBusinessIDType] An enumeration.
      #
      # @param business_contact_email [String] Business contact email.
      #
      # @param city [String] City name
      #
      # @param company_name [String] (Required for Non-profit/private/public) Legal company name.
      #
      # @param ein [String] (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
      #
      # @param first_name [String] First name of business contact.
      #
      # @param identity_status [Symbol, Telnyx::Models::BrandIdentityStatus] The verification status of an active brand
      #
      # @param ip_address [String] IP address of the browser requesting to create brand identity.
      #
      # @param is_reseller [Boolean]
      #
      # @param last_name [String] Last name of business contact.
      #
      # @param phone [String] Valid phone number in e.164 international format.
      #
      # @param postal_code [String] Postal codes. Use 5 digit zipcode for United States
      #
      # @param state [String] State. Must be 2 letters code for United States.
      #
      # @param stock_exchange [Symbol, Telnyx::Models::StockExchange] (Required for public company) stock exchange.
      #
      # @param stock_symbol [String] (Required for public company) stock symbol.
      #
      # @param street [String] Street number and name.
      #
      # @param webhook_failover_url [String] Webhook failover URL for brand status updates.
      #
      # @param webhook_url [String] Webhook URL for brand status updates.
      #
      # @param website [String] Brand website URL.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelnyxBrand]
      #
      # @see Telnyx::Models::BrandUpdateParams
      def update(brand_id, params)
        parsed, options = Telnyx::BrandUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["brand/%1$s", brand_id],
          body: parsed,
          model: Telnyx::TelnyxBrand,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BrandListParams} for more details.
      #
      # This endpoint is used to list all brands associated with your organization.
      #
      # @overload list(brand_id: nil, country: nil, display_name: nil, entity_type: nil, page: nil, records_per_page: nil, sort: nil, state: nil, tcr_brand_id: nil, request_options: {})
      #
      # @param brand_id [String] Filter results by the Telnyx Brand id
      #
      # @param country [String]
      #
      # @param display_name [String]
      #
      # @param entity_type [String]
      #
      # @param page [Integer]
      #
      # @param records_per_page [Integer] number of records per page. maximum of 500
      #
      # @param sort [Symbol, Telnyx::Models::BrandListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      # @param state [String]
      #
      # @param tcr_brand_id [String] Filter results by the TCR Brand id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrandListResponse]
      #
      # @see Telnyx::Models::BrandListParams
      def list(params = {})
        parsed, options = Telnyx::BrandListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand",
          query: parsed.transform_keys(
            brand_id: "brandId",
            display_name: "displayName",
            entity_type: "entityType",
            records_per_page: "recordsPerPage",
            tcr_brand_id: "tcrBrandId"
          ),
          model: Telnyx::Models::BrandListResponse,
          options: options
        )
      end

      # Delete Brand. This endpoint is used to delete a brand. Note the brand cannot be
      # deleted if it contains one or more active campaigns, the campaigns need to be
      # inactive and at least 3 months old due to billing purposes.
      #
      # @overload delete(brand_id, request_options: {})
      #
      # @param brand_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::BrandDeleteParams
      def delete(brand_id, params = {})
        @client.request(
          method: :delete,
          path: ["brand/%1$s", brand_id],
          model: Telnyx::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # Get feedback about a brand by ID. This endpoint can be used after creating or
      # revetting a brand.
      #
      # Possible values for `.category[].id`:
      #
      # - `TAX_ID` - Data mismatch related to tax id and its associated properties.
      # - `STOCK_SYMBOL` - Non public entity registered as a public for profit entity or
      #   the stock information mismatch.
      # - `GOVERNMENT_ENTITY` - Non government entity registered as a government entity.
      #   Must be a U.S. government entity.
      # - `NONPROFIT` - Not a recognized non-profit entity. No IRS tax-exempt status
      #   found.
      # - `OTHERS` - Details of the data misrepresentation if any.
      #
      # @overload get_feedback(brand_id, request_options: {})
      #
      # @param brand_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrandGetFeedbackResponse]
      #
      # @see Telnyx::Models::BrandGetFeedbackParams
      def get_feedback(brand_id, params = {})
        @client.request(
          method: :get,
          path: ["brand/feedback/%1$s", brand_id],
          model: Telnyx::Models::BrandGetFeedbackResponse,
          options: params[:request_options]
        )
      end

      # Resend brand 2FA email
      #
      # @overload resend_2fa_email(brand_id, request_options: {})
      #
      # @param brand_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::BrandResend2faEmailParams
      def resend_2fa_email(brand_id, params = {})
        @client.request(
          method: :post,
          path: ["brand/%1$s/2faEmail", brand_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This operation allows you to revet the brand. However, revetting is allowed once
      # after the successful brand registration and thereafter limited to once every 3
      # months.
      #
      # @overload revet(brand_id, request_options: {})
      #
      # @param brand_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Telnyx::Models::BrandRevetParams
      def revet(brand_id, params = {})
        @client.request(
          method: :put,
          path: ["brand/%1$s/revet", brand_id],
          model: Telnyx::Internal::Type::Unknown,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @external_vetting = Telnyx::Resources::Brand::ExternalVetting.new(client: client)
      end
    end
  end
end
