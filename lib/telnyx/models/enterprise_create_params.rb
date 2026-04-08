# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#create
    class EnterpriseCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::BillingAddress]
      required :billing_address, -> { Telnyx::BillingAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::BillingContact]
      required :billing_contact, -> { Telnyx::BillingContact }

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
      #   @return [Telnyx::Models::OrganizationContact]
      required :organization_contact, -> { Telnyx::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal structure type
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType]
      required :organization_legal_type, enum: -> { Telnyx::EnterpriseCreateParams::OrganizationLegalType }

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress]
      required :organization_physical_address, -> { Telnyx::PhysicalAddress }

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
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
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
      #   @param organization_contact [Telnyx::Models::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType] Legal structure type
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
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

      # Employee count range
      module NumberOfEmployees
        extend Telnyx::Internal::Type::Enum

        NUMBER_OF_EMPLOYEES_1_10 = :"1-10"
        NUMBER_OF_EMPLOYEES_11_50 = :"11-50"
        NUMBER_OF_EMPLOYEES_51_200 = :"51-200"
        NUMBER_OF_EMPLOYEES_201_500 = :"201-500"
        NUMBER_OF_EMPLOYEES_501_2000 = :"501-2000"
        NUMBER_OF_EMPLOYEES_2001_10000 = :"2001-10000"
        NUMBER_OF_EMPLOYEES_10001_PLUS = :"10001+"

        # @!method self.values
        #   @return [Array<Symbol>]
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
