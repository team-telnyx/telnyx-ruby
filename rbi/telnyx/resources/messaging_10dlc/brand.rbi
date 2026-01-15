# typed: strong

module Telnyx
  module Resources
    class Messaging10dlc
      class Brand
        sig do
          returns(Telnyx::Resources::Messaging10dlc::Brand::ExternalVetting)
        end
        attr_reader :external_vetting

        # This endpoint is used to create a new brand. A brand is an entity created by The
        # Campaign Registry (TCR) that represents an organization or a company. It is this
        # entity that TCR created campaigns will be associated with. Each brand creation
        # will entail an upfront, non-refundable $4 expense.
        sig do
          params(
            country: String,
            display_name: String,
            email: String,
            entity_type: Telnyx::Messaging10dlc::EntityType::OrSymbol,
            vertical: Telnyx::Messaging10dlc::Vertical::OrSymbol,
            business_contact_email: String,
            city: String,
            company_name: String,
            ein: String,
            first_name: String,
            ip_address: String,
            is_reseller: T::Boolean,
            last_name: String,
            mobile_phone: String,
            mock: T::Boolean,
            phone: String,
            postal_code: String,
            state: String,
            stock_exchange: Telnyx::Messaging10dlc::StockExchange::OrSymbol,
            stock_symbol: String,
            street: String,
            webhook_failover_url: String,
            webhook_url: String,
            website: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Messaging10dlc::TelnyxBrand)
        end
        def create(
          # ISO2 2 characters country code. Example: US - United States
          country:,
          # Display name, marketing name, or DBA name of the brand.
          display_name:,
          # Valid email address of brand support contact.
          email:,
          # Entity type behind the brand. This is the form of business establishment.
          entity_type:,
          # Vertical or industry segment of the brand or campaign.
          vertical:,
          # Business contact email.
          #
          # Required if `entityType` is `PUBLIC_PROFIT`. Otherwise, it is recommended to
          # either omit this field or set it to `null`.
          business_contact_email: nil,
          # City name
          city: nil,
          # (Required for Non-profit/private/public) Legal company name.
          company_name: nil,
          # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
          # in U.S.
          ein: nil,
          # First name of business contact.
          first_name: nil,
          # IP address of the browser requesting to create brand identity.
          ip_address: nil,
          is_reseller: nil,
          # Last name of business contact.
          last_name: nil,
          # Valid mobile phone number in e.164 international format.
          mobile_phone: nil,
          # Mock brand for testing purposes. Defaults to false.
          mock: nil,
          # Valid phone number in e.164 international format.
          phone: nil,
          # Postal codes. Use 5 digit zipcode for United States
          postal_code: nil,
          # State. Must be 2 letters code for United States.
          state: nil,
          # (Required for public company) stock exchange.
          stock_exchange: nil,
          # (Required for public company) stock symbol.
          stock_symbol: nil,
          # Street number and name.
          street: nil,
          # Webhook failover URL for brand status updates.
          webhook_failover_url: nil,
          # Webhook URL for brand status updates.
          webhook_url: nil,
          # Brand website URL.
          website: nil,
          request_options: {}
        )
        end

        # Retrieve a brand by `brandId`.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging10dlc::BrandRetrieveResponse)
        end
        def retrieve(brand_id, request_options: {})
        end

        # Update a brand's attributes by `brandId`.
        sig do
          params(
            brand_id: String,
            country: String,
            display_name: String,
            email: String,
            entity_type: Telnyx::Messaging10dlc::EntityType::OrSymbol,
            vertical: Telnyx::Messaging10dlc::Vertical::OrSymbol,
            alt_business_id: String,
            alt_business_id_type:
              Telnyx::Messaging10dlc::AltBusinessIDType::OrSymbol,
            business_contact_email: String,
            city: String,
            company_name: String,
            ein: String,
            first_name: String,
            identity_status:
              Telnyx::Messaging10dlc::BrandIdentityStatus::OrSymbol,
            ip_address: String,
            is_reseller: T::Boolean,
            last_name: String,
            phone: String,
            postal_code: String,
            state: String,
            stock_exchange: Telnyx::Messaging10dlc::StockExchange::OrSymbol,
            stock_symbol: String,
            street: String,
            webhook_failover_url: String,
            webhook_url: String,
            website: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Messaging10dlc::TelnyxBrand)
        end
        def update(
          brand_id,
          # ISO2 2 characters country code. Example: US - United States
          country:,
          # Display or marketing name of the brand.
          display_name:,
          # Valid email address of brand support contact.
          email:,
          # Entity type behind the brand. This is the form of business establishment.
          entity_type:,
          # Vertical or industry segment of the brand or campaign.
          vertical:,
          # Alternate business identifier such as DUNS, LEI, or GIIN
          alt_business_id: nil,
          # An enumeration.
          alt_business_id_type: nil,
          # Business contact email.
          #
          # Required if `entityType` will be changed to `PUBLIC_PROFIT`. Otherwise, it is
          # recommended to either omit this field or set it to `null`.
          business_contact_email: nil,
          # City name
          city: nil,
          # (Required for Non-profit/private/public) Legal company name.
          company_name: nil,
          # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
          # in U.S.
          ein: nil,
          # First name of business contact.
          first_name: nil,
          # The verification status of an active brand
          identity_status: nil,
          # IP address of the browser requesting to create brand identity.
          ip_address: nil,
          is_reseller: nil,
          # Last name of business contact.
          last_name: nil,
          # Valid phone number in e.164 international format.
          phone: nil,
          # Postal codes. Use 5 digit zipcode for United States
          postal_code: nil,
          # State. Must be 2 letters code for United States.
          state: nil,
          # (Required for public company) stock exchange.
          stock_exchange: nil,
          # (Required for public company) stock symbol.
          stock_symbol: nil,
          # Street number and name.
          street: nil,
          # Webhook failover URL for brand status updates.
          webhook_failover_url: nil,
          # Webhook URL for brand status updates.
          webhook_url: nil,
          # Brand website URL.
          website: nil,
          request_options: {}
        )
        end

        # This endpoint is used to list all brands associated with your organization.
        sig do
          params(
            brand_id: String,
            country: String,
            display_name: String,
            entity_type: String,
            page: Integer,
            records_per_page: Integer,
            sort: Telnyx::Messaging10dlc::BrandListParams::Sort::OrSymbol,
            state: String,
            tcr_brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::PerPagePaginationV2[
              Telnyx::Models::Messaging10dlc::BrandListResponse
            ]
          )
        end
        def list(
          # Filter results by the Telnyx Brand id
          brand_id: nil,
          country: nil,
          display_name: nil,
          entity_type: nil,
          page: nil,
          # number of records per page. maximum of 500
          records_per_page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # createdAt in descending order.
          sort: nil,
          state: nil,
          # Filter results by the TCR Brand id
          tcr_brand_id: nil,
          request_options: {}
        )
        end

        # Delete Brand. This endpoint is used to delete a brand. Note the brand cannot be
        # deleted if it contains one or more active campaigns, the campaigns need to be
        # inactive and at least 3 months old due to billing purposes.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(brand_id, request_options: {})
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
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse)
        end
        def get_feedback(brand_id, request_options: {})
        end

        # Resend brand 2FA email
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def resend_2fa_email(brand_id, request_options: {})
        end

        # Query the status of an SMS OTP (One-Time Password) for Sole Proprietor brand
        # verification using the Brand ID.
        #
        # This endpoint allows you to check the delivery and verification status of an OTP
        # sent during the Sole Proprietor brand verification process by looking it up with
        # the brand ID.
        #
        # The response includes delivery status, verification dates, and detailed delivery
        # information.
        #
        # **Note:** This is an alternative to the `/10dlc/brand/smsOtp/{referenceId}`
        # endpoint when you have the Brand ID but not the reference ID.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Messaging10dlc::BrandRetrieveSMSOtpStatusResponse
          )
        end
        def retrieve_sms_otp_status(
          # The Brand ID for which to query OTP status
          brand_id,
          request_options: {}
        )
        end

        # This operation allows you to revet the brand. However, revetting is allowed once
        # after the successful brand registration and thereafter limited to once every 3
        # months.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Messaging10dlc::TelnyxBrand)
        end
        def revet(brand_id, request_options: {})
        end

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
        sig do
          params(
            brand_id: String,
            pin_sms: String,
            success_sms: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messaging10dlc::BrandTriggerSMSOtpResponse)
        end
        def trigger_sms_otp(
          # The Brand ID for which to trigger the OTP
          brand_id,
          # SMS message template to send the OTP. Must include `@OTP_PIN@` placeholder which
          # will be replaced with the actual PIN
          pin_sms:,
          # SMS message to send upon successful OTP verification
          success_sms:,
          request_options: {}
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
        sig do
          params(
            brand_id: String,
            otp_pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def verify_sms_otp(
          # The Brand ID for which to verify the OTP
          brand_id,
          # The OTP PIN received via SMS
          otp_pin:,
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
