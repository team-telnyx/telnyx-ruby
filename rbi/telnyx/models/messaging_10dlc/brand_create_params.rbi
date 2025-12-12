# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class BrandCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::BrandCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO2 2 characters country code. Example: US - United States
        sig { returns(String) }
        attr_accessor :country

        # Display name, marketing name, or DBA name of the brand.
        sig { returns(String) }
        attr_accessor :display_name

        # Valid email address of brand support contact.
        sig { returns(String) }
        attr_accessor :email

        # Entity type behind the brand. This is the form of business establishment.
        sig { returns(Telnyx::Messaging10dlc::EntityType::OrSymbol) }
        attr_accessor :entity_type

        # Vertical or industry segment of the brand or campaign.
        sig { returns(Telnyx::Messaging10dlc::Vertical::OrSymbol) }
        attr_accessor :vertical

        # Business contact email.
        #
        # Required if `entityType` is `PUBLIC_PROFIT`. Otherwise, it is recommended to
        # either omit this field or set it to `null`.
        sig { returns(T.nilable(String)) }
        attr_reader :business_contact_email

        sig { params(business_contact_email: String).void }
        attr_writer :business_contact_email

        # City name
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        # (Required for Non-profit/private/public) Legal company name.
        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
        # in U.S.
        sig { returns(T.nilable(String)) }
        attr_reader :ein

        sig { params(ein: String).void }
        attr_writer :ein

        # First name of business contact.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # IP address of the browser requesting to create brand identity.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_reseller

        sig { params(is_reseller: T::Boolean).void }
        attr_writer :is_reseller

        # Last name of business contact.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Valid mobile phone number in e.164 international format.
        sig { returns(T.nilable(String)) }
        attr_reader :mobile_phone

        sig { params(mobile_phone: String).void }
        attr_writer :mobile_phone

        # Mock brand for testing purposes. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mock

        sig { params(mock: T::Boolean).void }
        attr_writer :mock

        # Valid phone number in e.164 international format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # Postal codes. Use 5 digit zipcode for United States
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        # State. Must be 2 letters code for United States.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # (Required for public company) stock exchange.
        sig do
          returns(T.nilable(Telnyx::Messaging10dlc::StockExchange::OrSymbol))
        end
        attr_reader :stock_exchange

        sig do
          params(
            stock_exchange: Telnyx::Messaging10dlc::StockExchange::OrSymbol
          ).void
        end
        attr_writer :stock_exchange

        # (Required for public company) stock symbol.
        sig { returns(T.nilable(String)) }
        attr_reader :stock_symbol

        sig { params(stock_symbol: String).void }
        attr_writer :stock_symbol

        # Street number and name.
        sig { returns(T.nilable(String)) }
        attr_reader :street

        sig { params(street: String).void }
        attr_writer :street

        # Webhook failover URL for brand status updates.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_failover_url

        sig { params(webhook_failover_url: String).void }
        attr_writer :webhook_failover_url

        # Webhook URL for brand status updates.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        # Brand website URL.
        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
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
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
