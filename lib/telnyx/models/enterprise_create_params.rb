# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#create
    class EnterpriseCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::PhysicalAddress]
      required :billing_address, -> { Telnyx::PhysicalAddress }

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
      #   The trade name your business operates under if it is different from your legal
      #   name, also called a Doing Business As (DBA) name. Leave blank if you only use
      #   your legal name.
      #
      #   @return [String]
      required :doing_business_as, String

      # @!attribute fein
      #   US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @return [String]
      required :fein, String

      # @!attribute industry
      #   The industry your business operates in. Choose the closest match from the list;
      #   if your value is not accepted, pick the nearest category.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::Industry]
      required :industry, enum: -> { Telnyx::EnterpriseCreateParams::Industry }

      # @!attribute jurisdiction_of_incorporation
      #   The state, province, or country where your business was legally incorporated,
      #   for example Delaware.
      #
      #   @return [String]
      required :jurisdiction_of_incorporation, String

      # @!attribute legal_name
      #   Your business's full registered legal name, exactly as it appears on your
      #   incorporation or tax documents, 3 to 64 characters.
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
      #   Your business's public website address, including https://. Leave blank if your
      #   business has no website.
      #
      #   @return [String]
      required :website, String

      # @!attribute corporate_registration_number
      #   The official number your company received when it was legally registered or
      #   incorporated (for example from your state or national business registry). It is
      #   on your certificate of incorporation.
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String, nil?: true

      # @!attribute customer_reference
      #   Your own label for this account. Enter any reference that helps you find it in
      #   your records. Telnyx does not use it during vetting.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute dun_bradstreet_number
      #   Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique
      #   identifier for your business. Leave blank if you do not have one.
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String, nil?: true

      # @!attribute primary_business_domain_sic_code
      #   The 4-digit Standard Industrial Classification code for your main line of
      #   business, which tells us what industry you operate in. Look it up in the SIC
      #   code directory if you are unsure.
      #
      #   @return [String, nil]
      optional :primary_business_domain_sic_code, String, nil?: true

      # @!attribute professional_license_number
      #   If your business operates under a professional license (for example legal,
      #   medical, or financial services), enter the license number issued by the
      #   licensing authority. Leave blank if it does not apply.
      #
      #   @return [String, nil]
      optional :professional_license_number, String, nil?: true

      # @!attribute role_type
      #   `enterprise` for an organization registering its own DIRs (the default, and the
      #   right choice when the calls display your own brand). `bpo` for a Business
      #   Process Outsourcer: a call center that places calls on behalf of other
      #   enterprises and displays their brand. A `bpo` enterprise describes the call
      #   center itself and cannot own a DIR. Each client the call center calls for gets
      #   its own `enterprise` in the same account, with the client's DIR under it; that
      #   DIR is then linked to the `bpo` enterprise through `bpo_authorizations`. Fixed
      #   at creation.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType, nil]
      optional :role_type, enum: -> { Telnyx::EnterpriseCreateParams::RoleType }

      # @!method initialize(billing_address:, billing_contact:, country_code:, doing_business_as:, fein:, industry:, jurisdiction_of_incorporation:, legal_name:, number_of_employees:, organization_contact:, organization_legal_type:, organization_physical_address:, organization_type:, website:, corporate_registration_number: nil, customer_reference: nil, dun_bradstreet_number: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseCreateParams} for more details.
      #
      #   @param billing_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param country_code [String] ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
      #
      #   @param doing_business_as [String] The trade name your business operates under if it is different from your legal n
      #
      #   @param fein [String] US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @param industry [Symbol, Telnyx::Models::EnterpriseCreateParams::Industry] The industry your business operates in. Choose the closest match from the list;
      #
      #   @param jurisdiction_of_incorporation [String] The state, province, or country where your business was legally incorporated, fo
      #
      #   @param legal_name [String] Your business's full registered legal name, exactly as it appears on your incorp
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
      #   @param website [String] Your business's public website address, including https://. Leave blank if your
      #
      #   @param corporate_registration_number [String, nil] The official number your company received when it was legally registered or inco
      #
      #   @param customer_reference [String] Your own label for this account. Enter any reference that helps you find it in y
      #
      #   @param dun_bradstreet_number [String, nil] Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique identi
      #
      #   @param primary_business_domain_sic_code [String, nil] The 4-digit Standard Industrial Classification code for your main line of busine
      #
      #   @param professional_license_number [String, nil] If your business operates under a professional license (for example legal, medic
      #
      #   @param role_type [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType] `enterprise` for an organization registering its own DIRs (the default, and the
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The industry your business operates in. Choose the closest match from the list;
      # if your value is not accepted, pick the nearest category.
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

      # `enterprise` for an organization registering its own DIRs (the default, and the
      # right choice when the calls display your own brand). `bpo` for a Business
      # Process Outsourcer: a call center that places calls on behalf of other
      # enterprises and displays their brand. A `bpo` enterprise describes the call
      # center itself and cannot own a DIR. Each client the call center calls for gets
      # its own `enterprise` in the same account, with the client's DIR under it; that
      # DIR is then linked to the `bpo` enterprise through `bpo_authorizations`. Fixed
      # at creation.
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
