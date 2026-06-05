# typed: strong

module Telnyx
  module Models
    class EnterpriseCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterpriseCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::BillingAddress) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::BillingAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(Telnyx::BillingContact) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
      sig { returns(String) }
      attr_accessor :country_code

      sig { returns(String) }
      attr_accessor :doing_business_as

      # US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      sig { returns(String) }
      attr_accessor :fein

      # Industry classification.
      sig { returns(Telnyx::EnterpriseCreateParams::Industry::OrSymbol) }
      attr_accessor :industry

      sig { returns(String) }
      attr_accessor :jurisdiction_of_incorporation

      # Legal name of the enterprise.
      sig { returns(String) }
      attr_accessor :legal_name

      # Approximate headcount range. Used for vetting heuristics; pick the bucket that
      # contains your current employee count.
      sig do
        returns(Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol)
      end
      attr_accessor :number_of_employees

      sig { returns(Telnyx::OrganizationContact) }
      attr_reader :organization_contact

      sig do
        params(organization_contact: Telnyx::OrganizationContact::OrHash).void
      end
      attr_writer :organization_contact

      # Legal-entity form. Pick the form that matches your incorporation documents:
      #
      # - `corporation` — C-corp or S-corp.
      # - `llc` — limited liability company.
      # - `partnership` — general/limited partnership.
      # - `nonprofit` — non-profit corporation, charitable trust, or
      #   501(c)(3)/equivalent.
      # - `other` — anything else (sole proprietorships, government bodies, DBAs, etc.).
      #   You may be asked for additional documents during vetting.
      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol)
      end
      attr_accessor :organization_legal_type

      sig { returns(Telnyx::PhysicalAddress) }
      attr_reader :organization_physical_address

      sig do
        params(
          organization_physical_address: Telnyx::PhysicalAddress::OrHash
        ).void
      end
      attr_writer :organization_physical_address

      # Organization category for vetting purposes:
      #
      # - `commercial` — for-profit business entities (LLC, corp, partnership, sole
      #   proprietorship). Most callers fall here.
      # - `government` — federal/state/local government bodies.
      # - `non_profit` — registered 501(c)(3)/equivalent (incl. educational
      #   institutions, charities, religious organisations).
      sig do
        returns(Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol)
      end
      attr_accessor :organization_type

      sig { returns(String) }
      attr_accessor :website

      # Optional corporate-registration / company-number identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

      # Optional free-form string the caller can attach for their own bookkeeping.
      # Telnyx does not interpret it.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Optional D-U-N-S Number.
      sig { returns(T.nilable(String)) }
      attr_accessor :dun_bradstreet_number

      # Optional SIC code for the primary line of business.
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_business_domain_sic_code

      # Optional professional-license number for regulated industries.
      sig { returns(T.nilable(String)) }
      attr_accessor :professional_license_number

      # `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      # Process Outsourcer placing calls on behalf of one or more enterprises.
      sig do
        returns(T.nilable(Telnyx::EnterpriseCreateParams::RoleType::OrSymbol))
      end
      attr_reader :role_type

      sig do
        params(
          role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol
        ).void
      end
      attr_writer :role_type

      sig do
        params(
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          country_code: String,
          doing_business_as: String,
          fein: String,
          industry: Telnyx::EnterpriseCreateParams::Industry::OrSymbol,
          jurisdiction_of_incorporation: String,
          legal_name: String,
          number_of_employees:
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type:
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          organization_type:
            Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol,
          website: String,
          corporate_registration_number: T.nilable(String),
          customer_reference: String,
          dun_bradstreet_number: T.nilable(String),
          primary_business_domain_sic_code: T.nilable(String),
          professional_license_number: T.nilable(String),
          role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        billing_address:,
        billing_contact:,
        # ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
        country_code:,
        doing_business_as:,
        # US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
        fein:,
        # Industry classification.
        industry:,
        jurisdiction_of_incorporation:,
        # Legal name of the enterprise.
        legal_name:,
        # Approximate headcount range. Used for vetting heuristics; pick the bucket that
        # contains your current employee count.
        number_of_employees:,
        organization_contact:,
        # Legal-entity form. Pick the form that matches your incorporation documents:
        #
        # - `corporation` — C-corp or S-corp.
        # - `llc` — limited liability company.
        # - `partnership` — general/limited partnership.
        # - `nonprofit` — non-profit corporation, charitable trust, or
        #   501(c)(3)/equivalent.
        # - `other` — anything else (sole proprietorships, government bodies, DBAs, etc.).
        #   You may be asked for additional documents during vetting.
        organization_legal_type:,
        organization_physical_address:,
        # Organization category for vetting purposes:
        #
        # - `commercial` — for-profit business entities (LLC, corp, partnership, sole
        #   proprietorship). Most callers fall here.
        # - `government` — federal/state/local government bodies.
        # - `non_profit` — registered 501(c)(3)/equivalent (incl. educational
        #   institutions, charities, religious organisations).
        organization_type:,
        website:,
        # Optional corporate-registration / company-number identifier.
        corporate_registration_number: nil,
        # Optional free-form string the caller can attach for their own bookkeeping.
        # Telnyx does not interpret it.
        customer_reference: nil,
        # Optional D-U-N-S Number.
        dun_bradstreet_number: nil,
        # Optional SIC code for the primary line of business.
        primary_business_domain_sic_code: nil,
        # Optional professional-license number for regulated industries.
        professional_license_number: nil,
        # `enterprise` for an organization registering its own DIRs; `bpo` for a Business
        # Process Outsourcer placing calls on behalf of one or more enterprises.
        role_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_address: Telnyx::BillingAddress,
            billing_contact: Telnyx::BillingContact,
            country_code: String,
            doing_business_as: String,
            fein: String,
            industry: Telnyx::EnterpriseCreateParams::Industry::OrSymbol,
            jurisdiction_of_incorporation: String,
            legal_name: String,
            number_of_employees:
              Telnyx::EnterpriseCreateParams::NumberOfEmployees::OrSymbol,
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type:
              Telnyx::EnterpriseCreateParams::OrganizationLegalType::OrSymbol,
            organization_physical_address: Telnyx::PhysicalAddress,
            organization_type:
              Telnyx::EnterpriseCreateParams::OrganizationType::OrSymbol,
            website: String,
            corporate_registration_number: T.nilable(String),
            customer_reference: String,
            dun_bradstreet_number: T.nilable(String),
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Industry classification.
      module Industry
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::Industry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(
            :accounting,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        FINANCE =
          T.let(
            :finance,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        BILLING =
          T.let(
            :billing,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        COLLECTIONS =
          T.let(
            :collections,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        CHARITY =
          T.let(
            :charity,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        COMMUNICATIONS =
          T.let(
            :communications,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        TELECOM =
          T.let(
            :telecom,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        CUSTOMER_SERVICE =
          T.let(
            :"customer service",
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        SUPPORT =
          T.let(
            :support,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        DELIVERY =
          T.let(
            :delivery,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        SHIPPING =
          T.let(
            :shipping,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        LOGISTICS =
          T.let(
            :logistics,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        EDUCATION =
          T.let(
            :education,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        FINANCIAL =
          T.let(
            :financial,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        BANKING =
          T.let(
            :banking,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        PUBLIC =
          T.let(:public, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        HEALTHCARE =
          T.let(
            :healthcare,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        HEALTH =
          T.let(:health, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        PHARMACY =
          T.let(
            :pharmacy,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        MEDICAL =
          T.let(
            :medical,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        INSURANCE =
          T.let(
            :insurance,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        LEGAL =
          T.let(:legal, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        LAW =
          T.let(:law, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        NOTIFICATIONS =
          T.let(
            :notifications,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        SCHEDULING =
          T.let(
            :scheduling,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :"real estate",
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        PROPERTY =
          T.let(
            :property,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        RETAIL =
          T.let(:retail, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        ECOMMERCE =
          T.let(
            :ecommerce,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        SALES =
          T.let(:sales, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        MARKETING =
          T.let(
            :marketing,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        TECHNOLOGY =
          T.let(
            :technology,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        TECH =
          T.let(:tech, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        MEDIA =
          T.let(:media, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        SURVEYS =
          T.let(
            :surveys,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        MARKET_RESEARCH =
          T.let(
            :"market research",
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        TRAVEL =
          T.let(:travel, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)
        HOSPITALITY =
          T.let(
            :hospitality,
            Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol
          )
        HOTEL =
          T.let(:hotel, Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseCreateParams::Industry::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Approximate headcount range. Used for vetting heuristics; pick the bucket that
      # contains your current employee count.
      module NumberOfEmployees
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::NumberOfEmployees)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_OF_EMPLOYEES_1_10 =
          T.let(
            :"1-10",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_11_50 =
          T.let(
            :"11-50",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_51_200 =
          T.let(
            :"51-200",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_201_500 =
          T.let(
            :"201-500",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_501_2000 =
          T.let(
            :"501-2000",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_2001_10000 =
          T.let(
            :"2001-10000",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )
        NUMBER_OF_EMPLOYEES_10001_PLUS =
          T.let(
            :"10001+",
            Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::NumberOfEmployees::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Legal-entity form. Pick the form that matches your incorporation documents:
      #
      # - `corporation` — C-corp or S-corp.
      # - `llc` — limited liability company.
      # - `partnership` — general/limited partnership.
      # - `nonprofit` — non-profit corporation, charitable trust, or
      #   501(c)(3)/equivalent.
      # - `other` — anything else (sole proprietorships, government bodies, DBAs, etc.).
      #   You may be asked for additional documents during vetting.
      module OrganizationLegalType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::OrganizationLegalType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CORPORATION =
          T.let(
            :corporation,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        LLC =
          T.let(
            :llc,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        PARTNERSHIP =
          T.let(
            :partnership,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::OrganizationLegalType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Organization category for vetting purposes:
      #
      # - `commercial` — for-profit business entities (LLC, corp, partnership, sole
      #   proprietorship). Most callers fall here.
      # - `government` — federal/state/local government bodies.
      # - `non_profit` — registered 501(c)(3)/equivalent (incl. educational
      #   institutions, charities, religious organisations).
      module OrganizationType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::OrganizationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMERCIAL =
          T.let(
            :commercial,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )
        NON_PROFIT =
          T.let(
            :non_profit,
            Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EnterpriseCreateParams::OrganizationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      # Process Outsourcer placing calls on behalf of one or more enterprises.
      module RoleType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseCreateParams::RoleType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTERPRISE =
          T.let(
            :enterprise,
            Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol
          )
        BPO =
          T.let(:bpo, Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseCreateParams::RoleType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
