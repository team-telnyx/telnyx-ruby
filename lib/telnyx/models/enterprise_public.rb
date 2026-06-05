# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#list
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::BillingAddress, nil]
      optional :billing_address, -> { Telnyx::BillingAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::BillingContact, nil]
      optional :billing_contact, -> { Telnyx::BillingContact }

      # @!attribute branded_calling_enabled
      #   True once Branded Calling has been activated on this enterprise (see
      #   `POST /enterprises/{id}/branded_calling`).
      #
      #   @return [Boolean, nil]
      optional :branded_calling_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute corporate_registration_number
      #   Optional corporate-registration / company-number identifier.
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String, nil?: true

      # @!attribute country_code
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute doing_business_as
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute dun_bradstreet_number
      #   Optional D-U-N-S Number issued by Dun & Bradstreet.
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String, nil?: true

      # @!attribute fein
      #
      #   @return [String, nil]
      optional :fein, String

      # @!attribute industry
      #
      #   @return [String, nil]
      optional :industry, String

      # @!attribute jurisdiction_of_incorporation
      #
      #   @return [String, nil]
      optional :jurisdiction_of_incorporation, String

      # @!attribute legal_name
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute number_of_employees
      #
      #   @return [String, nil]
      optional :number_of_employees, String

      # @!attribute number_reputation_enabled
      #   True once Phone Number Reputation has been enabled on this enterprise (see
      #   `POST /enterprises/{id}/reputation`).
      #
      #   @return [Boolean, nil]
      optional :number_reputation_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute organization_contact
      #
      #   @return [Telnyx::Models::OrganizationContact, nil]
      optional :organization_contact, -> { Telnyx::OrganizationContact }

      # @!attribute organization_legal_type
      #
      #   @return [String, nil]
      optional :organization_legal_type, String

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :organization_physical_address, -> { Telnyx::PhysicalAddress }

      # @!attribute organization_type
      #
      #   @return [String, nil]
      optional :organization_type, String

      # @!attribute primary_business_domain_sic_code
      #   Optional SIC code for the primary line of business.
      #
      #   @return [String, nil]
      optional :primary_business_domain_sic_code, String, nil?: true

      # @!attribute professional_license_number
      #   Optional professional-license number for regulated industries.
      #
      #   @return [String, nil]
      optional :professional_license_number, String, nil?: true

      # @!attribute role_type
      #
      #   @return [String, nil]
      optional :role_type, String

      # @!attribute website
      #
      #   @return [String, nil]
      optional :website, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, billing_address: nil, billing_contact: nil, branded_calling_enabled: nil, corporate_registration_number: nil, country_code: nil, created_at: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, jurisdiction_of_incorporation: nil, legal_name: nil, number_of_employees: nil, number_reputation_enabled: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, organization_type: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, updated_at: nil, website: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterprisePublic} for more details.
      #
      #   @param id [String]
      #
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param branded_calling_enabled [Boolean] True once Branded Calling has been activated on this enterprise (see `POST /ente
      #
      #   @param corporate_registration_number [String, nil] Optional corporate-registration / company-number identifier.
      #
      #   @param country_code [String]
      #
      #   @param created_at [Time]
      #
      #   @param customer_reference [String]
      #
      #   @param doing_business_as [String]
      #
      #   @param dun_bradstreet_number [String, nil] Optional D-U-N-S Number issued by Dun & Bradstreet.
      #
      #   @param fein [String]
      #
      #   @param industry [String]
      #
      #   @param jurisdiction_of_incorporation [String]
      #
      #   @param legal_name [String]
      #
      #   @param number_of_employees [String]
      #
      #   @param number_reputation_enabled [Boolean] True once Phone Number Reputation has been enabled on this enterprise (see `POST
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      #   @param organization_legal_type [String]
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param organization_type [String]
      #
      #   @param primary_business_domain_sic_code [String, nil] Optional SIC code for the primary line of business.
      #
      #   @param professional_license_number [String, nil] Optional professional-license number for regulated industries.
      #
      #   @param role_type [String]
      #
      #   @param updated_at [Time]
      #
      #   @param website [String]
    end
  end
end
