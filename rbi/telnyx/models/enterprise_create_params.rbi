# typed: strong

module Telnyx
  module Models
    class EnterpriseCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterpriseCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::BillingAddress) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::BillingAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(Telnyx::BillingContact) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # Country code. Currently only 'US' is accepted.
      sig { returns(String) }
      attr_accessor :country_code

      # Primary business name / DBA name
      sig { returns(String) }
      attr_accessor :doing_business_as

      # Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number
      # (minimum 9 digits).
      sig { returns(String) }
      attr_accessor :fein

      # Industry classification. Case-insensitive. Accepted values: accounting, finance,
      # billing, collections, business, charity, nonprofit, communications, telecom,
      # customer service, support, delivery, shipping, logistics, education, financial,
      # banking, government, public, healthcare, health, pharmacy, medical, insurance,
      # legal, law, notifications, scheduling, real estate, property, retail, ecommerce,
      # sales, marketing, software, technology, tech, media, surveys, market research,
      # travel, hospitality, hotel
      sig { returns(String) }
      attr_accessor :industry

      # Legal name of the enterprise
      sig { returns(String) }
      attr_accessor :legal_name

      # Employee count range
      sig do
        returns(Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol)
      end
      attr_accessor :number_of_employees

      # Organization contact information. Note: the response returns this object with
      # the phone field as 'phone' (not 'phone_number').
      sig { returns(Telnyx::OrganizationContact) }
      attr_reader :organization_contact

      sig do
        params(organization_contact: Telnyx::OrganizationContact::OrHash).void
      end
      attr_writer :organization_contact

      # Legal structure type
      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol)
      end
      attr_accessor :organization_legal_type

      sig { returns(Telnyx::PhysicalAddress) }
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address: Telnyx::PhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      # Type of organization
      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol)
      end
      attr_accessor :organization_type

      # Enterprise website URL. Accepts any string — no URL format validation enforced.
      sig { returns(String) }
      attr_accessor :website

      # Corporate registration number (optional)
      sig { returns(T.nilable(String)) }
      attr_reader :corporate_registration_number

      sig { params(corporate_registration_number: String).void }
      attr_writer :corporate_registration_number

      # Optional customer reference identifier for your own tracking
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # D-U-N-S Number (optional)
      sig { returns(T.nilable(String)) }
      attr_reader :dun_bradstreet_number

      sig { params(dun_bradstreet_number: String).void }
      attr_writer :dun_bradstreet_number

      # SIC Code (optional)
      sig { returns(T.nilable(String)) }
      attr_reader :primary_business_domain_sic_code

      sig { params(primary_business_domain_sic_code: String).void }
      attr_writer :primary_business_domain_sic_code

      # Professional license number (optional)
      sig { returns(T.nilable(String)) }
      attr_reader :professional_license_number

      sig { params(professional_license_number: String).void }
      attr_writer :professional_license_number

      # Role type in Branded Calling / Number Reputation services
      sig do
        returns(T.nilable(Telnyx::EnterpriseCreateParams::RoleType::OrSymbol))
      end
      attr_reader :role_type

      sig do
        params(
          role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol
        ).void
      end
      attr_writer :role_type

      sig do
        params(
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          country_code: String,
          doing_business_as: String,
          fein: String,
          industry: String,
          legal_name: String,
          number_of_employees:
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type:
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          organization_type:
            Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol,
          website: String,
          corporate_registration_number: String,
          customer_reference: String,
          dun_bradstreet_number: String,
          primary_business_domain_sic_code: String,
          professional_license_number: String,
          role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        billing_address:,
        billing_contact:,
        # Country code. Currently only 'US' is accepted.
        country_code:,
        # Primary business name / DBA name
        doing_business_as:,
        # Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number
        # (minimum 9 digits).
        fein:,
        # Industry classification. Case-insensitive. Accepted values: accounting, finance,
        # billing, collections, business, charity, nonprofit, communications, telecom,
        # customer service, support, delivery, shipping, logistics, education, financial,
        # banking, government, public, healthcare, health, pharmacy, medical, insurance,
        # legal, law, notifications, scheduling, real estate, property, retail, ecommerce,
        # sales, marketing, software, technology, tech, media, surveys, market research,
        # travel, hospitality, hotel
        industry:,
        # Legal name of the enterprise
        legal_name:,
        # Employee count range
        number_of_employees:,
        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        organization_contact:,
        # Legal structure type
        organization_legal_type:,
        organization_physical_address:,
        # Type of organization
        organization_type:,
        # Enterprise website URL. Accepts any string — no URL format validation enforced.
        website:,
        # Corporate registration number (optional)
        corporate_registration_number: nil,
        # Optional customer reference identifier for your own tracking
        customer_reference: nil,
        # D-U-N-S Number (optional)
        dun_bradstreet_number: nil,
        # SIC Code (optional)
        primary_business_domain_sic_code: nil,
        # Professional license number (optional)
        professional_license_number: nil,
        # Role type in Branded Calling / Number Reputation services
        role_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_address: Telnyx::BillingAddress,
            billing_contact: Telnyx::BillingContact,
            country_code: String,
            doing_business_as: String,
            fein: String,
            industry: String,
            legal_name: String,
            number_of_employees:
              Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type:
              Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
            organization_physical_address: Telnyx::PhysicalAddress,
            organization_type:
              Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol,
            website: String,
            corporate_registration_number: String,
            customer_reference: String,
            dun_bradstreet_number: String,
            primary_business_domain_sic_code: String,
            professional_license_number: String,
            role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Employee count range
      module NumberOfEmployees
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::NumberOfEmployees)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_OF_EMPLOYEES_1_10 =
          T.let(
            :"1-10",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_11_50 =
          T.let(
            :"11-50",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_51_200 =
          T.let(
            :"51-200",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_201_500 =
          T.let(
            :"201-500",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_501_2000 =
          T.let(
            :"501-2000",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_2001_10000 =
          T.let(
            :"2001-10000",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_10001_PLUS =
          T.let(
            :"10001+",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Legal structure type
      module OrganizationLegalType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::OrganizationLegalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Type of organization
      module OrganizationType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::OrganizationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMERCIAL =
          T.let(
            :commercial,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Role type in Branded Calling / Number Reputation services
      module RoleType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::RoleType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTERPRISE =
          T.let(
            :enterprise,
            Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol
          )
        BPO =
          T.let(:bpo, Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
