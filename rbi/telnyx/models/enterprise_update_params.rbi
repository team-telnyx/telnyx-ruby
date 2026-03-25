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

      sig { returns(T.nilable(Telnyx::EnterpriseUpdateParams::BillingAddress)) }
      attr_reader :billing_address

      sig do
        params(
          billing_address:
            Telnyx::EnterpriseUpdateParams::BillingAddress::OrHash
        ).void
      end
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::EnterpriseUpdateParams::BillingContact)) }
      attr_reader :billing_contact

      sig do
        params(
          billing_contact:
            Telnyx::EnterpriseUpdateParams::BillingContact::OrHash
        ).void
      end
      attr_writer :billing_contact

      # Corporate registration number
      sig { returns(T.nilable(String)) }
      attr_reader :corporate_registration_number

      sig { params(corporate_registration_number: String).void }
      attr_writer :corporate_registration_number

      # Customer reference identifier
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # DBA name
      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # D-U-N-S Number
      sig { returns(T.nilable(String)) }
      attr_reader :dun_bradstreet_number

      sig { params(dun_bradstreet_number: String).void }
      attr_writer :dun_bradstreet_number

      # Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
      sig { returns(T.nilable(String)) }
      attr_reader :fein

      sig { params(fein: String).void }
      attr_writer :fein

      # Industry classification
      sig { returns(T.nilable(String)) }
      attr_reader :industry

      sig { params(industry: String).void }
      attr_writer :industry

      # Legal name of the enterprise
      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      # Employee count range
      sig do
        returns(
          T.nilable(Telnyx::EnterpriseUpdateParams::NumberOfEmployees::OrSymbol)
        )
      end
      attr_reader :number_of_employees

      sig do
        params(
          number_of_employees:
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::OrSymbol
        ).void
      end
      attr_writer :number_of_employees

      # Organization contact information. Note: the response returns this object with
      # the phone field as 'phone' (not 'phone_number').
      sig do
        returns(T.nilable(Telnyx::EnterpriseUpdateParams::OrganizationContact))
      end
      attr_reader :organization_contact

      sig do
        params(
          organization_contact:
            Telnyx::EnterpriseUpdateParams::OrganizationContact::OrHash
        ).void
      end
      attr_writer :organization_contact

      # Legal structure type
      sig do
        returns(
          T.nilable(
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::OrSymbol
          )
        )
      end
      attr_reader :organization_legal_type

      sig do
        params(
          organization_legal_type:
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::OrSymbol
        ).void
      end
      attr_writer :organization_legal_type

      sig do
        returns(
          T.nilable(Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress)
        )
      end
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address:
            Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      # SIC Code
      sig { returns(T.nilable(String)) }
      attr_reader :primary_business_domain_sic_code

      sig { params(primary_business_domain_sic_code: String).void }
      attr_writer :primary_business_domain_sic_code

      # Professional license number
      sig { returns(T.nilable(String)) }
      attr_reader :professional_license_number

      sig { params(professional_license_number: String).void }
      attr_writer :professional_license_number

      # Company website URL
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig do
        params(
          enterprise_id: String,
          billing_address:
            Telnyx::EnterpriseUpdateParams::BillingAddress::OrHash,
          billing_contact:
            Telnyx::EnterpriseUpdateParams::BillingContact::OrHash,
          corporate_registration_number: String,
          customer_reference: String,
          doing_business_as: String,
          dun_bradstreet_number: String,
          fein: String,
          industry: String,
          legal_name: String,
          number_of_employees:
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::OrSymbol,
          organization_contact:
            Telnyx::EnterpriseUpdateParams::OrganizationContact::OrHash,
          organization_legal_type:
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::OrSymbol,
          organization_physical_address:
            Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress::OrHash,
          primary_business_domain_sic_code: String,
          professional_license_number: String,
          website: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        enterprise_id:,
        billing_address: nil,
        billing_contact: nil,
        # Corporate registration number
        corporate_registration_number: nil,
        # Customer reference identifier
        customer_reference: nil,
        # DBA name
        doing_business_as: nil,
        # D-U-N-S Number
        dun_bradstreet_number: nil,
        # Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
        fein: nil,
        # Industry classification
        industry: nil,
        # Legal name of the enterprise
        legal_name: nil,
        # Employee count range
        number_of_employees: nil,
        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        organization_contact: nil,
        # Legal structure type
        organization_legal_type: nil,
        organization_physical_address: nil,
        # SIC Code
        primary_business_domain_sic_code: nil,
        # Professional license number
        professional_license_number: nil,
        # Company website URL
        website: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enterprise_id: String,
            billing_address: Telnyx::EnterpriseUpdateParams::BillingAddress,
            billing_contact: Telnyx::EnterpriseUpdateParams::BillingContact,
            corporate_registration_number: String,
            customer_reference: String,
            doing_business_as: String,
            dun_bradstreet_number: String,
            fein: String,
            industry: String,
            legal_name: String,
            number_of_employees:
              Telnyx::EnterpriseUpdateParams::NumberOfEmployees::OrSymbol,
            organization_contact:
              Telnyx::EnterpriseUpdateParams::OrganizationContact,
            organization_legal_type:
              Telnyx::EnterpriseUpdateParams::OrganizationLegalType::OrSymbol,
            organization_physical_address:
              Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress,
            primary_business_domain_sic_code: String,
            professional_license_number: String,
            website: String,
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
              Telnyx::EnterpriseUpdateParams::BillingAddress,
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
              Telnyx::EnterpriseUpdateParams::BillingContact,
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
            T.all(Symbol, Telnyx::EnterpriseUpdateParams::NumberOfEmployees)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_OF_EMPLOYEES_1_10 =
          T.let(
            :"1-10",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_11_50 =
          T.let(
            :"11-50",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_51_200 =
          T.let(
            :"51-200",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_201_500 =
          T.let(
            :"201-500",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_501_2000 =
          T.let(
            :"501-2000",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_2001_10000 =
          T.let(
            :"2001-10000",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_10001 =
          T.let(
            :"10001+",
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseUpdateParams::NumberOfEmployees::TaggedSymbol
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
              Telnyx::EnterpriseUpdateParams::OrganizationContact,
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
            T.all(Symbol, Telnyx::EnterpriseUpdateParams::OrganizationLegalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseUpdateParams::OrganizationLegalType::TaggedSymbol
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
              Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress,
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
    end
  end
end
