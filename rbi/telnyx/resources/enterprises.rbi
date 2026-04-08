# typed: strong

module Telnyx
  module Resources
    # Enterprise management for Branded Calling and Number Reputation services
    class Enterprises
      # Manage Number Reputation enrollment and check frequency settings for an
      # enterprise
      sig { returns(Telnyx::Resources::Enterprises::Reputation) }
      attr_reader :reputation

      # Create a new enterprise for Branded Calling / Number Reputation services.
      #
      # Registers the enterprise in the Branded Calling / Number Reputation services,
      # enabling it to create Display Identity Records (DIRs) or enroll in Number
      # Reputation monitoring.
      #
      # **Required Fields:** `legal_name`, `doing_business_as`, `organization_type`,
      # `country_code`, `website`, `fein`, `industry`, `number_of_employees`,
      # `organization_legal_type`, `organization_contact`, `billing_contact`,
      # `organization_physical_address`, `billing_address`
      sig do
        params(
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          country_code: String,
          doing_business_as: String,
          fein: String,
          industry: String,
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
          corporate_registration_number: String,
          customer_reference: String,
          dun_bradstreet_number: String,
          primary_business_domain_sic_code: String,
          professional_license_number: String,
          role_type: Telnyx::EnterpriseCreateParams::RoleType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnterpriseCreateResponse)
      end
      def create(
        billing_address:,
        billing_contact:,
        # Country code. Currently only 'US' is accepted.
        country_code:,
        # Primary business name / DBA name
        doing_business_as:,
        # Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number
        # (minimum 9 digits).
        fein:,
        # Industry classification. Case-insensitive. Accepted values: accounting, finance,
        # billing, collections, business, charity, nonprofit, communications, telecom,
        # customer service, support, delivery, shipping, logistics, education, financial,
        # banking, government, public, healthcare, health, pharmacy, medical, insurance,
        # legal, law, notifications, scheduling, real estate, property, retail, ecommerce,
        # sales, marketing, software, technology, tech, media, surveys, market research,
        # travel, hospitality, hotel
        industry:,
        # Legal name of the enterprise
        legal_name:,
        # Employee count range
        number_of_employees:,
        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        organization_contact:,
        # Legal structure type
        organization_legal_type:,
        organization_physical_address:,
        # Type of organization
        organization_type:,
        # Enterprise website URL. Accepts any string — no URL format validation enforced.
        website:,
        # Corporate registration number (optional)
        corporate_registration_number: nil,
        # Optional customer reference identifier for your own tracking
        customer_reference: nil,
        # D-U-N-S Number (optional)
        dun_bradstreet_number: nil,
        # SIC Code (optional)
        primary_business_domain_sic_code: nil,
        # Professional license number (optional)
        professional_license_number: nil,
        # Role type in Branded Calling / Number Reputation services
        role_type: nil,
        request_options: {}
      )
      end

      # Retrieve details of a specific enterprise by ID.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnterpriseRetrieveResponse)
      end
      def retrieve(
        # Unique identifier of the enterprise (UUID)
        enterprise_id,
        request_options: {}
      )
      end

      # Update enterprise information. All fields are optional — only the provided
      # fields will be updated.
      sig do
        params(
          enterprise_id: String,
          billing_address: Telnyx::BillingAddress::OrHash,
          billing_contact: Telnyx::BillingContact::OrHash,
          corporate_registration_number: String,
          customer_reference: String,
          doing_business_as: String,
          dun_bradstreet_number: String,
          fein: String,
          industry: String,
          legal_name: String,
          number_of_employees:
            Telnyx::EnterpriseUpdateParams::NumberOfEmployees::OrSymbol,
          organization_contact: Telnyx::OrganizationContact::OrHash,
          organization_legal_type:
            Telnyx::EnterpriseUpdateParams::OrganizationLegalType::OrSymbol,
          organization_physical_address: Telnyx::PhysicalAddress::OrHash,
          primary_business_domain_sic_code: String,
          professional_license_number: String,
          website: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnterpriseUpdateResponse)
      end
      def update(
        # Unique identifier of the enterprise (UUID)
        enterprise_id,
        billing_address: nil,
        billing_contact: nil,
        # Corporate registration number
        corporate_registration_number: nil,
        # Customer reference identifier
        customer_reference: nil,
        # DBA name
        doing_business_as: nil,
        # D-U-N-S Number
        dun_bradstreet_number: nil,
        # Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
        fein: nil,
        # Industry classification
        industry: nil,
        # Legal name of the enterprise
        legal_name: nil,
        # Employee count range
        number_of_employees: nil,
        # Organization contact information. Note: the response returns this object with
        # the phone field as 'phone' (not 'phone_number').
        organization_contact: nil,
        # Legal structure type
        organization_legal_type: nil,
        organization_physical_address: nil,
        # SIC Code
        primary_business_domain_sic_code: nil,
        # Professional license number
        professional_license_number: nil,
        # Company website URL
        website: nil,
        request_options: {}
      )
      end

      # Retrieve a paginated list of enterprises associated with your account.
      sig do
        params(
          legal_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::EnterprisePublic]
        )
      end
      def list(
        # Filter by legal name (partial match)
        legal_name: nil,
        # Page number (1-indexed)
        page_number: nil,
        # Number of items per page
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an enterprise and all associated resources. This action is irreversible.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Unique identifier of the enterprise (UUID)
        enterprise_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
