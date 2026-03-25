# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#create
    class EnterpriseCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::EnterpriseCreateParams::BillingAddress]
      required :billing_address, -> { Telnyx::EnterpriseCreateParams::BillingAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::EnterpriseCreateParams::BillingContact]
      required :billing_contact, -> { Telnyx::EnterpriseCreateParams::BillingContact }

      # @!attribute country_code
      #   Country code. Currently only 'US' is accepted.
      #
      #   @return [String]
      required :country_code, String

      # @!attribute doing_business_as
      #   Primary business name / DBA name
      #
      #   @return [String]
      required :doing_business_as, String

      # @!attribute fein
      #   Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number
      #   (minimum 9 digits).
      #
      #   @return [String]
      required :fein, String

      # @!attribute industry
      #   Industry classification. Case-insensitive. Accepted values: accounting, finance,
      #   billing, collections, business, charity, nonprofit, communications, telecom,
      #   customer service, support, delivery, shipping, logistics, education, financial,
      #   banking, government, public, healthcare, health, pharmacy, medical, insurance,
      #   legal, law, notifications, scheduling, real estate, property, retail, ecommerce,
      #   sales, marketing, software, technology, tech, media, surveys, market research,
      #   travel, hospitality, hotel
      #
      #   @return [String]
      required :industry, String

      # @!attribute legal_name
      #   Legal name of the enterprise
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute number_of_employees
      #   Employee count range
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees]
      required :number_of_employees, enum: -> { Telnyx::EnterpriseCreateParams::NumberOfEmployees }

      # @!attribute organization_contact
      #   Organization contact information. Note: the response returns this object with
      #   the phone field as 'phone' (not 'phone_number').
      #
      #   @return [Telnyx::Models::EnterpriseCreateParams::OrganizationContact]
      required :organization_contact, -> { Telnyx::EnterpriseCreateParams::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal structure type
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType]
      required :organization_legal_type, enum: -> { Telnyx::EnterpriseCreateParams::OrganizationLegalType }

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::EnterpriseCreateParams::OrganizationPhysicalAddress]
      required :organization_physical_address,
               -> { Telnyx::EnterpriseCreateParams::OrganizationPhysicalAddress }

      # @!attribute organization_type
      #   Type of organization
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType]
      required :organization_type, enum: -> { Telnyx::EnterpriseCreateParams::OrganizationType }

      # @!attribute website
      #   Enterprise website URL. Accepts any string — no URL format validation enforced.
      #
      #   @return [String]
      required :website, String

      # @!attribute corporate_registration_number
      #   Corporate registration number (optional)
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String

      # @!attribute customer_reference
      #   Optional customer reference identifier for your own tracking
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute dun_bradstreet_number
      #   D-U-N-S Number (optional)
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String

      # @!attribute primary_business_domain_sic_code
      #   SIC Code (optional)
      #
      #   @return [String, nil]
      optional :primary_business_domain_sic_code, String

      # @!attribute professional_license_number
      #   Professional license number (optional)
      #
      #   @return [String, nil]
      optional :professional_license_number, String

      # @!attribute role_type
      #   Role type in Branded Calling / Number Reputation services
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType, nil]
      optional :role_type, enum: -> { Telnyx::EnterpriseCreateParams::RoleType }

      # @!method initialize(billing_address:, billing_contact:, country_code:, doing_business_as:, fein:, industry:, legal_name:, number_of_employees:, organization_contact:, organization_legal_type:, organization_physical_address:, organization_type:, website:, corporate_registration_number: nil, customer_reference: nil, dun_bradstreet_number: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseCreateParams} for more details.
      #
      #   @param billing_address [Telnyx::Models::EnterpriseCreateParams::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::EnterpriseCreateParams::BillingContact]
      #
      #   @param country_code [String] Country code. Currently only 'US' is accepted.
      #
      #   @param doing_business_as [String] Primary business name / DBA name
      #
      #   @param fein [String] Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number (mi
      #
      #   @param industry [String] Industry classification. Case-insensitive. Accepted values: accounting, finance,
      #
      #   @param legal_name [String] Legal name of the enterprise
      #
      #   @param number_of_employees [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees] Employee count range
      #
      #   @param organization_contact [Telnyx::Models::EnterpriseCreateParams::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType] Legal structure type
      #
      #   @param organization_physical_address [Telnyx::Models::EnterpriseCreateParams::OrganizationPhysicalAddress]
      #
      #   @param organization_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType] Type of organization
      #
      #   @param website [String] Enterprise website URL. Accepts any string — no URL format validation enforced.
      #
      #   @param corporate_registration_number [String] Corporate registration number (optional)
      #
      #   @param customer_reference [String] Optional customer reference identifier for your own tracking
      #
      #   @param dun_bradstreet_number [String] D-U-N-S Number (optional)
      #
      #   @param primary_business_domain_sic_code [String] SIC Code (optional)
      #
      #   @param professional_license_number [String] Professional license number (optional)
      #
      #   @param role_type [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType] Role type in Branded Calling / Number Reputation services
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
      module OrganizationType
        extend Telnyx::Internal::Type::Enum

        COMMERCIAL = :commercial
        GOVERNMENT = :government
        NON_PROFIT = :non_profit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Role type in Branded Calling / Number Reputation services
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
