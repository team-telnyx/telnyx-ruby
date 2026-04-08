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
      #   @return [Telnyx::Models::OrganizationContact, nil]
      optional :organization_contact, -> { Telnyx::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal structure type
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseUpdateParams::OrganizationLegalType, nil]
      optional :organization_legal_type, enum: -> { Telnyx::EnterpriseUpdateParams::OrganizationLegalType }

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :organization_physical_address, -> { Telnyx::PhysicalAddress }

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
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
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
      #   @param organization_contact [Telnyx::Models::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseUpdateParams::OrganizationLegalType] Legal structure type
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param primary_business_domain_sic_code [String] SIC Code
      #
      #   @param professional_license_number [String] Professional license number
      #
      #   @param website [String] Company website URL
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
        NUMBER_OF_EMPLOYEES_10001 = :"10001+"

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
    end
  end
end
