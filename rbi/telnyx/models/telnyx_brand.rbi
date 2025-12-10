# typed: strong

module Telnyx
  module Models
    class TelnyxBrand < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::TelnyxBrand, Telnyx::Internal::AnyHash) }

      # Brand relationship to the CSP.
      sig { returns(Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol) }
      attr_accessor :brand_relationship

      # ISO2 2 characters country code. Example: US - United States
      sig { returns(String) }
      attr_accessor :country

      # Display or marketing name of the brand.
      sig { returns(String) }
      attr_accessor :display_name

      # Valid email address of brand support contact.
      sig { returns(String) }
      attr_accessor :email

      # Entity type behind the brand. This is the form of business establishment.
      sig { returns(Telnyx::EntityType::TaggedSymbol) }
      attr_accessor :entity_type

      # Vertical or industry segment of the brand.
      sig { returns(String) }
      attr_accessor :vertical

      # Alternate business identifier such as DUNS, LEI, or GIIN
      sig { returns(T.nilable(String)) }
      attr_reader :alt_business_id

      sig { params(alt_business_id: String).void }
      attr_writer :alt_business_id

      # An enumeration.
      sig { returns(T.nilable(Telnyx::AltBusinessIDType::TaggedSymbol)) }
      attr_reader :alt_business_id_type

      sig do
        params(alt_business_id_type: Telnyx::AltBusinessIDType::OrSymbol).void
      end
      attr_writer :alt_business_id_type

      # Unique identifier assigned to the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # Business contact email.
      #
      # Required if `entityType` is `PUBLIC_PROFIT`.
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

      # Date and time that the brand was created at.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Unique identifier assigned to the csp by the registry.
      sig { returns(T.nilable(String)) }
      attr_reader :csp_id

      sig { params(csp_id: String).void }
      attr_writer :csp_id

      # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
      # in U.S.
      sig { returns(T.nilable(String)) }
      attr_reader :ein

      sig { params(ein: String).void }
      attr_writer :ein

      # Failure reasons for brand
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reasons

      sig { params(failure_reasons: String).void }
      attr_writer :failure_reasons

      # First name of business contact.
      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      # The verification status of an active brand
      sig { returns(T.nilable(Telnyx::BrandIdentityStatus::TaggedSymbol)) }
      attr_reader :identity_status

      sig do
        params(identity_status: Telnyx::BrandIdentityStatus::OrSymbol).void
      end
      attr_writer :identity_status

      # IP address of the browser requesting to create brand identity.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address

      sig { params(ip_address: String).void }
      attr_writer :ip_address

      # Indicates whether this brand is known to be a reseller
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

      # Mock brand for testing purposes
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :mock

      sig { params(mock: T::Boolean).void }
      attr_writer :mock

      sig { returns(T.nilable(Telnyx::TelnyxBrand::OptionalAttributes)) }
      attr_reader :optional_attributes

      sig do
        params(
          optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes::OrHash
        ).void
      end
      attr_writer :optional_attributes

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

      # Unique identifier Telnyx assigned to the brand - the brandId
      sig { returns(T.nilable(String)) }
      attr_reader :reference_id

      sig { params(reference_id: String).void }
      attr_writer :reference_id

      # State. Must be 2 letters code for United States.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Status of the brand
      sig { returns(T.nilable(Telnyx::TelnyxBrand::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::TelnyxBrand::Status::OrSymbol).void }
      attr_writer :status

      # (Required for public company) stock exchange.
      sig { returns(T.nilable(Telnyx::StockExchange::TaggedSymbol)) }
      attr_reader :stock_exchange

      sig { params(stock_exchange: Telnyx::StockExchange::OrSymbol).void }
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

      # Unique identifier assigned to the brand by the registry.
      sig { returns(T.nilable(String)) }
      attr_reader :tcr_brand_id

      sig { params(tcr_brand_id: String).void }
      attr_writer :tcr_brand_id

      # Universal EIN of Brand, Read Only.
      sig { returns(T.nilable(String)) }
      attr_reader :universal_ein

      sig { params(universal_ein: String).void }
      attr_writer :universal_ein

      # Date and time that the brand was last updated at.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Failover webhook to which brand status updates are sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      # Webhook to which brand status updates are sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      # Brand website URL.
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      # Telnyx-specific extensions to The Campaign Registry's `Brand` type
      sig do
        params(
          brand_relationship: Telnyx::TelnyxBrand::BrandRelationship::OrSymbol,
          country: String,
          display_name: String,
          email: String,
          entity_type: Telnyx::EntityType::OrSymbol,
          vertical: String,
          alt_business_id: String,
          alt_business_id_type: Telnyx::AltBusinessIDType::OrSymbol,
          brand_id: String,
          business_contact_email: String,
          city: String,
          company_name: String,
          created_at: String,
          csp_id: String,
          ein: String,
          failure_reasons: String,
          first_name: String,
          identity_status: Telnyx::BrandIdentityStatus::OrSymbol,
          ip_address: String,
          is_reseller: T::Boolean,
          last_name: String,
          mobile_phone: String,
          mock: T::Boolean,
          optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes::OrHash,
          phone: String,
          postal_code: String,
          reference_id: String,
          state: String,
          status: Telnyx::TelnyxBrand::Status::OrSymbol,
          stock_exchange: Telnyx::StockExchange::OrSymbol,
          stock_symbol: String,
          street: String,
          tcr_brand_id: String,
          universal_ein: String,
          updated_at: String,
          webhook_failover_url: String,
          webhook_url: String,
          website: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Brand relationship to the CSP.
        brand_relationship:,
        # ISO2 2 characters country code. Example: US - United States
        country:,
        # Display or marketing name of the brand.
        display_name:,
        # Valid email address of brand support contact.
        email:,
        # Entity type behind the brand. This is the form of business establishment.
        entity_type:,
        # Vertical or industry segment of the brand.
        vertical:,
        # Alternate business identifier such as DUNS, LEI, or GIIN
        alt_business_id: nil,
        # An enumeration.
        alt_business_id_type: nil,
        # Unique identifier assigned to the brand.
        brand_id: nil,
        # Business contact email.
        #
        # Required if `entityType` is `PUBLIC_PROFIT`.
        business_contact_email: nil,
        # City name
        city: nil,
        # (Required for Non-profit/private/public) Legal company name.
        company_name: nil,
        # Date and time that the brand was created at.
        created_at: nil,
        # Unique identifier assigned to the csp by the registry.
        csp_id: nil,
        # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits
        # in U.S.
        ein: nil,
        # Failure reasons for brand
        failure_reasons: nil,
        # First name of business contact.
        first_name: nil,
        # The verification status of an active brand
        identity_status: nil,
        # IP address of the browser requesting to create brand identity.
        ip_address: nil,
        # Indicates whether this brand is known to be a reseller
        is_reseller: nil,
        # Last name of business contact.
        last_name: nil,
        # Valid mobile phone number in e.164 international format.
        mobile_phone: nil,
        # Mock brand for testing purposes
        mock: nil,
        optional_attributes: nil,
        # Valid phone number in e.164 international format.
        phone: nil,
        # Postal codes. Use 5 digit zipcode for United States
        postal_code: nil,
        # Unique identifier Telnyx assigned to the brand - the brandId
        reference_id: nil,
        # State. Must be 2 letters code for United States.
        state: nil,
        # Status of the brand
        status: nil,
        # (Required for public company) stock exchange.
        stock_exchange: nil,
        # (Required for public company) stock symbol.
        stock_symbol: nil,
        # Street number and name.
        street: nil,
        # Unique identifier assigned to the brand by the registry.
        tcr_brand_id: nil,
        # Universal EIN of Brand, Read Only.
        universal_ein: nil,
        # Date and time that the brand was last updated at.
        updated_at: nil,
        # Failover webhook to which brand status updates are sent.
        webhook_failover_url: nil,
        # Webhook to which brand status updates are sent.
        webhook_url: nil,
        # Brand website URL.
        website: nil
      )
      end

      sig do
        override.returns(
          {
            brand_relationship:
              Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol,
            country: String,
            display_name: String,
            email: String,
            entity_type: Telnyx::EntityType::TaggedSymbol,
            vertical: String,
            alt_business_id: String,
            alt_business_id_type: Telnyx::AltBusinessIDType::TaggedSymbol,
            brand_id: String,
            business_contact_email: String,
            city: String,
            company_name: String,
            created_at: String,
            csp_id: String,
            ein: String,
            failure_reasons: String,
            first_name: String,
            identity_status: Telnyx::BrandIdentityStatus::TaggedSymbol,
            ip_address: String,
            is_reseller: T::Boolean,
            last_name: String,
            mobile_phone: String,
            mock: T::Boolean,
            optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes,
            phone: String,
            postal_code: String,
            reference_id: String,
            state: String,
            status: Telnyx::TelnyxBrand::Status::TaggedSymbol,
            stock_exchange: Telnyx::StockExchange::TaggedSymbol,
            stock_symbol: String,
            street: String,
            tcr_brand_id: String,
            universal_ein: String,
            updated_at: String,
            webhook_failover_url: String,
            webhook_url: String,
            website: String
          }
        )
      end
      def to_hash
      end

      # Brand relationship to the CSP.
      module BrandRelationship
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::TelnyxBrand::BrandRelationship) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASIC_ACCOUNT =
          T.let(
            :BASIC_ACCOUNT,
            Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol
          )
        SMALL_ACCOUNT =
          T.let(
            :SMALL_ACCOUNT,
            Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol
          )
        MEDIUM_ACCOUNT =
          T.let(
            :MEDIUM_ACCOUNT,
            Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol
          )
        LARGE_ACCOUNT =
          T.let(
            :LARGE_ACCOUNT,
            Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol
          )
        KEY_ACCOUNT =
          T.let(
            :KEY_ACCOUNT,
            Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TelnyxBrand::BrandRelationship::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class OptionalAttributes < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TelnyxBrand::OptionalAttributes,
              Telnyx::Internal::AnyHash
            )
          end

        # The tax exempt status of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :tax_exempt_status

        sig { params(tax_exempt_status: String).void }
        attr_writer :tax_exempt_status

        sig { params(tax_exempt_status: String).returns(T.attached_class) }
        def self.new(
          # The tax exempt status of the brand
          tax_exempt_status: nil
        )
        end

        sig { override.returns({ tax_exempt_status: String }) }
        def to_hash
        end
      end

      # Status of the brand
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::TelnyxBrand::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK = T.let(:OK, Telnyx::TelnyxBrand::Status::TaggedSymbol)
        REGISTRATION_PENDING =
          T.let(
            :REGISTRATION_PENDING,
            Telnyx::TelnyxBrand::Status::TaggedSymbol
          )
        REGISTRATION_FAILED =
          T.let(:REGISTRATION_FAILED, Telnyx::TelnyxBrand::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::TelnyxBrand::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
