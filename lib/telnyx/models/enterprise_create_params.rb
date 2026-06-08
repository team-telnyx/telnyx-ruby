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
      #   ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
      #
      #   @return [String]
      required :country_code, String

      # @!attribute doing_business_as
      #
      #   @return [String]
      required :doing_business_as, String

      # @!attribute fein
      #   US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @return [String]
      required :fein, String

      # @!attribute industry
      #   Industry classification.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::Industry]
      required :industry, enum: -> { Telnyx::EnterpriseCreateParams::Industry }

      # @!attribute jurisdiction_of_incorporation
      #
      #   @return [String]
      required :jurisdiction_of_incorporation, String

      # @!attribute legal_name
      #   Legal name of the enterprise.
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute number_of_employees
      #   Approximate headcount range. Used for vetting heuristics; pick the bucket that
      #   contains your current employee count.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees]
      required :number_of_employees, enum: -> { Telnyx::EnterpriseCreateParams::NumberOfEmployees }

      # @!attribute organization_contact
      #
      #   @return [Telnyx::Models::OrganizationContact]
      required :organization_contact, -> { Telnyx::OrganizationContact }

      # @!attribute organization_legal_type
      #   Legal-entity form. Pick the form that matches your incorporation documents:
      #
      #   - `corporation` - C-corp or S-corp.
      #   - `llc` - limited liability company.
      #   - `partnership` - general/limited partnership.
      #   - `nonprofit` - non-profit corporation, charitable trust, or
      #     501(c)(3)/equivalent.
      #   - `other` - anything else (sole proprietorships, government bodies, DBAs, etc.).
      #     You may be asked for additional documents during vetting.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType]
      required :organization_legal_type, enum: -> { Telnyx::EnterpriseCreateParams::OrganizationLegalType }

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress]
      required :organization_physical_address, -> { Telnyx::PhysicalAddress }

      # @!attribute organization_type
      #   Organization category for vetting purposes:
      #
      #   - `commercial` - for-profit business entities (LLC, corp, partnership, sole
      #     proprietorship). Most callers fall here.
      #   - `government` - federal/state/local government bodies.
      #   - `non_profit` - registered 501(c)(3)/equivalent (incl. educational
      #     institutions, charities, religious organisations).
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType]
      required :organization_type, enum: -> { Telnyx::EnterpriseCreateParams::OrganizationType }

      # @!attribute website
      #
      #   @return [String]
      required :website, String

      # @!attribute corporate_registration_number
      #   Optional corporate-registration / company-number identifier.
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String, nil?: true

      # @!attribute customer_reference
      #   Optional free-form string the caller can attach for their own bookkeeping.
      #   Telnyx does not interpret it.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute dun_bradstreet_number
      #   Optional D-U-N-S Number.
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String, nil?: true

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
      #   `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      #   Process Outsourcer placing calls on behalf of one or more enterprises.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType, nil]
      optional :role_type, enum: -> { Telnyx::EnterpriseCreateParams::RoleType }

      # @!method initialize(billing_address:, billing_contact:, country_code:, doing_business_as:, fein:, industry:, jurisdiction_of_incorporation:, legal_name:, number_of_employees:, organization_contact:, organization_legal_type:, organization_physical_address:, organization_type:, website:, corporate_registration_number: nil, customer_reference: nil, dun_bradstreet_number: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseCreateParams} for more details.
      #
      #   @param billing_address [Telnyx::Models::BillingAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param country_code [String] ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
      #
      #   @param doing_business_as [String]
      #
      #   @param fein [String] US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @param industry [Symbol, Telnyx::Models::EnterpriseCreateParams::Industry] Industry classification.
      #
      #   @param jurisdiction_of_incorporation [String]
      #
      #   @param legal_name [String] Legal name of the enterprise.
      #
      #   @param number_of_employees [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees] Approximate headcount range. Used for vetting heuristics; pick the bucket that c
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      #   @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType] Legal-entity form. Pick the form that matches your incorporation documents:
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param organization_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType] Organization category for vetting purposes:
      #
      #   @param website [String]
      #
      #   @param corporate_registration_number [String, nil] Optional corporate-registration / company-number identifier.
      #
      #   @param customer_reference [String] Optional free-form string the caller can attach for their own bookkeeping. Telny
      #
      #   @param dun_bradstreet_number [String, nil] Optional D-U-N-S Number.
      #
      #   @param primary_business_domain_sic_code [String, nil] Optional SIC code for the primary line of business.
      #
      #   @param professional_license_number [String, nil] Optional professional-license number for regulated industries.
      #
      #   @param role_type [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType] `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Industry classification.
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

      # Approximate headcount range. Used for vetting heuristics; pick the bucket that
      # contains your current employee count.
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

      # Legal-entity form. Pick the form that matches your incorporation documents:
      #
      # - `corporation` - C-corp or S-corp.
      # - `llc` - limited liability company.
      # - `partnership` - general/limited partnership.
      # - `nonprofit` - non-profit corporation, charitable trust, or
      #   501(c)(3)/equivalent.
      # - `other` - anything else (sole proprietorships, government bodies, DBAs, etc.).
      #   You may be asked for additional documents during vetting.
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

      # Organization category for vetting purposes:
      #
      # - `commercial` - for-profit business entities (LLC, corp, partnership, sole
      #   proprietorship). Most callers fall here.
      # - `government` - federal/state/local government bodies.
      # - `non_profit` - registered 501(c)(3)/equivalent (incl. educational
      #   institutions, charities, religious organisations).
      module OrganizationType
        extend Telnyx::Internal::Type::Enum

        COMMERCIAL = :commercial
        GOVERNMENT = :government
        NON_PROFIT = :non_profit

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      # Process Outsourcer placing calls on behalf of one or more enterprises.
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
