# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#update
    class EnterpriseUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EnterpriseUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::EnterpriseUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::EnterpriseUpdateResponse::Data]

      # @see Telnyx::Models::EnterpriseUpdateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the enterprise
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute billing_address
        #
        #   @return [Telnyx::Models::EnterpriseUpdateResponse::Data::BillingAddress, nil]
        optional :billing_address, -> { Telnyx::Models::EnterpriseUpdateResponse::Data::BillingAddress }

        # @!attribute billing_contact
        #
        #   @return [Telnyx::Models::EnterpriseUpdateResponse::Data::BillingContact, nil]
        optional :billing_contact, -> { Telnyx::Models::EnterpriseUpdateResponse::Data::BillingContact }

        # @!attribute corporate_registration_number
        #   Corporate registration number
        #
        #   @return [String, nil]
        optional :corporate_registration_number, String, nil?: true

        # @!attribute country_code
        #   ISO 3166-1 alpha-2 country code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #   When the enterprise was created
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute customer_reference
        #   Customer reference identifier
        #
        #   @return [String, nil]
        optional :customer_reference, String, nil?: true

        # @!attribute doing_business_as
        #   DBA name
        #
        #   @return [String, nil]
        optional :doing_business_as, String

        # @!attribute dun_bradstreet_number
        #   D-U-N-S Number
        #
        #   @return [String, nil]
        optional :dun_bradstreet_number, String, nil?: true

        # @!attribute fein
        #   Federal Employer Identification Number
        #
        #   @return [String, nil]
        optional :fein, String, nil?: true

        # @!attribute industry
        #   Industry classification
        #
        #   @return [String, nil]
        optional :industry, String, nil?: true

        # @!attribute legal_name
        #   Legal name of the enterprise
        #
        #   @return [String, nil]
        optional :legal_name, String

        # @!attribute number_of_employees
        #   Employee count range
        #
        #   @return [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::NumberOfEmployees, nil]
        optional :number_of_employees,
                 enum: -> { Telnyx::Models::EnterpriseUpdateResponse::Data::NumberOfEmployees },
                 nil?: true

        # @!attribute organization_contact
        #   Organization contact information. Note: the response returns this object with
        #   the phone field as 'phone' (not 'phone_number').
        #
        #   @return [Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationContact, nil]
        optional :organization_contact, -> { Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationContact }

        # @!attribute organization_legal_type
        #   Legal structure type
        #
        #   @return [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationLegalType, nil]
        optional :organization_legal_type,
                 enum: -> { Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationLegalType },
                 nil?: true

        # @!attribute organization_physical_address
        #
        #   @return [Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationPhysicalAddress, nil]
        optional :organization_physical_address,
                 -> { Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationPhysicalAddress }

        # @!attribute organization_type
        #   Type of organization
        #
        #   @return [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationType, nil]
        optional :organization_type, enum: -> { Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationType }

        # @!attribute primary_business_domain_sic_code
        #   SIC Code
        #
        #   @return [String, nil]
        optional :primary_business_domain_sic_code, String, nil?: true

        # @!attribute professional_license_number
        #   Professional license number
        #
        #   @return [String, nil]
        optional :professional_license_number, String, nil?: true

        # @!attribute role_type
        #   Role type in Branded Calling / Number Reputation services
        #
        #   @return [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::RoleType, nil]
        optional :role_type, enum: -> { Telnyx::Models::EnterpriseUpdateResponse::Data::RoleType }

        # @!attribute updated_at
        #   When the enterprise was last updated
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute website
        #   Company website URL
        #
        #   @return [String, nil]
        optional :website, String, nil?: true

        # @!method initialize(id: nil, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, country_code: nil, created_at: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, organization_type: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, updated_at: nil, website: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EnterpriseUpdateResponse::Data} for more details.
        #
        #   @param id [String] Unique identifier of the enterprise
        #
        #   @param billing_address [Telnyx::Models::EnterpriseUpdateResponse::Data::BillingAddress]
        #
        #   @param billing_contact [Telnyx::Models::EnterpriseUpdateResponse::Data::BillingContact]
        #
        #   @param corporate_registration_number [String, nil] Corporate registration number
        #
        #   @param country_code [String] ISO 3166-1 alpha-2 country code
        #
        #   @param created_at [Time] When the enterprise was created
        #
        #   @param customer_reference [String, nil] Customer reference identifier
        #
        #   @param doing_business_as [String] DBA name
        #
        #   @param dun_bradstreet_number [String, nil] D-U-N-S Number
        #
        #   @param fein [String, nil] Federal Employer Identification Number
        #
        #   @param industry [String, nil] Industry classification
        #
        #   @param legal_name [String] Legal name of the enterprise
        #
        #   @param number_of_employees [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::NumberOfEmployees, nil] Employee count range
        #
        #   @param organization_contact [Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationContact] Organization contact information. Note: the response returns this object with th
        #
        #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationLegalType, nil] Legal structure type
        #
        #   @param organization_physical_address [Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationPhysicalAddress]
        #
        #   @param organization_type [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::OrganizationType] Type of organization
        #
        #   @param primary_business_domain_sic_code [String, nil] SIC Code
        #
        #   @param professional_license_number [String, nil] Professional license number
        #
        #   @param role_type [Symbol, Telnyx::Models::EnterpriseUpdateResponse::Data::RoleType] Role type in Branded Calling / Number Reputation services
        #
        #   @param updated_at [Time] When the enterprise was last updated
        #
        #   @param website [String, nil] Company website URL

        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#billing_address
        class BillingAddress < Telnyx::Internal::Type::BaseModel
          # @!attribute administrative_area
          #   State or province
          #
          #   @return [String]
          required :administrative_area, String

          # @!attribute city
          #   City name
          #
          #   @return [String]
          required :city, String

          # @!attribute country
          #   Country name (e.g., United States)
          #
          #   @return [String]
          required :country, String

          # @!attribute postal_code
          #   ZIP or postal code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute street_address
          #   Street address
          #
          #   @return [String]
          required :street_address, String

          # @!attribute extended_address
          #   Additional address line (suite, apt, etc.)
          #
          #   @return [String, nil]
          optional :extended_address, String, nil?: true

          # @!method initialize(administrative_area:, city:, country:, postal_code:, street_address:, extended_address: nil)
          #   @param administrative_area [String] State or province
          #
          #   @param city [String] City name
          #
          #   @param country [String] Country name (e.g., United States)
          #
          #   @param postal_code [String] ZIP or postal code
          #
          #   @param street_address [String] Street address
          #
          #   @param extended_address [String, nil] Additional address line (suite, apt, etc.)
        end

        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#billing_contact
        class BillingContact < Telnyx::Internal::Type::BaseModel
          # @!attribute email
          #   Contact's email address
          #
          #   @return [String]
          required :email, String

          # @!attribute first_name
          #   Contact's first name
          #
          #   @return [String]
          required :first_name, String

          # @!attribute last_name
          #   Contact's last name
          #
          #   @return [String]
          required :last_name, String

          # @!attribute phone_number
          #   Contact's phone number (10-15 digits)
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(email:, first_name:, last_name:, phone_number:)
          #   @param email [String] Contact's email address
          #
          #   @param first_name [String] Contact's first name
          #
          #   @param last_name [String] Contact's last name
          #
          #   @param phone_number [String] Contact's phone number (10-15 digits)
        end

        # Employee count range
        #
        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#number_of_employees
        module NumberOfEmployees
          extend Telnyx::Internal::Type::Enum

          NUMBER_OF_EMPLOYEES_1_10 = :"1-10"
          NUMBER_OF_EMPLOYEES_11_50 = :"11-50"
          NUMBER_OF_EMPLOYEES_51_200 = :"51-200"
          NUMBER_OF_EMPLOYEES_201_500 = :"201-500"
          NUMBER_OF_EMPLOYEES_501_2000 = :"501-2000"
          NUMBER_OF_EMPLOYEES_2001_10000 = :"2001-10000"
          NUMBER_OF_EMPLOYEES_10001 = :"10001+"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#organization_contact
        class OrganizationContact < Telnyx::Internal::Type::BaseModel
          # @!attribute email
          #   Contact's email address
          #
          #   @return [String]
          required :email, String

          # @!attribute first_name
          #   Contact's first name
          #
          #   @return [String]
          required :first_name, String

          # @!attribute job_title
          #   Contact's job title (required)
          #
          #   @return [String]
          required :job_title, String

          # @!attribute last_name
          #   Contact's last name
          #
          #   @return [String]
          required :last_name, String

          # @!attribute phone
          #   Contact's phone number in E.164 format
          #
          #   @return [String]
          required :phone, String

          # @!method initialize(email:, first_name:, job_title:, last_name:, phone:)
          #   Organization contact information. Note: the response returns this object with
          #   the phone field as 'phone' (not 'phone_number').
          #
          #   @param email [String] Contact's email address
          #
          #   @param first_name [String] Contact's first name
          #
          #   @param job_title [String] Contact's job title (required)
          #
          #   @param last_name [String] Contact's last name
          #
          #   @param phone [String] Contact's phone number in E.164 format
        end

        # Legal structure type
        #
        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#organization_legal_type
        module OrganizationLegalType
          extend Telnyx::Internal::Type::Enum

          CORPORATION = :corporation
          LLC = :llc
          PARTNERSHIP = :partnership
          NONPROFIT = :nonprofit
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#organization_physical_address
        class OrganizationPhysicalAddress < Telnyx::Internal::Type::BaseModel
          # @!attribute administrative_area
          #   State or province
          #
          #   @return [String]
          required :administrative_area, String

          # @!attribute city
          #   City name
          #
          #   @return [String]
          required :city, String

          # @!attribute country
          #   Country name (e.g., United States)
          #
          #   @return [String]
          required :country, String

          # @!attribute postal_code
          #   ZIP or postal code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute street_address
          #   Street address
          #
          #   @return [String]
          required :street_address, String

          # @!attribute extended_address
          #   Additional address line (suite, apt, etc.)
          #
          #   @return [String, nil]
          optional :extended_address, String, nil?: true

          # @!method initialize(administrative_area:, city:, country:, postal_code:, street_address:, extended_address: nil)
          #   @param administrative_area [String] State or province
          #
          #   @param city [String] City name
          #
          #   @param country [String] Country name (e.g., United States)
          #
          #   @param postal_code [String] ZIP or postal code
          #
          #   @param street_address [String] Street address
          #
          #   @param extended_address [String, nil] Additional address line (suite, apt, etc.)
        end

        # Type of organization
        #
        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#organization_type
        module OrganizationType
          extend Telnyx::Internal::Type::Enum

          COMMERCIAL = :commercial
          GOVERNMENT = :government
          NON_PROFIT = :non_profit

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Role type in Branded Calling / Number Reputation services
        #
        # @see Telnyx::Models::EnterpriseUpdateResponse::Data#role_type
        module RoleType
          extend Telnyx::Internal::Type::Enum

          ENTERPRISE = :enterprise
          BPO = :bpo

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
