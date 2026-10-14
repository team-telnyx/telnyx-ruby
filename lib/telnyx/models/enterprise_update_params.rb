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
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :billing_address, -> { Telnyx::PhysicalAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::BillingContact, nil]
      optional :billing_contact, -> { Telnyx::BillingContact }

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

      # @!attribute doing_business_as
      #   The trade name your business operates under if it is different from your legal
      #   name, also called a Doing Business As (DBA) name. Leave blank if you only use
      #   your legal name.
      #
      #   @return [String, nil]
      optional :doing_business_as, String

      # @!attribute dun_bradstreet_number
      #   Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique
      #   identifier for your business. Leave blank if you do not have one.
      #
      #   @return [String, nil]
      optional :dun_bradstreet_number, String, nil?: true

      # @!attribute fein
      #   US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @return [String, nil]
      optional :fein, String

      # @!attribute industry
      #   The industry your business operates in. Choose the closest match from the list;
      #   if your value is not accepted, pick the nearest category.
      #
      #   @return [Symbol, Telnyx::Models::EnterpriseUpdateParams::Industry, nil]
      optional :industry, enum: -> { Telnyx::EnterpriseUpdateParams::Industry }

      # @!attribute jurisdiction_of_incorporation
      #   The state, province, or country where your business was legally incorporated,
      #   for example Delaware.
      #
      #   @return [String, nil]
      optional :jurisdiction_of_incorporation, String

      # @!attribute legal_name
      #   Your business's full registered legal name, exactly as it appears on your
      #   incorporation or tax documents, 3 to 64 characters.
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute number_of_employees
      #   Approximate headcount range. Used for vetting heuristics; pick the bucket that
      #   contains your current employee count.
      #
      #   @return [String, nil]
      optional :number_of_employees, String

      # @!attribute organization_contact
      #
      #   @return [Telnyx::Models::OrganizationContact, nil]
      optional :organization_contact, -> { Telnyx::OrganizationContact }

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
      #   @return [String, nil]
      optional :organization_legal_type, String

      # @!attribute organization_physical_address
      #
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :organization_physical_address, -> { Telnyx::PhysicalAddress }

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

      # @!attribute website
      #   Your business's public website address, including https://. Leave blank if your
      #   business has no website.
      #
      #   @return [String, nil]
      optional :website, String

      # @!method initialize(enterprise_id:, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, jurisdiction_of_incorporation: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseUpdateParams} for more details.
      #
      #   @param enterprise_id [String]
      #
      #   @param billing_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param corporate_registration_number [String, nil] The official number your company received when it was legally registered or inco
      #
      #   @param customer_reference [String] Your own label for this account. Enter any reference that helps you find it in y
      #
      #   @param doing_business_as [String] The trade name your business operates under if it is different from your legal n
      #
      #   @param dun_bradstreet_number [String, nil] Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique identi
      #
      #   @param fein [String] US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @param industry [Symbol, Telnyx::Models::EnterpriseUpdateParams::Industry] The industry your business operates in. Choose the closest match from the list;
      #
      #   @param jurisdiction_of_incorporation [String] The state, province, or country where your business was legally incorporated, fo
      #
      #   @param legal_name [String] Your business's full registered legal name, exactly as it appears on your incorp
      #
      #   @param number_of_employees [String] Approximate headcount range. Used for vetting heuristics; pick the bucket that c
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      #   @param organization_legal_type [String] Legal-entity form. Pick the form that matches your incorporation documents:
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param primary_business_domain_sic_code [String, nil] The 4-digit Standard Industrial Classification code for your main line of busine
      #
      #   @param professional_license_number [String, nil] If your business operates under a professional license (for example legal, medic
      #
      #   @param website [String] Your business's public website address, including https://. Leave blank if your
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
    end
  end
end
