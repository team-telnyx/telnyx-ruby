# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#list
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the enterprise
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::BillingAddress, nil]
      optional :billing_address, -> { Telnyx::BillingAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::BillingContact, nil]
      optional :billing_contact, -> { Telnyx::BillingContact }

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
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::NumberOfEmployees, nil]
      optional :number_of_employees, enum: -> { Telnyx::EnterprisePublic::NumberOfEmployees }, nil?: true

      # @!attribute organization_contact
      #   Organization contact information. Note: the response returns this object with
      #   the phone field as 'phone' (not 'phone_number').
      #
      #   @return [Telnyx::Models::OrganizationContact, nil]
      optional :organization_contact, -> { Telnyx::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal structure type
      #
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::OrganizationLegalType, nil]
      optional :organization_legal_type,
               enum: -> { Telnyx::EnterprisePublic::OrganizationLegalType },
               nil?: true

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :organization_physical_address, -> { Telnyx::PhysicalAddress }

      # @!attribute organization_type
      #   Type of organization
      #
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::OrganizationType, nil]
      optional :organization_type, enum: -> { Telnyx::EnterprisePublic::OrganizationType }

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
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::RoleType, nil]
      optional :role_type, enum: -> { Telnyx::EnterprisePublic::RoleType }

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
      #   {Telnyx::Models::EnterprisePublic} for more details.
      #
      #   @param id [String] Unique identifier of the enterprise
      #
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
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
      #   @param number_of_employees [Symbol, Telnyx::Models::EnterprisePublic::NumberOfEmployees, nil] Employee count range
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterprisePublic::OrganizationLegalType, nil] Legal structure type
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param organization_type [Symbol, Telnyx::Models::EnterprisePublic::OrganizationType] Type of organization
      #
      #   @param primary_business_domain_sic_code [String, nil] SIC Code
      #
      #   @param professional_license_number [String, nil] Professional license number
      #
      #   @param role_type [Symbol, Telnyx::Models::EnterprisePublic::RoleType] Role type in Branded Calling / Number Reputation services
      #
      #   @param updated_at [Time] When the enterprise was last updated
      #
      #   @param website [String, nil] Company website URL

      # Employee count range
      #
      # @see Telnyx::Models::EnterprisePublic#number_of_employees
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

      # Legal structure type
      #
      # @see Telnyx::Models::EnterprisePublic#organization_legal_type
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

      # Type of organization
      #
      # @see Telnyx::Models::EnterprisePublic#organization_type
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
      # @see Telnyx::Models::EnterprisePublic#role_type
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
