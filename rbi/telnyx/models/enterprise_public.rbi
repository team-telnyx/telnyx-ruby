# typed: strong

module Telnyx
  module Models
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterprisePublic, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::PhysicalAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::PhysicalAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::BillingContact)) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # Reason Telnyx rejected the BPO (Business Process Outsourcer) verification, when
      # `bpo_verification_status` is `rejected`; `null` otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :bpo_verification_rejection_reason

      # Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
      # set for accounts created with `role_type` `bpo`; `null` for normal enterprises.
      # A BPO enterprise must be `approved` before a DIR can be linked to it through
      # `bpo_authorizations`.
      sig do
        returns(
          T.nilable(
            Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :bpo_verification_status

      # True once Branded Calling has been activated on this enterprise (see
      # `POST /enterprises/{id}/branded_calling`).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :branded_calling_enabled

      sig { params(branded_calling_enabled: T::Boolean).void }
      attr_writer :branded_calling_enabled

      # The official number your company received when it was legally registered or
      # incorporated (for example from your state or national business registry). It is
      # on your certificate of incorporation.
      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # Your own label for this account. Enter any reference that helps you find it in
      # your records. Telnyx does not use it during vetting.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # The trade name your business operates under if it is different from your legal
      # name, also called a Doing Business As (DBA) name. Leave blank if you only use
      # your legal name.
      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique
      # identifier for your business. Leave blank if you do not have one.
      sig { returns(T.nilable(String)) }
      attr_accessor :dun_bradstreet_number

      # US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      sig { returns(T.nilable(String)) }
      attr_reader :fein

      sig { params(fein: String).void }
      attr_writer :fein

      # The industry your business operates in. Choose the closest match from the list;
      # if your value is not accepted, pick the nearest category.
      sig { returns(T.nilable(String)) }
      attr_reader :industry

      sig { params(industry: String).void }
      attr_writer :industry

      # The state, province, or country where your business was legally incorporated,
      # for example Delaware.
      sig { returns(T.nilable(String)) }
      attr_reader :jurisdiction_of_incorporation

      sig { params(jurisdiction_of_incorporation: String).void }
      attr_writer :jurisdiction_of_incorporation

      # Your business's full registered legal name, exactly as it appears on your
      # incorporation or tax documents, 3 to 64 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      # Approximate headcount range. Used for vetting heuristics; pick the bucket that
      # contains your current employee count.
      sig { returns(T.nilable(String)) }
      attr_reader :number_of_employees

      sig { params(number_of_employees: String).void }
      attr_writer :number_of_employees

      # True once Phone Number Reputation has been enabled on this enterprise (see
      # `POST /enterprises/{id}/reputation`).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :number_reputation_enabled

      sig { params(number_reputation_enabled: T::Boolean).void }
      attr_writer :number_reputation_enabled

      sig { returns(T.nilable(Telnyx::OrganizationContact)) }
      attr_reader :organization_contact

      sig do
        params(organization_contact: Telnyx::OrganizationContact::OrHash).void
      end
      attr_writer :organization_contact

      # Legal-entity form. Pick the form that matches your incorporation documents:
      #
      # - `corporation` - C-corp or S-corp.
      # - `llc` - limited liability company.
      # - `partnership` - general/limited partnership.
      # - `nonprofit` - non-profit corporation, charitable trust, or
      #   501(c)(3)/equivalent.
      # - `other` - anything else (sole proprietorships, government bodies, DBAs, etc.).
      #   You may be asked for additional documents during vetting.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_legal_type

      sig { params(organization_legal_type: String).void }
      attr_writer :organization_legal_type

      sig { returns(T.nilable(Telnyx::PhysicalAddress)) }
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address: Telnyx::PhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      sig { returns(T.nilable(String)) }
      attr_reader :organization_type

      sig { params(organization_type: String).void }
      attr_writer :organization_type

      # The 4-digit Standard Industrial Classification code for your main line of
      # business, which tells us what industry you operate in. Look it up in the SIC
      # code directory if you are unsure.
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_business_domain_sic_code

      # If your business operates under a professional license (for example legal,
      # medical, or financial services), enter the license number issued by the
      # licensing authority. Leave blank if it does not apply.
      sig { returns(T.nilable(String)) }
      attr_accessor :professional_license_number

      sig do
        returns(T.nilable(Telnyx::EnterprisePublic::RoleType::TaggedSymbol))
      end
      attr_reader :role_type

      sig do
        params(role_type: Telnyx::EnterprisePublic::RoleType::OrSymbol).void
      end
      attr_writer :role_type

      # Your business's public website address, including https://. Leave blank if your
      # business has no website.
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          billing_address: Telnyx::PhysicalAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          bpo_verification_rejection_reason: T.nilable(String),
          bpo_verification_status:
            T.nilable(
              Telnyx::EnterprisePublic::BpoVerificationStatus::OrSymbol
            ),
          branded_calling_enabled: T::Boolean,
          corporate_registration_number: T.nilable(String),
          country_code: String,
          created_at: Time,
          customer_reference: String,
          doing_business_as: String,
          dun_bradstreet_number: T.nilable(String),
          fein: String,
          industry: String,
          jurisdiction_of_incorporation: String,
          legal_name: String,
          number_of_employees: String,
          number_reputation_enabled: T::Boolean,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type: String,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          organization_type: String,
          primary_business_domain_sic_code: T.nilable(String),
          professional_license_number: T.nilable(String),
          role_type: Telnyx::EnterprisePublic::RoleType::OrSymbol,
          updated_at: Time,
          website: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        billing_address: nil,
        billing_contact: nil,
        # Reason Telnyx rejected the BPO (Business Process Outsourcer) verification, when
        # `bpo_verification_status` is `rejected`; `null` otherwise.
        bpo_verification_rejection_reason: nil,
        # Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
        # set for accounts created with `role_type` `bpo`; `null` for normal enterprises.
        # A BPO enterprise must be `approved` before a DIR can be linked to it through
        # `bpo_authorizations`.
        bpo_verification_status: nil,
        # True once Branded Calling has been activated on this enterprise (see
        # `POST /enterprises/{id}/branded_calling`).
        branded_calling_enabled: nil,
        # The official number your company received when it was legally registered or
        # incorporated (for example from your state or national business registry). It is
        # on your certificate of incorporation.
        corporate_registration_number: nil,
        country_code: nil,
        created_at: nil,
        # Your own label for this account. Enter any reference that helps you find it in
        # your records. Telnyx does not use it during vetting.
        customer_reference: nil,
        # The trade name your business operates under if it is different from your legal
        # name, also called a Doing Business As (DBA) name. Leave blank if you only use
        # your legal name.
        doing_business_as: nil,
        # Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique
        # identifier for your business. Leave blank if you do not have one.
        dun_bradstreet_number: nil,
        # US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
        fein: nil,
        # The industry your business operates in. Choose the closest match from the list;
        # if your value is not accepted, pick the nearest category.
        industry: nil,
        # The state, province, or country where your business was legally incorporated,
        # for example Delaware.
        jurisdiction_of_incorporation: nil,
        # Your business's full registered legal name, exactly as it appears on your
        # incorporation or tax documents, 3 to 64 characters.
        legal_name: nil,
        # Approximate headcount range. Used for vetting heuristics; pick the bucket that
        # contains your current employee count.
        number_of_employees: nil,
        # True once Phone Number Reputation has been enabled on this enterprise (see
        # `POST /enterprises/{id}/reputation`).
        number_reputation_enabled: nil,
        organization_contact: nil,
        # Legal-entity form. Pick the form that matches your incorporation documents:
        #
        # - `corporation` - C-corp or S-corp.
        # - `llc` - limited liability company.
        # - `partnership` - general/limited partnership.
        # - `nonprofit` - non-profit corporation, charitable trust, or
        #   501(c)(3)/equivalent.
        # - `other` - anything else (sole proprietorships, government bodies, DBAs, etc.).
        #   You may be asked for additional documents during vetting.
        organization_legal_type: nil,
        organization_physical_address: nil,
        organization_type: nil,
        # The 4-digit Standard Industrial Classification code for your main line of
        # business, which tells us what industry you operate in. Look it up in the SIC
        # code directory if you are unsure.
        primary_business_domain_sic_code: nil,
        # If your business operates under a professional license (for example legal,
        # medical, or financial services), enter the license number issued by the
        # licensing authority. Leave blank if it does not apply.
        professional_license_number: nil,
        role_type: nil,
        updated_at: nil,
        # Your business's public website address, including https://. Leave blank if your
        # business has no website.
        website: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_address: Telnyx::PhysicalAddress,
            billing_contact: Telnyx::BillingContact,
            bpo_verification_rejection_reason: T.nilable(String),
            bpo_verification_status:
              T.nilable(
                Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
              ),
            branded_calling_enabled: T::Boolean,
            corporate_registration_number: T.nilable(String),
            country_code: String,
            created_at: Time,
            customer_reference: String,
            doing_business_as: String,
            dun_bradstreet_number: T.nilable(String),
            fein: String,
            industry: String,
            jurisdiction_of_incorporation: String,
            legal_name: String,
            number_of_employees: String,
            number_reputation_enabled: T::Boolean,
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type: String,
            organization_physical_address: Telnyx::PhysicalAddress,
            organization_type: String,
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            role_type: Telnyx::EnterprisePublic::RoleType::TaggedSymbol,
            updated_at: Time,
            website: String
          }
        )
      end
      def to_hash
      end

      # Whether Telnyx has approved this BPO (Business Process Outsourcer) account. Only
      # set for accounts created with `role_type` `bpo`; `null` for normal enterprises.
      # A BPO enterprise must be `approved` before a DIR can be linked to it through
      # `bpo_authorizations`.
      module BpoVerificationStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterprisePublic::BpoVerificationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterprisePublic::BpoVerificationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module RoleType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EnterprisePublic::RoleType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTERPRISE =
          T.let(:enterprise, Telnyx::EnterprisePublic::RoleType::TaggedSymbol)
        BPO = T.let(:bpo, Telnyx::EnterprisePublic::RoleType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterprisePublic::RoleType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
