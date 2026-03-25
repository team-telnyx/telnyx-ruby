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

      sig { returns(Telnyx::EnterpriseCreateParams::BillingAddress) }
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            Telnyx::EnterpriseCreateParams::BillingAddress::OrHash
        ).void
      end
      attr_writer :billing_address

      sig { returns(Telnyx::EnterpriseCreateParams::BillingContact) }
      attr_reader :billing_contact

      sig do
        params(
          billing_contact:
            Telnyx::EnterpriseCreateParams::BillingContact::OrHash
        ).void
      end
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
      sig { returns(Telnyx::EnterpriseCreateParams::OrganizationContact) }
      attr_reader :organization_contact

      sig do
        params(
          organization_contact:
            Telnyx::EnterpriseCreateParams::OrganizationContact::OrHash
        ).void
      end
      attr_writer :organization_contact

      # Legal structure type
      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol)
      end
      attr_accessor :organization_legal_type

      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress)
      end
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address:
            Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress::OrHash
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
          billing_address:
            Telnyx::EnterpriseCreateParams::BillingAddress::OrHash,
          billing_contact:
            Telnyx::EnterpriseCreateParams::BillingContact::OrHash,
          country_code: String,
          doing_business_as: String,
          fein: String,
          industry: String,
          legal_name: String,
          number_of_employees:
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
          organization_contact:
            Telnyx::EnterpriseCreateParams::OrganizationContact::OrHash,
          organization_legal_type:
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
          organization_physical_address:
            Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress::OrHash,
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
            billing_address: Telnyx::EnterpriseCreateParams::BillingAddress,
            billing_contact: Telnyx::EnterpriseCreateParams::BillingContact,
            country_code: String,
            doing_business_as: String,
            fein: String,
            industry: String,
            legal_name: String,
            number_of_employees:
              Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
            organization_contact:
              Telnyx::EnterpriseCreateParams::OrganizationContact,
            organization_legal_type:
              Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
            organization_physical_address:
              Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress,
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

      class BillingAddress < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EnterpriseCreateParams::BillingAddress,
              Telnyx::Internal::AnyHash
            )
          end

        # State or province
        sig { returns(String) }
        attr_accessor :administrative_area

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Country name (e.g., United States)
        sig { returns(String) }
        attr_accessor :country

        # ZIP or postal code
        sig { returns(String) }
        attr_accessor :postal_code

        # Street address
        sig { returns(String) }
        attr_accessor :street_address

        # Additional address line (suite, apt, etc.)
        sig { returns(T.nilable(String)) }
        attr_accessor :extended_address

        sig do
          params(
            administrative_area: String,
            city: String,
            country: String,
            postal_code: String,
            street_address: String,
            extended_address: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # State or province
          administrative_area:,
          # City name
          city:,
          # Country name (e.g., United States)
          country:,
          # ZIP or postal code
          postal_code:,
          # Street address
          street_address:,
          # Additional address line (suite, apt, etc.)
          extended_address: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              city: String,
              country: String,
              postal_code: String,
              street_address: String,
              extended_address: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class BillingContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EnterpriseCreateParams::BillingContact,
              Telnyx::Internal::AnyHash
            )
          end

        # Contact's email address
        sig { returns(String) }
        attr_accessor :email

        # Contact's first name
        sig { returns(String) }
        attr_accessor :first_name

        # Contact's last name
        sig { returns(String) }
        attr_accessor :last_name

        # Contact's phone number (10-15 digits)
        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Contact's email address
          email:,
          # Contact's first name
          first_name:,
          # Contact's last name
          last_name:,
          # Contact's phone number (10-15 digits)
          phone_number:
        )
        end

        sig do
          override.returns(
            {
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end
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
        NUMBER_OF_EMPLOYEES_10001 =
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

      class OrganizationContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EnterpriseCreateParams::OrganizationContact,
              Telnyx::Internal::AnyHash
            )
          end

        # Contact's email address
        sig { returns(String) }
        attr_accessor :email

        # Contact's first name
        sig { returns(String) }
        attr_accessor :first_name

        # Contact's job title (required)
        sig { returns(String) }
        attr_accessor :job_title

        # Contact's last name
        sig { returns(String) }
        attr_accessor :last_name

        # Contact's phone number in E.164 format
        sig { returns(String) }
        attr_accessor :phone

        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        sig do
          params(
            email: String,
            first_name: String,
            job_title: String,
            last_name: String,
            phone: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Contact's email address
          email:,
          # Contact's first name
          first_name:,
          # Contact's job title (required)
          job_title:,
          # Contact's last name
          last_name:,
          # Contact's phone number in E.164 format
          phone:
        )
        end

        sig do
          override.returns(
            {
              email: String,
              first_name: String,
              job_title: String,
              last_name: String,
              phone: String
            }
          )
        end
        def to_hash
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

      class OrganizationPhysicalAddress < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress,
              Telnyx::Internal::AnyHash
            )
          end

        # State or province
        sig { returns(String) }
        attr_accessor :administrative_area

        # City name
        sig { returns(String) }
        attr_accessor :city

        # Country name (e.g., United States)
        sig { returns(String) }
        attr_accessor :country

        # ZIP or postal code
        sig { returns(String) }
        attr_accessor :postal_code

        # Street address
        sig { returns(String) }
        attr_accessor :street_address

        # Additional address line (suite, apt, etc.)
        sig { returns(T.nilable(String)) }
        attr_accessor :extended_address

        sig do
          params(
            administrative_area: String,
            city: String,
            country: String,
            postal_code: String,
            street_address: String,
            extended_address: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # State or province
          administrative_area:,
          # City name
          city:,
          # Country name (e.g., United States)
          country:,
          # ZIP or postal code
          postal_code:,
          # Street address
          street_address:,
          # Additional address line (suite, apt, etc.)
          extended_address: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              city: String,
              country: String,
              postal_code: String,
              street_address: String,
              extended_address: T.nilable(String)
            }
          )
        end
        def to_hash
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
