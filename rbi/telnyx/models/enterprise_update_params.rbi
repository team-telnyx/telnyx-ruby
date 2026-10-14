# typed: strong

module Telnyx
  module Models
    class EnterpriseUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterpriseUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :enterprise_id

      sig { returns(T.nilable(Telnyx::PhysicalAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::PhysicalAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::BillingContact)) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # The official number your company received when it was legally registered or
      # incorporated (for example from your state or national business registry). It is
      # on your certificate of incorporation.
      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

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
      sig do
        returns(T.nilable(Telnyx::EnterpriseUpdateParams::Industry::OrSymbol))
      end
      attr_reader :industry

      sig do
        params(
          industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol
        ).void
      end
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

      # Your business's public website address, including https://. Leave blank if your
      # business has no website.
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig do
        params(
          enterprise_id: String,
          billing_address: Telnyx::PhysicalAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          corporate_registration_number: T.nilable(String),
          customer_reference: String,
          doing_business_as: String,
          dun_bradstreet_number: T.nilable(String),
          fein: String,
          industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol,
          jurisdiction_of_incorporation: String,
          legal_name: String,
          number_of_employees: String,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type: String,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          primary_business_domain_sic_code: T.nilable(String),
          professional_license_number: T.nilable(String),
          website: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        enterprise_id:,
        billing_address: nil,
        billing_contact: nil,
        # The official number your company received when it was legally registered or
        # incorporated (for example from your state or national business registry). It is
        # on your certificate of incorporation.
        corporate_registration_number: nil,
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
        # The 4-digit Standard Industrial Classification code for your main line of
        # business, which tells us what industry you operate in. Look it up in the SIC
        # code directory if you are unsure.
        primary_business_domain_sic_code: nil,
        # If your business operates under a professional license (for example legal,
        # medical, or financial services), enter the license number issued by the
        # licensing authority. Leave blank if it does not apply.
        professional_license_number: nil,
        # Your business's public website address, including https://. Leave blank if your
        # business has no website.
        website: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enterprise_id: String,
            billing_address: Telnyx::PhysicalAddress,
            billing_contact: Telnyx::BillingContact,
            corporate_registration_number: T.nilable(String),
            customer_reference: String,
            doing_business_as: String,
            dun_bradstreet_number: T.nilable(String),
            fein: String,
            industry: Telnyx::EnterpriseUpdateParams::Industry::OrSymbol,
            jurisdiction_of_incorporation: String,
            legal_name: String,
            number_of_employees: String,
            organization_contact: Telnyx::OrganizationContact,
            organization_legal_type: String,
            organization_physical_address: Telnyx::PhysicalAddress,
            primary_business_domain_sic_code: T.nilable(String),
            professional_license_number: T.nilable(String),
            website: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The industry your business operates in. Choose the closest match from the list;
      # if your value is not accepted, pick the nearest category.
      module Industry
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseUpdateParams::Industry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACCOUNTING =
          T.let(
            :accounting,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        FINANCE =
          T.let(
            :finance,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BILLING =
          T.let(
            :billing,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        COLLECTIONS =
          T.let(
            :collections,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BUSINESS =
          T.let(
            :business,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        CHARITY =
          T.let(
            :charity,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        NONPROFIT =
          T.let(
            :nonprofit,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        COMMUNICATIONS =
          T.let(
            :communications,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TELECOM =
          T.let(
            :telecom,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        CUSTOMER_SERVICE =
          T.let(
            :"customer service",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SUPPORT =
          T.let(
            :support,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        DELIVERY =
          T.let(
            :delivery,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SHIPPING =
          T.let(
            :shipping,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        LOGISTICS =
          T.let(
            :logistics,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        EDUCATION =
          T.let(
            :education,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        FINANCIAL =
          T.let(
            :financial,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        BANKING =
          T.let(
            :banking,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        GOVERNMENT =
          T.let(
            :government,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        PUBLIC =
          T.let(:public, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        HEALTHCARE =
          T.let(
            :healthcare,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        HEALTH =
          T.let(:health, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        PHARMACY =
          T.let(
            :pharmacy,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        MEDICAL =
          T.let(
            :medical,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        INSURANCE =
          T.let(
            :insurance,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        LEGAL =
          T.let(:legal, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        LAW =
          T.let(:law, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        NOTIFICATIONS =
          T.let(
            :notifications,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SCHEDULING =
          T.let(
            :scheduling,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        REAL_ESTATE =
          T.let(
            :"real estate",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        PROPERTY =
          T.let(
            :property,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        RETAIL =
          T.let(:retail, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        ECOMMERCE =
          T.let(
            :ecommerce,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SALES =
          T.let(:sales, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        MARKETING =
          T.let(
            :marketing,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        SOFTWARE =
          T.let(
            :software,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TECHNOLOGY =
          T.let(
            :technology,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TECH =
          T.let(:tech, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        MEDIA =
          T.let(:media, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        SURVEYS =
          T.let(
            :surveys,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        MARKET_RESEARCH =
          T.let(
            :"market research",
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        TRAVEL =
          T.let(:travel, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)
        HOSPITALITY =
          T.let(
            :hospitality,
            Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol
          )
        HOTEL =
          T.let(:hotel, Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseUpdateParams::Industry::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
