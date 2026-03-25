# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#update
    class EnterpriseUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute enterprise_id
      #
      #   @return [String]
      required :enterprise_id, String

      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::EnterpriseUpdateParams::BillingAddress, nil]
      optional :billing_address, -> { Telnyx::EnterpriseUpdateParams::BillingAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::EnterpriseUpdateParams::BillingContact, nil]
      optional :billing_contact, -> { Telnyx::EnterpriseUpdateParams::BillingContact }

      # @!attribute corporate_registration_number
      #   Corporate registration number
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String

      # @!attribute customer_reference
      #   Customer reference identifier
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute doing_business_as
      #   DBA name
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute dun_bradstreet_number
      #   D-U-N-S Number
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String

      # @!attribute fein
      #   Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
      #
      #   @return [String, nil]
      optional :fein, String

      # @!attribute industry
      #   Industry classification
      #
      #   @return [String, nil]
      optional :industry, String

      # @!attribute legal_name
      #   Legal name of the enterprise
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute number_of_employees
      #   Employee count range
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseUpdateParams::NumberOfEmployees, nil]
      optional :number_of_employees, enum: -> { Telnyx::EnterpriseUpdateParams::NumberOfEmployees }

      # @!attribute organization_contact
      #   Organization contact information. Note: the response returns this object with
      #   the phone field as 'phone' (not 'phone_number').
      #
      #   @return [Telnyx::Models::EnterpriseUpdateParams::OrganizationContact, nil]
      optional :organization_contact, -> { Telnyx::EnterpriseUpdateParams::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal structure type
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseUpdateParams::OrganizationLegalType, nil]
      optional :organization_legal_type, enum: -> { Telnyx::EnterpriseUpdateParams::OrganizationLegalType }

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::EnterpriseUpdateParams::OrganizationPhysicalAddress, nil]
      optional :organization_physical_address,
               -> { Telnyx::EnterpriseUpdateParams::OrganizationPhysicalAddress }

      # @!attribute primary_business_domain_sic_code
      #   SIC Code
      #
      #   @return [String, nil]
      optional :primary_business_domain_sic_code, String

      # @!attribute professional_license_number
      #   Professional license number
      #
      #   @return [String, nil]
      optional :professional_license_number, String

      # @!attribute website
      #   Company website URL
      #
      #   @return [String, nil]
      optional :website, String

      # @!method initialize(enterprise_id:, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseUpdateParams} for more details.
      #
      #   @param enterprise_id [String]
      #
      #   @param billing_address [Telnyx::Models::EnterpriseUpdateParams::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::EnterpriseUpdateParams::BillingContact]
      #
      #   @param corporate_registration_number [String] Corporate registration number
      #
      #   @param customer_reference [String] Customer reference identifier
      #
      #   @param doing_business_as [String] DBA name
      #
      #   @param dun_bradstreet_number [String] D-U-N-S Number
      #
      #   @param fein [String] Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
      #
      #   @param industry [String] Industry classification
      #
      #   @param legal_name [String] Legal name of the enterprise
      #
      #   @param number_of_employees [Symbol, Telnyx::Models::EnterpriseUpdateParams::NumberOfEmployees] Employee count range
      #
      #   @param organization_contact [Telnyx::Models::EnterpriseUpdateParams::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseUpdateParams::OrganizationLegalType] Legal structure type
      #
      #   @param organization_physical_address [Telnyx::Models::EnterpriseUpdateParams::OrganizationPhysicalAddress]
      #
      #   @param primary_business_domain_sic_code [String] SIC Code
      #
      #   @param professional_license_number [String] Professional license number
      #
      #   @param website [String] Company website URL
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
    end
  end
end
