# typed: strong

module Telnyx
  module Models
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterprisePublic, Telnyx::Internal::AnyHash)
        end

      # Unique identifier of the enterprise
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Telnyx::BillingAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::BillingAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::BillingContact)) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # Corporate registration number
      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

      # ISO 3166-1 alpha-2 country code
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # When the enterprise was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Customer reference identifier
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_reference

      # DBA name
      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # D-U-N-S Number
      sig { returns(T.nilable(String)) }
      attr_accessor :dun_bradstreet_number

      # Federal Employer Identification Number
      sig { returns(T.nilable(String)) }
      attr_accessor :fein

      # Industry classification
      sig { returns(T.nilable(String)) }
      attr_accessor :industry

      # Legal name of the enterprise
      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      # Employee count range
      sig do
        returns(
          T.nilable(Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol)
        )
      end
      attr_accessor :number_of_employees

      # Organization contact information. Note: the response returns this object with
      # the phone field as 'phone' (not 'phone_number').
      sig { returns(T.nilable(Telnyx::OrganizationContact)) }
      attr_reader :organization_contact

      sig do
        params(organization_contact: Telnyx::OrganizationContact::OrHash).void
      end
      attr_writer :organization_contact

      # Legal structure type
      sig do
        returns(
          T.nilable(
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )
        )
      end
      attr_accessor :organization_legal_type

      sig { returns(T.nilable(Telnyx::PhysicalAddress)) }
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address: Telnyx::PhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      # Type of organization
      sig do
        returns(
          T.nilable(Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol)
        )
      end
      attr_reader :organization_type

      sig do
        params(
          organization_type:
            Telnyx::EnterprisePublic::OrganizationType::OrSymbol
        ).void
      end
      attr_writer :organization_type

      # SIC Code
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_business_domain_sic_code

      # Professional license number
      sig { returns(T.nilable(String)) }
      attr_accessor :professional_license_number

      # Role type in Branded Calling / Number Reputation services
      sig do
        returns(T.nilable(Telnyx::EnterprisePublic::RoleType::TaggedSymbol))
      end
      attr_reader :role_type

      sig do
        params(role_type: Telnyx::EnterprisePublic::RoleType::OrSymbol).void
      end
      attr_writer :role_type

      # When the enterprise was last updated
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Company website URL
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig do
        params(
          id: String,
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          corporate_registration_number: T.nilable(String),
          country_code: String,
          created_at: Time,
          customer_reference: T.nilable(String),
          doing_business_as: String,
          dun_bradstreet_number: T.nilable(String),
          fein: T.nilable(String),
          industry: T.nilable(String),
          legal_name: String,
          number_of_employees:
            T.nilable(Telnyx::EnterprisePublic::NumberOfEmployees::OrSymbol),
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type:
            T.nilable(
              Telnyx::EnterprisePublic::OrganizationLegalType::OrSymbol
            ),
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          organization_type:
            Telnyx::EnterprisePublic::OrganizationType::OrSymbol,
          primary_business_domain_sic_code: T.nilable(String),
          professional_license_number: T.nilable(String),
          role_type: Telnyx::EnterprisePublic::RoleType::OrSymbol,
          updated_at: Time,
          website: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the enterprise
        id: nil,
        billing_address: nil,
        billing_contact: nil,
        # Corporate registration number
        corporate_registration_number: nil,
        # ISO 3166-1 alpha-2 country code
        country_code: nil,
        # When the enterprise was created
        created_at: nil,
        # Customer reference identifier
        customer_reference: nil,
        # DBA name
        doing_business_as: nil,
        # D-U-N-S Number
        dun_bradstreet_number: nil,
        # Federal Employer Identification Number
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
        # Type of organization
        organization_type: nil,
        # SIC Code
        primary_business_domain_sic_code: nil,
        # Professional license number
        professional_license_number: nil,
        # Role type in Branded Calling / Number Reputation services
        role_type: nil,
        # When the enterprise was last updated
        updated_at: nil,
        # Company website URL
        website: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_address: Telnyx::BillingAddress,
            billing_contact: Telnyx::BillingContact,
            corporate_registration_number: T.nilable(String),
            country_code: String,
            created_at: Time,
            customer_reference: T.nilable(String),
            doing_business_as: String,
            dun_bradstreet_number: T.nilable(String),
            fein: T.nilable(String),
            industry: T.nilable(String),
            legal_name: String,
            number_of_employees:
              T.nilable(
                Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
              ),
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type:
              T.nilable(
                Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
              ),
            organization_physical_address: Telnyx::PhysicalAddress,
            organization_type:
              Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol,
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            role_type: Telnyx::EnterprisePublic::RoleType::TaggedSymbol,
            updated_at: Time,
            website: T.nilable(String)
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
            T.all(Symbol, Telnyx::EnterprisePublic::NumberOfEmployees)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_OF_EMPLOYEES_1_10 =
          T.let(
            :"1-10",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_11_50 =
          T.let(
            :"11-50",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_51_200 =
          T.let(
            :"51-200",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_201_500 =
          T.let(
            :"201-500",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_501_2000 =
          T.let(
            :"501-2000",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_2001_10000 =
          T.let(
            :"2001-10000",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_10001 =
          T.let(
            :"10001+",
            Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EnterprisePublic::NumberOfEmployees::TaggedSymbol]
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
            T.all(Symbol, Telnyx::EnterprisePublic::OrganizationLegalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterprisePublic::OrganizationLegalType::TaggedSymbol
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
            T.all(Symbol, Telnyx::EnterprisePublic::OrganizationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMERCIAL =
          T.let(
            :commercial,
            Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EnterprisePublic::OrganizationType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Role type in Branded Calling / Number Reputation services
      module RoleType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EnterprisePublic::RoleType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTERPRISE =
          T.let(:enterprise, Telnyx::EnterprisePublic::RoleType::TaggedSymbol)
        BPO = T.let(:bpo, Telnyx::EnterprisePublic::RoleType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterprisePublic::RoleType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
