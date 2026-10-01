# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#list
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      # @!attribute billing_address
      #
      #   @return [Telnyx::Models::PhysicalAddress, nil]
      optional :billing_address, -> { Telnyx::PhysicalAddress }

      # @!attribute billing_contact
      #
      #   @return [Telnyx::Models::BillingContact, nil]
      optional :billing_contact, -> { Telnyx::BillingContact }

      # @!attribute bpo_verification_rejection_reason
      #   Reason Telnyx rejected the BPO (Business Process Outsourcer) verification, when
      #   `bpo_verification_status` is `rejected`; `null` otherwise.
      #
      #   @return [String, nil]
      optional :bpo_verification_rejection_reason, String, nil?: true

      # @!attribute bpo_verification_status
      #   Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
      #   set for accounts created with `role_type` `bpo`; `null` for normal enterprises.
      #   A BPO enterprise must be `approved` before a DIR can be linked to it through
      #   `bpo_authorizations`.
      #
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::BpoVerificationStatus, nil]
      optional :bpo_verification_status,
               enum: -> { Telnyx::EnterprisePublic::BpoVerificationStatus },
               nil?: true

      # @!attribute branded_calling_enabled
      #   True once Branded Calling has been activated on this enterprise (see
      #   `POST /enterprises/{id}/branded_calling`).
      #
      #   @return [Boolean, nil]
      optional :branded_calling_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute corporate_registration_number
      #   The official number your company received when it was legally registered or
      #   incorporated (for example from your state or national business registry). It is
      #   on your certificate of incorporation.
      #
      #   @return [String, nil]
      optional :corporate_registration_number, String, nil?: true

      # @!attribute country_code
      #
      #   @return [String, nil]
      optional :country_code, String

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
      #   @return [String, nil]
      optional :industry, String

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

      # @!attribute organization_type
      #
      #   @return [String, nil]
      optional :organization_type, String

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
      #
      #   @return [Symbol, Telnyx::Models::EnterprisePublic::RoleType, nil]
      optional :role_type, enum: -> { Telnyx::EnterprisePublic::RoleType }

      # @!attribute website
      #   Your business's public website address, including https://. Leave blank if your
      #   business has no website.
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

      # @!method initialize(id: nil, billing_address: nil, billing_contact: nil, bpo_verification_rejection_reason: nil, bpo_verification_status: nil, branded_calling_enabled: nil, corporate_registration_number: nil, country_code: nil, created_at: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, jurisdiction_of_incorporation: nil, legal_name: nil, number_of_employees: nil, number_reputation_enabled: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, organization_type: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, updated_at: nil, website: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterprisePublic} for more details.
      #
      #   @param id [String]
      #
      #   @param billing_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param billing_contact [Telnyx::Models::BillingContact]
      #
      #   @param bpo_verification_rejection_reason [String, nil] Reason Telnyx rejected the BPO (Business Process Outsourcer) verification, when
      #
      #   @param bpo_verification_status [Symbol, Telnyx::Models::EnterprisePublic::BpoVerificationStatus, nil] Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
      #
      #   @param branded_calling_enabled [Boolean] True once Branded Calling has been activated on this enterprise (see `POST /ente
      #
      #   @param corporate_registration_number [String, nil] The official number your company received when it was legally registered or inco
      #
      #   @param country_code [String]
      #
      #   @param created_at [Time]
      #
      #   @param customer_reference [String] Your own label for this account. Enter any reference that helps you find it in y
      #
      #   @param doing_business_as [String] The trade name your business operates under if it is different from your legal n
      #
      #   @param dun_bradstreet_number [String, nil] Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique identi
      #
      #   @param fein [String] US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      #   @param industry [String] The industry your business operates in. Choose the closest match from the list;
      #
      #   @param jurisdiction_of_incorporation [String] The state, province, or country where your business was legally incorporated, fo
      #
      #   @param legal_name [String] Your business's full registered legal name, exactly as it appears on your incorp
      #
      #   @param number_of_employees [String] Approximate headcount range. Used for vetting heuristics; pick the bucket that c
      #
      #   @param number_reputation_enabled [Boolean] True once Phone Number Reputation has been enabled on this enterprise (see `POST
      #
      #   @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      #   @param organization_legal_type [String] Legal-entity form. Pick the form that matches your incorporation documents:
      #
      #   @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      #   @param organization_type [String]
      #
      #   @param primary_business_domain_sic_code [String, nil] The 4-digit Standard Industrial Classification code for your main line of busine
      #
      #   @param professional_license_number [String, nil] If your business operates under a professional license (for example legal, medic
      #
      #   @param role_type [Symbol, Telnyx::Models::EnterprisePublic::RoleType]
      #
      #   @param updated_at [Time]
      #
      #   @param website [String] Your business's public website address, including https://. Leave blank if your

      # Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
      # set for accounts created with `role_type` `bpo`; `null` for normal enterprises.
      # A BPO enterprise must be `approved` before a DIR can be linked to it through
      # `bpo_authorizations`.
      #
      # @see Telnyx::Models::EnterprisePublic#bpo_verification_status
      module BpoVerificationStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
