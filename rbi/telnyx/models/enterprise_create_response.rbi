# typed: strong

module Telnyx
  module Models
    class EnterpriseCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EnterpriseCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::EnterpriseCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EnterpriseCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EnterpriseCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EnterpriseCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EnterpriseCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier of the enterprise
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingAddress
            )
          )
        end
        attr_reader :billing_address

        sig do
          params(
            billing_address:
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingAddress::OrHash
          ).void
        end
        attr_writer :billing_address

        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingContact
            )
          )
        end
        attr_reader :billing_contact

        sig do
          params(
            billing_contact:
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingContact::OrHash
          ).void
        end
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
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          )
        end
        attr_accessor :number_of_employees

        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationContact
            )
          )
        end
        attr_reader :organization_contact

        sig do
          params(
            organization_contact:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationContact::OrHash
          ).void
        end
        attr_writer :organization_contact

        # Legal structure type
        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )
          )
        end
        attr_accessor :organization_legal_type

        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationPhysicalAddress
            )
          )
        end
        attr_reader :organization_physical_address

        sig do
          params(
            organization_physical_address:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationPhysicalAddress::OrHash
          ).void
        end
        attr_writer :organization_physical_address

        # Type of organization
        sig do
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol
            )
          )
        end
        attr_reader :organization_type

        sig do
          params(
            organization_type:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::OrSymbol
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
          returns(
            T.nilable(
              Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::TaggedSymbol
            )
          )
        end
        attr_reader :role_type

        sig do
          params(
            role_type:
              Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::OrSymbol
          ).void
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
            billing_address:
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingAddress::OrHash,
            billing_contact:
              Telnyx::Models::EnterpriseCreateResponse::Data::BillingContact::OrHash,
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
                Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::OrSymbol
              ),
            organization_contact:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationContact::OrHash,
            organization_legal_type:
              T.nilable(
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::OrSymbol
              ),
            organization_physical_address:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationPhysicalAddress::OrHash,
            organization_type:
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::OrSymbol,
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            role_type:
              Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::OrSymbol,
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
              billing_address:
                Telnyx::Models::EnterpriseCreateResponse::Data::BillingAddress,
              billing_contact:
                Telnyx::Models::EnterpriseCreateResponse::Data::BillingContact,
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
                  Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
                ),
              organization_contact:
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationContact,
              organization_legal_type:
                T.nilable(
                  Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
                ),
              organization_physical_address:
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationPhysicalAddress,
              organization_type:
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol,
              primary_business_domain_sic_code: T.nilable(String),
              professional_license_number: T.nilable(String),
              role_type:
                Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::TaggedSymbol,
              updated_at: Time,
              website: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class BillingAddress < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EnterpriseCreateResponse::Data::BillingAddress,
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
                Telnyx::Models::EnterpriseCreateResponse::Data::BillingContact,
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
              T.all(
                Symbol,
                Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_OF_EMPLOYEES_1_10 =
            T.let(
              :"1-10",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_11_50 =
            T.let(
              :"11-50",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_51_200 =
            T.let(
              :"51-200",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_201_500 =
            T.let(
              :"201-500",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_501_2000 =
            T.let(
              :"501-2000",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_2001_10000 =
            T.let(
              :"2001-10000",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )
          NUMBER_OF_EMPLOYEES_10001 =
            T.let(
              :"10001+",
              Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EnterpriseCreateResponse::Data::NumberOfEmployees::TaggedSymbol
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
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationContact,
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
              T.all(
                Symbol,
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CORPORATION =
            T.let(
              :corporation,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )
          LLC =
            T.let(
              :llc,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )
          PARTNERSHIP =
            T.let(
              :partnership,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )
          NONPROFIT =
            T.let(
              :nonprofit,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )
          OTHER =
            T.let(
              :other,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationLegalType::TaggedSymbol
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
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationPhysicalAddress,
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
              T.all(
                Symbol,
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMERCIAL =
            T.let(
              :commercial,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol
            )
          GOVERNMENT =
            T.let(
              :government,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol
            )
          NON_PROFIT =
            T.let(
              :non_profit,
              Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EnterpriseCreateResponse::Data::OrganizationType::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::Models::EnterpriseCreateResponse::Data::RoleType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTERPRISE =
            T.let(
              :enterprise,
              Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::TaggedSymbol
            )
          BPO =
            T.let(
              :bpo,
              Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EnterpriseCreateResponse::Data::RoleType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
