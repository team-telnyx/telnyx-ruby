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
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String, nil?: true

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute doing_business_as
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute dun_bradstreet_number
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String, nil?: true

      # @!attribute fein
      #
      #   @return [String, nil]
      optional :fein, String

      # @!attribute industry
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseUpdateParams::Industry, nil]
      optional :industry, enum: -> { Telnyx::EnterpriseUpdateParams::Industry }

      # @!attribute jurisdiction_of_incorporation
      #   Updated state/province/country of incorporation. Optional on update.
      #
      #   @return [String, nil]
      optional :jurisdiction_of_incorporation, String

      # @!attribute legal_name
      #   Legal name of the enterprise.
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute number_of_employees
      #
      #   @return [String, nil]
      optional :number_of_employees, String

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

      # @!attribute primary_business_domain_sic_code
      #
      #   @return [String, nil]
      optional :primary_business_domain_sic_code, String, nil?: true

      # @!attribute professional_license_number
      #
      #   @return [String, nil]
      optional :professional_license_number, String, nil?: true

      # @!attribute website
      #
      #   @return [String, nil]
      optional :website, String

      # @!method initialize(enterprise_id:, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, jurisdiction_of_incorporation: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, website: nil, request_options: {})
      #   @param enterprise_id [String]
      #
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param corporate_registration_number [String, nil]
      #
      #   @param customer_reference [String]
      #
      #   @param doing_business_as [String]
      #
      #   @param dun_bradstreet_number [String, nil]
      #
      #   @param fein [String]
      #
      #   @param industry [Symbol, Telnyx::Models::EnterpriseUpdateParams::Industry]
      #
      #   @param jurisdiction_of_incorporation [String] Updated state/province/country of incorporation. Optional on update.
      #
      #   @param legal_name [String] Legal name of the enterprise.
      #
      #   @param number_of_employees [String]
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      #   @param organization_legal_type [String]
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param primary_business_domain_sic_code [String, nil]
      #
      #   @param professional_license_number [String, nil]
      #
      #   @param website [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Industry
        extend Telnyx::Internal::Type::Enum

        ACCOUNTING = :accounting
        FINANCE = :finance
        BILLING = :billing
        COLLECTIONS = :collections
        BUSINESS = :business
        CHARITY = :charity
        NONPROFIT = :nonprofit
        COMMUNICATIONS = :communications
        TELECOM = :telecom
        CUSTOMER_SERVICE = :"customer service"
        SUPPORT = :support
        DELIVERY = :delivery
        SHIPPING = :shipping
        LOGISTICS = :logistics
        EDUCATION = :education
        FINANCIAL = :financial
        BANKING = :banking
        GOVERNMENT = :government
        PUBLIC = :public
        HEALTHCARE = :healthcare
        HEALTH = :health
        PHARMACY = :pharmacy
        MEDICAL = :medical
        INSURANCE = :insurance
        LEGAL = :legal
        LAW = :law
        NOTIFICATIONS = :notifications
        SCHEDULING = :scheduling
        REAL_ESTATE = :"real estate"
        PROPERTY = :property
        RETAIL = :retail
        ECOMMERCE = :ecommerce
        SALES = :sales
        MARKETING = :marketing
        SOFTWARE = :software
        TECHNOLOGY = :technology
        TECH = :tech
        MEDIA = :media
        SURVEYS = :surveys
        MARKET_RESEARCH = :"market research"
        TRAVEL = :travel
        HOSPITALITY = :hospitality
        HOTEL = :hotel

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
