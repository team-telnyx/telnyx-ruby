# typed: strong

module Telnyx
  module Resources
    class Number10dlc
      class Brand
        sig { returns(Telnyx::Resources::Number10dlc::Brand::ExternalVetting) }
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
            entity_type: Telnyx::EntityType::OrSymbol,
            vertical: Telnyx::Vertical::OrSymbol,
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
            stock_exchange: Telnyx::StockExchange::OrSymbol,
            stock_symbol: String,
            street: String,
            webhook_failover_url: String,
            webhook_url: String,
            website: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::TelnyxBrand)
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
          ).returns(Telnyx::Models::Number10dlc::BrandRetrieveResponse)
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
            entity_type: Telnyx::EntityType::OrSymbol,
            vertical: Telnyx::Vertical::OrSymbol,
            alt_business_id: String,
            alt_business_id_type: Telnyx::AltBusinessIDType::OrSymbol,
            business_contact_email: String,
            city: String,
            company_name: String,
            ein: String,
            first_name: String,
            identity_status: Telnyx::BrandIdentityStatus::OrSymbol,
            ip_address: String,
            is_reseller: T::Boolean,
            last_name: String,
            phone: String,
            postal_code: String,
            state: String,
            stock_exchange: Telnyx::StockExchange::OrSymbol,
            stock_symbol: String,
            street: String,
            webhook_failover_url: String,
            webhook_url: String,
            website: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::TelnyxBrand)
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
            sort: Telnyx::Number10dlc::BrandListParams::Sort::OrSymbol,
            state: String,
            tcr_brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Number10dlc::BrandListResponse)
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

        # Resend brand 2FA email
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def number_2fa_email(brand_id, request_options: {})
        end

        # This operation allows you to revet the brand. However, revetting is allowed once
        # after the successful brand registration and thereafter limited to once every 3
        # months.
        sig do
          params(
            brand_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::TelnyxBrand)
        end
        def update_revet(brand_id, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
