# typed: strong

module Telnyx
  module Models
    class EnterpriseUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterpriseUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :enterprise_id

      sig { returns(T.nilable(Telnyx::BillingAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::BillingAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::BillingContact)) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      sig { returns(T.nilable(String)) }
      attr_accessor :dun_bradstreet_number

      sig { returns(T.nilable(String)) }
      attr_reader :fein

      sig { params(fein: String).void }
      attr_writer :fein

      sig do
        returns(T.nilable(Telnyx::EnterpriseUpdateParams::Industry::OrSymbol))
      end
      attr_reader :industry

      sig do
        params(
          industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol
        ).void
      end
      attr_writer :industry

      # Updated state/province/country of incorporation. Optional on update.
      sig { returns(T.nilable(String)) }
      attr_reader :jurisdiction_of_incorporation

      sig { params(jurisdiction_of_incorporation: String).void }
      attr_writer :jurisdiction_of_incorporation

      # Legal name of the enterprise.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      sig { returns(T.nilable(String)) }
      attr_reader :number_of_employees

      sig { params(number_of_employees: String).void }
      attr_writer :number_of_employees

      sig { returns(T.nilable(Telnyx::OrganizationContact)) }
      attr_reader :organization_contact

      sig do
        params(organization_contact: Telnyx::OrganizationContact::OrHash).void
      end
      attr_writer :organization_contact

      sig { returns(T.nilable(String)) }
      attr_reader :organization_legal_type

      sig { params(organization_legal_type: String).void }
      attr_writer :organization_legal_type

      sig { returns(T.nilable(Telnyx::PhysicalAddress)) }
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address: Telnyx::PhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      sig { returns(T.nilable(String)) }
      attr_accessor :primary_business_domain_sic_code

      sig { returns(T.nilable(String)) }
      attr_accessor :professional_license_number

      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig do
        params(
          enterprise_id: String,
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          corporate_registration_number: T.nilable(String),
          customer_reference: String,
          doing_business_as: String,
          dun_bradstreet_number: T.nilable(String),
          fein: String,
          industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol,
          jurisdiction_of_incorporation: String,
          legal_name: String,
          number_of_employees: String,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type: String,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          primary_business_domain_sic_code: T.nilable(String),
          professional_license_number: T.nilable(String),
          website: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        enterprise_id:,
        billing_address: nil,
        billing_contact: nil,
        corporate_registration_number: nil,
        customer_reference: nil,
        doing_business_as: nil,
        dun_bradstreet_number: nil,
        fein: nil,
        industry: nil,
        # Updated state/province/country of incorporation. Optional on update.
        jurisdiction_of_incorporation: nil,
        # Legal name of the enterprise.
        legal_name: nil,
        number_of_employees: nil,
        organization_contact: nil,
        organization_legal_type: nil,
        organization_physical_address: nil,
        primary_business_domain_sic_code: nil,
        professional_license_number: nil,
        website: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enterprise_id: String,
            billing_address: Telnyx::BillingAddress,
            billing_contact: Telnyx::BillingContact,
            corporate_registration_number: T.nilable(String),
            customer_reference: String,
            doing_business_as: String,
            dun_bradstreet_number: T.nilable(String),
            fein: String,
            industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol,
            jurisdiction_of_incorporation: String,
            legal_name: String,
            number_of_employees: String,
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type: String,
            organization_physical_address: Telnyx::PhysicalAddress,
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            website: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Industry
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseUpdateParams::Industry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(
            :accounting,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        FINANCE =
          T.let(
            :finance,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BILLING =
          T.let(
            :billing,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        COLLECTIONS =
          T.let(
            :collections,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        CHARITY =
          T.let(
            :charity,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        COMMUNICATIONS =
          T.let(
            :communications,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TELECOM =
          T.let(
            :telecom,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        CUSTOMER_SERVICE =
          T.let(
            :"customer service",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SUPPORT =
          T.let(
            :support,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        DELIVERY =
          T.let(
            :delivery,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SHIPPING =
          T.let(
            :shipping,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        LOGISTICS =
          T.let(
            :logistics,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        EDUCATION =
          T.let(
            :education,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        FINANCIAL =
          T.let(
            :financial,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BANKING =
          T.let(
            :banking,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        PUBLIC =
          T.let(:public, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        HEALTHCARE =
          T.let(
            :healthcare,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        HEALTH =
          T.let(:health, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        PHARMACY =
          T.let(
            :pharmacy,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        MEDICAL =
          T.let(
            :medical,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        INSURANCE =
          T.let(
            :insurance,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        LEGAL =
          T.let(:legal, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        LAW =
          T.let(:law, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        NOTIFICATIONS =
          T.let(
            :notifications,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SCHEDULING =
          T.let(
            :scheduling,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :"real estate",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        PROPERTY =
          T.let(
            :property,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        RETAIL =
          T.let(:retail, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        ECOMMERCE =
          T.let(
            :ecommerce,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SALES =
          T.let(:sales, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        MARKETING =
          T.let(
            :marketing,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TECHNOLOGY =
          T.let(
            :technology,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TECH =
          T.let(:tech, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        MEDIA =
          T.let(:media, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        SURVEYS =
          T.let(
            :surveys,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        MARKET_RESEARCH =
          T.let(
            :"market research",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TRAVEL =
          T.let(:travel, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        HOSPITALITY =
          T.let(
            :hospitality,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        HOTEL =
          T.let(:hotel, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
