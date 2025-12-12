# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Brand#create
      class TelnyxBrand < Telnyx::Internal::Type::BaseModel
        # @!attribute brand_relationship
        #   Brand relationship to the CSP.
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::TelnyxBrand::BrandRelationship]
        required :brand_relationship,
                 enum: -> { Telnyx::Number10dlc::TelnyxBrand::BrandRelationship },
                 api_name: :brandRelationship

        # @!attribute country
        #   ISO2 2 characters country code. Example: US - United States
        #
        #   @return [String]
        required :country, String

        # @!attribute display_name
        #   Display or marketing name of the brand.
        #
        #   @return [String]
        required :display_name, String, api_name: :displayName

        # @!attribute email
        #   Valid email address of brand support contact.
        #
        #   @return [String]
        required :email, String

        # @!attribute entity_type
        #   Entity type behind the brand. This is the form of business establishment.
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::EntityType]
        required :entity_type, enum: -> { Telnyx::Number10dlc::EntityType }, api_name: :entityType

        # @!attribute vertical
        #   Vertical or industry segment of the brand.
        #
        #   @return [String]
        required :vertical, String

        # @!attribute alt_business_id
        #   Alternate business identifier such as DUNS, LEI, or GIIN
        #
        #   @return [String, nil]
        optional :alt_business_id, String, api_name: :altBusinessId

        # @!attribute alt_business_id_type
        #   An enumeration.
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::AltBusinessIDType, nil]
        optional :alt_business_id_type,
                 enum: -> { Telnyx::Number10dlc::AltBusinessIDType },
                 api_name: :altBusinessIdType

        # @!attribute brand_id
        #   Unique identifier assigned to the brand.
        #
        #   @return [String, nil]
        optional :brand_id, String, api_name: :brandId

        # @!attribute business_contact_email
        #   Business contact email.
        #
        #   Required if `entityType` is `PUBLIC_PROFIT`.
        #
        #   @return [String, nil]
        optional :business_contact_email, String, api_name: :businessContactEmail

        # @!attribute city
        #   City name
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute company_name
        #   (Required for Non-profit/private/public) Legal company name.
        #
        #   @return [String, nil]
        optional :company_name, String, api_name: :companyName

        # @!attribute created_at
        #   Date and time that the brand was created at.
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute csp_id
        #   Unique identifier assigned to the csp by the registry.
        #
        #   @return [String, nil]
        optional :csp_id, String, api_name: :cspId

        # @!attribute ein
        #   (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
        #   in U.S.
        #
        #   @return [String, nil]
        optional :ein, String

        # @!attribute failure_reasons
        #   Failure reasons for brand
        #
        #   @return [String, nil]
        optional :failure_reasons, String, api_name: :failureReasons

        # @!attribute first_name
        #   First name of business contact.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute identity_status
        #   The verification status of an active brand
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::BrandIdentityStatus, nil]
        optional :identity_status,
                 enum: -> { Telnyx::Number10dlc::BrandIdentityStatus },
                 api_name: :identityStatus

        # @!attribute ip_address
        #   IP address of the browser requesting to create brand identity.
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :ipAddress

        # @!attribute is_reseller
        #   Indicates whether this brand is known to be a reseller
        #
        #   @return [Boolean, nil]
        optional :is_reseller, Telnyx::Internal::Type::Boolean, api_name: :isReseller

        # @!attribute last_name
        #   Last name of business contact.
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute mobile_phone
        #   Valid mobile phone number in e.164 international format.
        #
        #   @return [String, nil]
        optional :mobile_phone, String, api_name: :mobilePhone

        # @!attribute mock
        #   Mock brand for testing purposes
        #
        #   @return [Boolean, nil]
        optional :mock, Telnyx::Internal::Type::Boolean

        # @!attribute optional_attributes
        #
        #   @return [Telnyx::Models::Number10dlc::TelnyxBrand::OptionalAttributes, nil]
        optional :optional_attributes,
                 -> { Telnyx::Number10dlc::TelnyxBrand::OptionalAttributes },
                 api_name: :optionalAttributes

        # @!attribute phone
        #   Valid phone number in e.164 international format.
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute postal_code
        #   Postal codes. Use 5 digit zipcode for United States
        #
        #   @return [String, nil]
        optional :postal_code, String, api_name: :postalCode

        # @!attribute reference_id
        #   Unique identifier Telnyx assigned to the brand - the brandId
        #
        #   @return [String, nil]
        optional :reference_id, String, api_name: :referenceId

        # @!attribute state
        #   State. Must be 2 letters code for United States.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute status
        #   Status of the brand
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::TelnyxBrand::Status, nil]
        optional :status, enum: -> { Telnyx::Number10dlc::TelnyxBrand::Status }

        # @!attribute stock_exchange
        #   (Required for public company) stock exchange.
        #
        #   @return [Symbol, Telnyx::Models::Number10dlc::StockExchange, nil]
        optional :stock_exchange, enum: -> { Telnyx::Number10dlc::StockExchange }, api_name: :stockExchange

        # @!attribute stock_symbol
        #   (Required for public company) stock symbol.
        #
        #   @return [String, nil]
        optional :stock_symbol, String, api_name: :stockSymbol

        # @!attribute street
        #   Street number and name.
        #
        #   @return [String, nil]
        optional :street, String

        # @!attribute tcr_brand_id
        #   Unique identifier assigned to the brand by the registry.
        #
        #   @return [String, nil]
        optional :tcr_brand_id, String, api_name: :tcrBrandId

        # @!attribute universal_ein
        #   Universal EIN of Brand, Read Only.
        #
        #   @return [String, nil]
        optional :universal_ein, String, api_name: :universalEin

        # @!attribute updated_at
        #   Date and time that the brand was last updated at.
        #
        #   @return [String, nil]
        optional :updated_at, String, api_name: :updatedAt

        # @!attribute webhook_failover_url
        #   Failover webhook to which brand status updates are sent.
        #
        #   @return [String, nil]
        optional :webhook_failover_url, String, api_name: :webhookFailoverURL

        # @!attribute webhook_url
        #   Webhook to which brand status updates are sent.
        #
        #   @return [String, nil]
        optional :webhook_url, String, api_name: :webhookURL

        # @!attribute website
        #   Brand website URL.
        #
        #   @return [String, nil]
        optional :website, String

        # @!method initialize(brand_relationship:, country:, display_name:, email:, entity_type:, vertical:, alt_business_id: nil, alt_business_id_type: nil, brand_id: nil, business_contact_email: nil, city: nil, company_name: nil, created_at: nil, csp_id: nil, ein: nil, failure_reasons: nil, first_name: nil, identity_status: nil, ip_address: nil, is_reseller: nil, last_name: nil, mobile_phone: nil, mock: nil, optional_attributes: nil, phone: nil, postal_code: nil, reference_id: nil, state: nil, status: nil, stock_exchange: nil, stock_symbol: nil, street: nil, tcr_brand_id: nil, universal_ein: nil, updated_at: nil, webhook_failover_url: nil, webhook_url: nil, website: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Number10dlc::TelnyxBrand} for more details.
        #
        #   Telnyx-specific extensions to The Campaign Registry's `Brand` type
        #
        #   @param brand_relationship [Symbol, Telnyx::Models::Number10dlc::TelnyxBrand::BrandRelationship] Brand relationship to the CSP.
        #
        #   @param country [String] ISO2 2 characters country code. Example: US - United States
        #
        #   @param display_name [String] Display or marketing name of the brand.
        #
        #   @param email [String] Valid email address of brand support contact.
        #
        #   @param entity_type [Symbol, Telnyx::Models::Number10dlc::EntityType] Entity type behind the brand. This is the form of business establishment.
        #
        #   @param vertical [String] Vertical or industry segment of the brand.
        #
        #   @param alt_business_id [String] Alternate business identifier such as DUNS, LEI, or GIIN
        #
        #   @param alt_business_id_type [Symbol, Telnyx::Models::Number10dlc::AltBusinessIDType] An enumeration.
        #
        #   @param brand_id [String] Unique identifier assigned to the brand.
        #
        #   @param business_contact_email [String] Business contact email.
        #
        #   @param city [String] City name
        #
        #   @param company_name [String] (Required for Non-profit/private/public) Legal company name.
        #
        #   @param created_at [String] Date and time that the brand was created at.
        #
        #   @param csp_id [String] Unique identifier assigned to the csp by the registry.
        #
        #   @param ein [String] (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
        #
        #   @param failure_reasons [String] Failure reasons for brand
        #
        #   @param first_name [String] First name of business contact.
        #
        #   @param identity_status [Symbol, Telnyx::Models::Number10dlc::BrandIdentityStatus] The verification status of an active brand
        #
        #   @param ip_address [String] IP address of the browser requesting to create brand identity.
        #
        #   @param is_reseller [Boolean] Indicates whether this brand is known to be a reseller
        #
        #   @param last_name [String] Last name of business contact.
        #
        #   @param mobile_phone [String] Valid mobile phone number in e.164 international format.
        #
        #   @param mock [Boolean] Mock brand for testing purposes
        #
        #   @param optional_attributes [Telnyx::Models::Number10dlc::TelnyxBrand::OptionalAttributes]
        #
        #   @param phone [String] Valid phone number in e.164 international format.
        #
        #   @param postal_code [String] Postal codes. Use 5 digit zipcode for United States
        #
        #   @param reference_id [String] Unique identifier Telnyx assigned to the brand - the brandId
        #
        #   @param state [String] State. Must be 2 letters code for United States.
        #
        #   @param status [Symbol, Telnyx::Models::Number10dlc::TelnyxBrand::Status] Status of the brand
        #
        #   @param stock_exchange [Symbol, Telnyx::Models::Number10dlc::StockExchange] (Required for public company) stock exchange.
        #
        #   @param stock_symbol [String] (Required for public company) stock symbol.
        #
        #   @param street [String] Street number and name.
        #
        #   @param tcr_brand_id [String] Unique identifier assigned to the brand by the registry.
        #
        #   @param universal_ein [String] Universal EIN of Brand, Read Only.
        #
        #   @param updated_at [String] Date and time that the brand was last updated at.
        #
        #   @param webhook_failover_url [String] Failover webhook to which brand status updates are sent.
        #
        #   @param webhook_url [String] Webhook to which brand status updates are sent.
        #
        #   @param website [String] Brand website URL.

        # Brand relationship to the CSP.
        #
        # @see Telnyx::Models::Number10dlc::TelnyxBrand#brand_relationship
        module BrandRelationship
          extend Telnyx::Internal::Type::Enum

          BASIC_ACCOUNT = :BASIC_ACCOUNT
          SMALL_ACCOUNT = :SMALL_ACCOUNT
          MEDIUM_ACCOUNT = :MEDIUM_ACCOUNT
          LARGE_ACCOUNT = :LARGE_ACCOUNT
          KEY_ACCOUNT = :KEY_ACCOUNT

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Number10dlc::TelnyxBrand#optional_attributes
        class OptionalAttributes < Telnyx::Internal::Type::BaseModel
          # @!attribute tax_exempt_status
          #   The tax exempt status of the brand
          #
          #   @return [String, nil]
          optional :tax_exempt_status, String, api_name: :taxExemptStatus

          # @!method initialize(tax_exempt_status: nil)
          #   @param tax_exempt_status [String] The tax exempt status of the brand
        end

        # Status of the brand
        #
        # @see Telnyx::Models::Number10dlc::TelnyxBrand#status
        module Status
          extend Telnyx::Internal::Type::Enum

          OK = :OK
          REGISTRATION_PENDING = :REGISTRATION_PENDING
          REGISTRATION_FAILED = :REGISTRATION_FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
