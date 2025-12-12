# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class Brand
        # @return [Telnyx::Resources::Number10dlc::Brand::ExternalVetting]
        attr_reader :external_vetting

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::BrandCreateParams} for more details.
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
        # @param entity_type [Symbol, Telnyx::Models::Number10dlc::EntityType] Entity type behind the brand. This is the form of business establishment.
        #
        # @param vertical [Symbol, Telnyx::Models::Number10dlc::Vertical] Vertical or industry segment of the brand or campaign.
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
        # @param stock_exchange [Symbol, Telnyx::Models::Number10dlc::StockExchange] (Required for public company) stock exchange.
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
        # @return [Telnyx::Models::Number10dlc::TelnyxBrand]
        #
        # @see Telnyx::Models::Number10dlc::BrandCreateParams
        def create(params)
          parsed, options = Telnyx::Number10dlc::BrandCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "10dlc/brand",
            body: parsed,
            model: Telnyx::Number10dlc::TelnyxBrand,
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
        # @return [Telnyx::Models::Number10dlc::BrandRetrieveResponse]
        #
        # @see Telnyx::Models::Number10dlc::BrandRetrieveParams
        def retrieve(brand_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/brand/%1$s", brand_id],
            model: Telnyx::Models::Number10dlc::BrandRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::BrandUpdateParams} for more details.
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
        # @param entity_type [Symbol, Telnyx::Models::Number10dlc::EntityType] Entity type behind the brand. This is the form of business establishment.
        #
        # @param vertical [Symbol, Telnyx::Models::Number10dlc::Vertical] Vertical or industry segment of the brand or campaign.
        #
        # @param alt_business_id [String] Alternate business identifier such as DUNS, LEI, or GIIN
        #
        # @param alt_business_id_type [Symbol, Telnyx::Models::Number10dlc::AltBusinessIDType] An enumeration.
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
        # @param identity_status [Symbol, Telnyx::Models::Number10dlc::BrandIdentityStatus] The verification status of an active brand
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
        # @param stock_exchange [Symbol, Telnyx::Models::Number10dlc::StockExchange] (Required for public company) stock exchange.
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
        # @return [Telnyx::Models::Number10dlc::TelnyxBrand]
        #
        # @see Telnyx::Models::Number10dlc::BrandUpdateParams
        def update(brand_id, params)
          parsed, options = Telnyx::Number10dlc::BrandUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["10dlc/brand/%1$s", brand_id],
            body: parsed,
            model: Telnyx::Number10dlc::TelnyxBrand,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::BrandListParams} for more details.
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
        # @param sort [Symbol, Telnyx::Models::Number10dlc::BrandListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param state [String]
        #
        # @param tcr_brand_id [String] Filter results by the TCR Brand id
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::PerPagePaginationV2<Telnyx::Models::Number10dlc::BrandListResponse>]
        #
        # @see Telnyx::Models::Number10dlc::BrandListParams
        def list(params = {})
          parsed, options = Telnyx::Number10dlc::BrandListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/brand",
            query: parsed.transform_keys(
              brand_id: "brandId",
              display_name: "displayName",
              entity_type: "entityType",
              records_per_page: "recordsPerPage",
              tcr_brand_id: "tcrBrandId"
            ),
            page: Telnyx::Internal::PerPagePaginationV2,
            model: Telnyx::Models::Number10dlc::BrandListResponse,
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
        # @return [nil]
        #
        # @see Telnyx::Models::Number10dlc::BrandDeleteParams
        def delete(brand_id, params = {})
          @client.request(
            method: :delete,
            path: ["10dlc/brand/%1$s", brand_id],
            model: NilClass,
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
        # @return [Telnyx::Models::Number10dlc::BrandGetFeedbackResponse]
        #
        # @see Telnyx::Models::Number10dlc::BrandGetFeedbackParams
        def get_feedback(brand_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/brand/feedback/%1$s", brand_id],
            model: Telnyx::Models::Number10dlc::BrandGetFeedbackResponse,
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
        # @see Telnyx::Models::Number10dlc::BrandResend2faEmailParams
        def resend_2fa_email(brand_id, params = {})
          @client.request(
            method: :post,
            path: ["10dlc/brand/%1$s/2faEmail", brand_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Query the status of an SMS OTP (One-Time Password) for Sole Proprietor brand
        # verification.
        #
        # This endpoint allows you to check the delivery and verification status of an OTP
        # sent during the Sole Proprietor brand verification process. You can query by
        # either:
        #
        # - `referenceId` - The reference ID returned when the OTP was initially triggered
        # - `brandId` - Query parameter for portal users to look up OTP status by Brand ID
        #
        # The response includes delivery status, verification dates, and detailed delivery
        # information.
        #
        # @overload retrieve_sms_otp_status(reference_id, brand_id: nil, request_options: {})
        #
        # @param reference_id [String] The reference ID returned when the OTP was initially triggered
        #
        # @param brand_id [String] Filter by Brand ID for easier lookup in portal applications
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::BrandRetrieveSMSOtpStatusResponse]
        #
        # @see Telnyx::Models::Number10dlc::BrandRetrieveSMSOtpStatusParams
        def retrieve_sms_otp_status(reference_id, params = {})
          parsed, options = Telnyx::Number10dlc::BrandRetrieveSMSOtpStatusParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["10dlc/brand/smsOtp/%1$s", reference_id],
            query: parsed.transform_keys(brand_id: "brandId"),
            model: Telnyx::Models::Number10dlc::BrandRetrieveSMSOtpStatusResponse,
            options: options
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
        # @return [Telnyx::Models::Number10dlc::TelnyxBrand]
        #
        # @see Telnyx::Models::Number10dlc::BrandRevetParams
        def revet(brand_id, params = {})
          @client.request(
            method: :put,
            path: ["10dlc/brand/%1$s/revet", brand_id],
            model: Telnyx::Number10dlc::TelnyxBrand,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Number10dlc::BrandTriggerSMSOtpParams} for more details.
        #
        # Trigger or re-trigger an SMS OTP (One-Time Password) for Sole Proprietor brand
        # verification.
        #
        # **Important Notes:**
        #
        # - Only allowed for Sole Proprietor (`SOLE_PROPRIETOR`) brands
        # - Triggers generation of a one-time password sent to the `mobilePhone` number in
        #   the brand's profile
        # - Campaigns cannot be created until OTP verification is complete
        # - US/CA numbers only for real OTPs; mock brands can use non-US/CA numbers for
        #   testing
        # - Returns a `referenceId` that can be used to check OTP status via the GET
        #   `/10dlc/brand/smsOtp/{referenceId}` endpoint
        #
        # **Use Cases:**
        #
        # - Initial OTP trigger after Sole Proprietor brand creation
        # - Re-triggering OTP if the user didn't receive or needs a new code
        #
        # @overload trigger_sms_otp(brand_id, pin_sms:, success_sms:, request_options: {})
        #
        # @param brand_id [String] The Brand ID for which to trigger the OTP
        #
        # @param pin_sms [String] SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
        #
        # @param success_sms [String] SMS message to send upon successful OTP verification
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Number10dlc::BrandTriggerSMSOtpResponse]
        #
        # @see Telnyx::Models::Number10dlc::BrandTriggerSMSOtpParams
        def trigger_sms_otp(brand_id, params)
          parsed, options = Telnyx::Number10dlc::BrandTriggerSMSOtpParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["10dlc/brand/%1$s/smsOtp", brand_id],
            body: parsed,
            model: Telnyx::Models::Number10dlc::BrandTriggerSMSOtpResponse,
            options: options
          )
        end

        # Verify the SMS OTP (One-Time Password) for Sole Proprietor brand verification.
        #
        # **Verification Flow:**
        #
        # 1. User receives OTP via SMS after triggering
        # 2. User submits the OTP pin through this endpoint
        # 3. Upon successful verification:
        #    - A `BRAND_OTP_VERIFIED` webhook event is sent to the CSP
        #    - The brand's `identityStatus` changes to `VERIFIED`
        #    - Campaigns can now be created for this brand
        #
        # **Error Handling:**
        #
        # Provides proper error responses for:
        #
        # - Invalid OTP pins
        # - Expired OTPs
        # - OTP verification failures
        #
        # @overload verify_sms_otp(brand_id, otp_pin:, request_options: {})
        #
        # @param brand_id [String] The Brand ID for which to verify the OTP
        #
        # @param otp_pin [String] The OTP PIN received via SMS
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Number10dlc::BrandVerifySMSOtpParams
        def verify_sms_otp(brand_id, params)
          parsed, options = Telnyx::Number10dlc::BrandVerifySMSOtpParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["10dlc/brand/%1$s/smsOtp", brand_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @external_vetting = Telnyx::Resources::Number10dlc::Brand::ExternalVetting.new(client: client)
        end
      end
    end
  end
end
