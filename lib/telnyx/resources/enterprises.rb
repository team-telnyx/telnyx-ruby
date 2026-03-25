# frozen_string_literal: true

module Telnyx
  module Resources
    # Enterprise management for Branded Calling and Number Reputation services
    class Enterprises
      # Manage Number Reputation enrollment and check frequency settings for an
      # enterprise
      # @return [Telnyx::Resources::Enterprises::Reputation]
      attr_reader :reputation

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EnterpriseCreateParams} for more details.
      #
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
      #
      # @overload create(billing_address:, billing_contact:, country_code:, doing_business_as:, fein:, industry:, legal_name:, number_of_employees:, organization_contact:, organization_legal_type:, organization_physical_address:, organization_type:, website:, corporate_registration_number: nil, customer_reference: nil, dun_bradstreet_number: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, request_options: {})
      #
      # @param billing_address [Telnyx::Models::EnterpriseCreateParams::BillingAddress]
      #
      # @param billing_contact [Telnyx::Models::EnterpriseCreateParams::BillingContact]
      #
      # @param country_code [String] Country code. Currently only 'US' is accepted.
      #
      # @param doing_business_as [String] Primary business name / DBA name
      #
      # @param fein [String] Federal Employer Identification Number. Format: XX-XXXXXXX or 9-digit number (mi
      #
      # @param industry [String] Industry classification. Case-insensitive. Accepted values: accounting, finance,
      #
      # @param legal_name [String] Legal name of the enterprise
      #
      # @param number_of_employees [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees] Employee count range
      #
      # @param organization_contact [Telnyx::Models::EnterpriseCreateParams::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      # @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType] Legal structure type
      #
      # @param organization_physical_address [Telnyx::Models::EnterpriseCreateParams::OrganizationPhysicalAddress]
      #
      # @param organization_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType] Type of organization
      #
      # @param website [String] Enterprise website URL. Accepts any string — no URL format validation enforced.
      #
      # @param corporate_registration_number [String] Corporate registration number (optional)
      #
      # @param customer_reference [String] Optional customer reference identifier for your own tracking
      #
      # @param dun_bradstreet_number [String] D-U-N-S Number (optional)
      #
      # @param primary_business_domain_sic_code [String] SIC Code (optional)
      #
      # @param professional_license_number [String] Professional license number (optional)
      #
      # @param role_type [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType] Role type in Branded Calling / Number Reputation services
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterpriseCreateResponse]
      #
      # @see Telnyx::Models::EnterpriseCreateParams
      def create(params)
        parsed, options = Telnyx::EnterpriseCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "enterprises",
          body: parsed,
          model: Telnyx::Models::EnterpriseCreateResponse,
          options: options
        )
      end

      # Retrieve details of a specific enterprise by ID.
      #
      # @overload retrieve(enterprise_id, request_options: {})
      #
      # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterpriseRetrieveResponse]
      #
      # @see Telnyx::Models::EnterpriseRetrieveParams
      def retrieve(enterprise_id, params = {})
        @client.request(
          method: :get,
          path: ["enterprises/%1$s", enterprise_id],
          model: Telnyx::Models::EnterpriseRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EnterpriseUpdateParams} for more details.
      #
      # Update enterprise information. All fields are optional — only the provided
      # fields will be updated.
      #
      # @overload update(enterprise_id, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, website: nil, request_options: {})
      #
      # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
      #
      # @param billing_address [Telnyx::Models::EnterpriseUpdateParams::BillingAddress]
      #
      # @param billing_contact [Telnyx::Models::EnterpriseUpdateParams::BillingContact]
      #
      # @param corporate_registration_number [String] Corporate registration number
      #
      # @param customer_reference [String] Customer reference identifier
      #
      # @param doing_business_as [String] DBA name
      #
      # @param dun_bradstreet_number [String] D-U-N-S Number
      #
      # @param fein [String] Federal Employer Identification Number. Format: XX-XXXXXXX or XXXXXXXXX
      #
      # @param industry [String] Industry classification
      #
      # @param legal_name [String] Legal name of the enterprise
      #
      # @param number_of_employees [Symbol, Telnyx::Models::EnterpriseUpdateParams::NumberOfEmployees] Employee count range
      #
      # @param organization_contact [Telnyx::Models::EnterpriseUpdateParams::OrganizationContact] Organization contact information. Note: the response returns this object with th
      #
      # @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseUpdateParams::OrganizationLegalType] Legal structure type
      #
      # @param organization_physical_address [Telnyx::Models::EnterpriseUpdateParams::OrganizationPhysicalAddress]
      #
      # @param primary_business_domain_sic_code [String] SIC Code
      #
      # @param professional_license_number [String] Professional license number
      #
      # @param website [String] Company website URL
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterpriseUpdateResponse]
      #
      # @see Telnyx::Models::EnterpriseUpdateParams
      def update(enterprise_id, params = {})
        parsed, options = Telnyx::EnterpriseUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["enterprises/%1$s", enterprise_id],
          body: parsed,
          model: Telnyx::Models::EnterpriseUpdateResponse,
          options: options
        )
      end

      # Retrieve a paginated list of enterprises associated with your account.
      #
      # @overload list(legal_name: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param legal_name [String] Filter by legal name (partial match)
      #
      # @param page_number [Integer] Page number (1-indexed)
      #
      # @param page_size [Integer] Number of items per page
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EnterpriseListResponse>]
      #
      # @see Telnyx::Models::EnterpriseListParams
      def list(params = {})
        parsed, options = Telnyx::EnterpriseListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "enterprises",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::EnterpriseListResponse,
          options: options
        )
      end

      # Delete an enterprise and all associated resources. This action is irreversible.
      #
      # @overload delete(enterprise_id, request_options: {})
      #
      # @param enterprise_id [String] Unique identifier of the enterprise (UUID)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EnterpriseDeleteParams
      def delete(enterprise_id, params = {})
        @client.request(
          method: :delete,
          path: ["enterprises/%1$s", enterprise_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @reputation = Telnyx::Resources::Enterprises::Reputation.new(client: client)
      end
    end
  end
end
