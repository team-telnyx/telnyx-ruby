# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Brand#create
    class BrandCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute country
      #   ISO2 2 characters country code. Example: US - United States
      #
      #   @return [String]
      required :country, String

      # @!attribute display_name
      #   Display name, marketing name, or DBA name of the brand.
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
      #   @return [Symbol, Telnyx::Models::EntityType]
      required :entity_type, enum: -> { Telnyx::EntityType }, api_name: :entityType

      # @!attribute vertical
      #   Vertical or industry segment of the brand or campaign.
      #
      #   @return [Symbol, Telnyx::Models::Vertical]
      required :vertical, enum: -> { Telnyx::Vertical }

      # @!attribute business_contact_email
      #   Business contact email.
      #
      #   Required if `entityType` is `PUBLIC_PROFIT`. Otherwise, it is recommended to
      #   either omit this field or set it to `null`.
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

      # @!attribute ein
      #   (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
      #   in U.S.
      #
      #   @return [String, nil]
      optional :ein, String

      # @!attribute first_name
      #   First name of business contact.
      #
      #   @return [String, nil]
      optional :first_name, String, api_name: :firstName

      # @!attribute ip_address
      #   IP address of the browser requesting to create brand identity.
      #
      #   @return [String, nil]
      optional :ip_address, String, api_name: :ipAddress

      # @!attribute is_reseller
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
      #   Mock brand for testing purposes. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :mock, Telnyx::Internal::Type::Boolean

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

      # @!attribute state
      #   State. Must be 2 letters code for United States.
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute stock_exchange
      #   (Required for public company) stock exchange.
      #
      #   @return [Symbol, Telnyx::Models::StockExchange, nil]
      optional :stock_exchange, enum: -> { Telnyx::StockExchange }, api_name: :stockExchange

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

      # @!attribute webhook_failover_url
      #   Webhook failover URL for brand status updates.
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String, api_name: :webhookFailoverURL

      # @!attribute webhook_url
      #   Webhook URL for brand status updates.
      #
      #   @return [String, nil]
      optional :webhook_url, String, api_name: :webhookURL

      # @!attribute website
      #   Brand website URL.
      #
      #   @return [String, nil]
      optional :website, String

      # @!method initialize(country:, display_name:, email:, entity_type:, vertical:, business_contact_email: nil, city: nil, company_name: nil, ein: nil, first_name: nil, ip_address: nil, is_reseller: nil, last_name: nil, mobile_phone: nil, mock: nil, phone: nil, postal_code: nil, state: nil, stock_exchange: nil, stock_symbol: nil, street: nil, webhook_failover_url: nil, webhook_url: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BrandCreateParams} for more details.
      #
      #   @param country [String] ISO2 2 characters country code. Example: US - United States
      #
      #   @param display_name [String] Display name, marketing name, or DBA name of the brand.
      #
      #   @param email [String] Valid email address of brand support contact.
      #
      #   @param entity_type [Symbol, Telnyx::Models::EntityType] Entity type behind the brand. This is the form of business establishment.
      #
      #   @param vertical [Symbol, Telnyx::Models::Vertical] Vertical or industry segment of the brand or campaign.
      #
      #   @param business_contact_email [String] Business contact email.
      #
      #   @param city [String] City name
      #
      #   @param company_name [String] (Required for Non-profit/private/public) Legal company name.
      #
      #   @param ein [String] (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
      #
      #   @param first_name [String] First name of business contact.
      #
      #   @param ip_address [String] IP address of the browser requesting to create brand identity.
      #
      #   @param is_reseller [Boolean]
      #
      #   @param last_name [String] Last name of business contact.
      #
      #   @param mobile_phone [String] Valid mobile phone number in e.164 international format.
      #
      #   @param mock [Boolean] Mock brand for testing purposes. Defaults to false.
      #
      #   @param phone [String] Valid phone number in e.164 international format.
      #
      #   @param postal_code [String] Postal codes. Use 5 digit zipcode for United States
      #
      #   @param state [String] State. Must be 2 letters code for United States.
      #
      #   @param stock_exchange [Symbol, Telnyx::Models::StockExchange] (Required for public company) stock exchange.
      #
      #   @param stock_symbol [String] (Required for public company) stock symbol.
      #
      #   @param street [String] Street number and name.
      #
      #   @param webhook_failover_url [String] Webhook failover URL for brand status updates.
      #
      #   @param webhook_url [String] Webhook URL for brand status updates.
      #
      #   @param website [String] Brand website URL.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
