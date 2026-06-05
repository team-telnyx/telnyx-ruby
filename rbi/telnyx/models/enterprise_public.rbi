# typed: strong

module Telnyx
  module Models
    class EnterprisePublic < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterprisePublic, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::BillingAddress)) }
      attr_reader :billing_address

      sig { params(billing_address: Telnyx::BillingAddress::OrHash).void }
      attr_writer :billing_address

      sig { returns(T.nilable(Telnyx::BillingContact)) }
      attr_reader :billing_contact

      sig { params(billing_contact: Telnyx::BillingContact::OrHash).void }
      attr_writer :billing_contact

      # True once Branded Calling has been activated on this enterprise (see
      # `POST /enterprises/{id}/branded_calling`).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :branded_calling_enabled

      sig { params(branded_calling_enabled: T::Boolean).void }
      attr_writer :branded_calling_enabled

      # Optional corporate-registration / company-number identifier.
      sig { returns(T.nilable(String)) }
      attr_accessor :corporate_registration_number

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(String)) }
      attr_reader :doing_business_as

      sig { params(doing_business_as: String).void }
      attr_writer :doing_business_as

      # Optional D-U-N-S Number issued by Dun & Bradstreet.
      sig { returns(T.nilable(String)) }
      attr_accessor :dun_bradstreet_number

      sig { returns(T.nilable(String)) }
      attr_reader :fein

      sig { params(fein: String).void }
      attr_writer :fein

      sig { returns(T.nilable(String)) }
      attr_reader :industry

      sig { params(industry: String).void }
      attr_writer :industry

      sig { returns(T.nilable(String)) }
      attr_reader :jurisdiction_of_incorporation

      sig { params(jurisdiction_of_incorporation: String).void }
      attr_writer :jurisdiction_of_incorporation

      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

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

      # Optional SIC code for the primary line of business.
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_business_domain_sic_code

      # Optional professional-license number for regulated industries.
      sig { returns(T.nilable(String)) }
      attr_accessor :professional_license_number

      sig { returns(T.nilable(String)) }
      attr_reader :role_type

      sig { params(role_type: String).void }
      attr_writer :role_type

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
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
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
          role_type: String,
          updated_at: Time,
          website: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        billing_address: nil,
        billing_contact: nil,
        # True once Branded Calling has been activated on this enterprise (see
        # `POST /enterprises/{id}/branded_calling`).
        branded_calling_enabled: nil,
        # Optional corporate-registration / company-number identifier.
        corporate_registration_number: nil,
        country_code: nil,
        created_at: nil,
        customer_reference: nil,
        doing_business_as: nil,
        # Optional D-U-N-S Number issued by Dun & Bradstreet.
        dun_bradstreet_number: nil,
        fein: nil,
        industry: nil,
        jurisdiction_of_incorporation: nil,
        legal_name: nil,
        number_of_employees: nil,
        # True once Phone Number Reputation has been enabled on this enterprise (see
        # `POST /enterprises/{id}/reputation`).
        number_reputation_enabled: nil,
        organization_contact: nil,
        organization_legal_type: nil,
        organization_physical_address: nil,
        organization_type: nil,
        # Optional SIC code for the primary line of business.
        primary_business_domain_sic_code: nil,
        # Optional professional-license number for regulated industries.
        professional_license_number: nil,
        role_type: nil,
        updated_at: nil,
        website: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_address: Telnyx::BillingAddress,
            billing_contact: Telnyx::BillingContact,
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
            role_type: String,
            updated_at: Time,
            website: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
