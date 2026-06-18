# frozen_string_literal: true

module Telnyx
  module Resources
    # Manage the legal-entity record that owns your DIRs and phone numbers.
    class Enterprises
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      # @return [Telnyx::Resources::Enterprises::Reputation]
      attr_reader :reputation

      # A Display Identity Record (DIR) is the verified calling identity (display name,
      # logo, call reasons) shown to recipients on outbound calls.
      # @return [Telnyx::Resources::Enterprises::Dir]
      attr_reader :dir

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EnterpriseCreateParams} for more details.
      #
      # Create the legal entity (enterprise) that represents your business on the Telnyx
      # platform.
      #
      # The response carries a server-assigned `id` you use for every subsequent call.
      # An enterprise is created once and reused; the API collects all required fields
      # up front.
      #
      # Common failure modes:
      #
      # - `422` - a required field is missing or malformed (the response
      #   `errors[].source.pointer` names the field).
      # - `409` - an enterprise with the same identifying details already exists under
      #   your account.
      #
      # @overload create(billing_address:, billing_contact:, country_code:, doing_business_as:, fein:, industry:, jurisdiction_of_incorporation:, legal_name:, number_of_employees:, organization_contact:, organization_legal_type:, organization_physical_address:, organization_type:, website:, corporate_registration_number: nil, customer_reference: nil, dun_bradstreet_number: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, role_type: nil, request_options: {})
      #
      # @param billing_address [Telnyx::Models::BillingAddress]
      #
      # @param billing_contact [Telnyx::Models::BillingContact]
      #
      # @param country_code [String] ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
      #
      # @param doing_business_as [String]
      #
      # @param fein [String] US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
      #
      # @param industry [Symbol, Telnyx::Models::EnterpriseCreateParams::Industry] Industry classification.
      #
      # @param jurisdiction_of_incorporation [String]
      #
      # @param legal_name [String] Legal name of the enterprise.
      #
      # @param number_of_employees [Symbol, Telnyx::Models::EnterpriseCreateParams::NumberOfEmployees] Approximate headcount range. Used for vetting heuristics; pick the bucket that c
      #
      # @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      # @param organization_legal_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationLegalType] Legal-entity form. Pick the form that matches your incorporation documents:
      #
      # @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      # @param organization_type [Symbol, Telnyx::Models::EnterpriseCreateParams::OrganizationType] Organization category for vetting purposes:
      #
      # @param website [String]
      #
      # @param corporate_registration_number [String, nil] Optional corporate-registration / company-number identifier.
      #
      # @param customer_reference [String] Optional free-form string the caller can attach for their own bookkeeping. Telny
      #
      # @param dun_bradstreet_number [String, nil] Optional D-U-N-S Number.
      #
      # @param primary_business_domain_sic_code [String, nil] Optional SIC code for the primary line of business.
      #
      # @param professional_license_number [String, nil] Optional professional-license number for regulated industries.
      #
      # @param role_type [Symbol, Telnyx::Models::EnterpriseCreateParams::RoleType] `enterprise` for an organization registering its own DIRs; `bpo` for a Business
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterprisePublicWrapped]
      #
      # @see Telnyx::Models::EnterpriseCreateParams
      def create(params)
        parsed, options = Telnyx::EnterpriseCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "enterprises",
          body: parsed,
          model: Telnyx::EnterprisePublicWrapped,
          options: options
        )
      end

      # Retrieve a single enterprise by id. Returns `404` if the id does not exist or
      # does not belong to your account.
      #
      # @overload retrieve(enterprise_id, request_options: {})
      #
      # @param enterprise_id [String] The enterprise id. Lowercase UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterprisePublicWrapped]
      #
      # @see Telnyx::Models::EnterpriseRetrieveParams
      def retrieve(enterprise_id, params = {})
        @client.request(
          method: :get,
          path: ["enterprises/%1$s", enterprise_id],
          model: Telnyx::EnterprisePublicWrapped,
          options: params[:request_options]
        )
      end

      # Replace the enterprise's mutable fields. Only mutable fields may be sent.
      # Server-assigned and immutable fields (`id`, `record_type`, `created_at`,
      # `updated_at`, status fields, `organization_type`, `country_code`, `role_type`)
      # cannot be changed: including any of them in the body is rejected with
      # `400 Bad Request` (`Field 'X' is not allowed in this request`).
      #
      # @overload update(enterprise_id, billing_address: nil, billing_contact: nil, corporate_registration_number: nil, customer_reference: nil, doing_business_as: nil, dun_bradstreet_number: nil, fein: nil, industry: nil, jurisdiction_of_incorporation: nil, legal_name: nil, number_of_employees: nil, organization_contact: nil, organization_legal_type: nil, organization_physical_address: nil, primary_business_domain_sic_code: nil, professional_license_number: nil, website: nil, request_options: {})
      #
      # @param enterprise_id [String] The enterprise id. Lowercase UUID.
      #
      # @param billing_address [Telnyx::Models::BillingAddress]
      #
      # @param billing_contact [Telnyx::Models::BillingContact]
      #
      # @param corporate_registration_number [String, nil]
      #
      # @param customer_reference [String]
      #
      # @param doing_business_as [String]
      #
      # @param dun_bradstreet_number [String, nil]
      #
      # @param fein [String]
      #
      # @param industry [Symbol, Telnyx::Models::EnterpriseUpdateParams::Industry]
      #
      # @param jurisdiction_of_incorporation [String] Updated state/province/country of incorporation. Optional on update.
      #
      # @param legal_name [String] Legal name of the enterprise.
      #
      # @param number_of_employees [String]
      #
      # @param organization_contact [Telnyx::Models::OrganizationContact]
      #
      # @param organization_legal_type [String]
      #
      # @param organization_physical_address [Telnyx::Models::PhysicalAddress]
      #
      # @param primary_business_domain_sic_code [String, nil]
      #
      # @param professional_license_number [String, nil]
      #
      # @param website [String]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterprisePublicWrapped]
      #
      # @see Telnyx::Models::EnterpriseUpdateParams
      def update(enterprise_id, params = {})
        parsed, options = Telnyx::EnterpriseUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["enterprises/%1$s", enterprise_id],
          body: parsed,
          model: Telnyx::EnterprisePublicWrapped,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EnterpriseListParams} for more details.
      #
      # Return the enterprises you own, paginated. The default page size is 20; the
      # maximum is 250.
      #
      # @overload list(filter_legal_name_contains: nil, legal_name: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_legal_name_contains [String] Case-insensitive partial match on legal name.
      #
      # @param legal_name [String] Filter by legal name (partial match).
      #
      # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      # @param page_size [Integer] Items per page. Default 10. Maximum 250; values above are clamped to 250.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::EnterprisePublic>]
      #
      # @see Telnyx::Models::EnterpriseListParams
      def list(params = {})
        parsed, options = Telnyx::EnterpriseListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "enterprises",
          query: query.transform_keys(
            filter_legal_name_contains: "filter[legal_name][contains]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::EnterprisePublic,
          options: options
        )
      end

      # Soft-delete an enterprise.
      #
      # Failure modes:
      #
      # - `400` - the enterprise still has dependent resources in a non-deletable state.
      #   Remove those first; the response `detail` identifies what is blocking the
      #   delete.
      # - `409` - the enterprise has a dependent resource with an unresolved claim.
      #   Resolve it before deleting.
      # - `404` - the enterprise does not exist or does not belong to your account.
      #
      # @overload delete(enterprise_id, request_options: {})
      #
      # @param enterprise_id [String] The enterprise id. Lowercase UUID.
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

      # Branded Calling is a paid product that must be activated on each enterprise.
      # Activation is idempotent:
      #
      # - First call: marks the enterprise as activated and begins onboarding it with
      #   the Branded Calling platform asynchronously. Returns `200` with
      #   `branded_calling_enabled: true`.
      # - Re-call after success: no-op, returns the same enterprise body.
      # - Re-call after a prior failure: re-queues onboarding, returns `200`.
      #
      # Prerequisite: the calling user must have agreed to the Branded Calling Terms of
      # Service (`POST /terms_of_service/branded_calling/agree`). Without that, this
      # endpoint returns `403 terms_of_service_not_accepted`.
      #
      # Failure modes:
      #
      # - `403` - Branded Calling Terms of Service not accepted.
      # - `404` - enterprise does not exist or does not belong to your account.
      #
      # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
      # for current pricing.
      #
      # @overload branded_calling(enterprise_id, request_options: {})
      #
      # @param enterprise_id [String] The enterprise id. Lowercase UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EnterprisePublicWrapped]
      #
      # @see Telnyx::Models::EnterpriseBrandedCallingParams
      def branded_calling(enterprise_id, params = {})
        @client.request(
          method: :post,
          path: ["enterprises/%1$s/branded_calling", enterprise_id],
          model: Telnyx::EnterprisePublicWrapped,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @reputation = Telnyx::Resources::Enterprises::Reputation.new(client: client)
        @dir = Telnyx::Resources::Enterprises::Dir.new(client: client)
      end
    end
  end
end
