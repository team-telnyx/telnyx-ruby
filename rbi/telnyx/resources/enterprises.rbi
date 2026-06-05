# typed: strong

module Telnyx
  module Resources
    # Manage the legal-entity record that owns your DIRs and phone numbers.
    class Enterprises
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      sig { returns(Telnyx::Resources::Enterprises::Reputation) }
      attr_reader :reputation

      # A Display Identity Record (DIR) is the verified calling identity (display name,
      # logo, call reasons) shown to recipients on outbound calls.
      sig { returns(Telnyx::Resources::Enterprises::Dir) }
      attr_reader :dir

      sig { returns(Telnyx::Resources::Enterprises::Usage) }
      attr_reader :usage

      # Create the legal entity that owns your Number Reputation registrations.
      #
      # The response carries a server-assigned `id` you will use for every subsequent
      # call. After creating an enterprise and agreeing to the Number Reputation Terms
      # of Service (`POST /terms_of_service/number_reputation/agree`), enable reputation
      # monitoring via `POST /enterprises/{enterprise_id}/reputation`.
      #
      # An enterprise is shared across Telnyx products; if you also use Branded Calling,
      # the same enterprise is reused.
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
        ).returns(Telnyx::Models::EnterpriseCreateResponse)
      end
      def create(
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

      # Retrieve a single enterprise by id. Returns `404` if the id does not exist or
      # does not belong to your account.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnterpriseRetrieveResponse)
      end
      def retrieve(
        # The enterprise id. Lowercase UUID.
        enterprise_id,
        request_options: {}
      )
      end

      # Replace the enterprise's mutable fields. Only mutable fields may be sent.
      # Server-assigned and immutable fields (`id`, `record_type`, `created_at`,
      # `updated_at`, status fields, `organization_type`, `country_code`, `role_type`)
      # cannot be changed: including any of them in the body is rejected with
      # `400 Bad Request` (`Field 'X' is not allowed in this request`).
      sig do
        params(
          enterprise_id: String,
          billing_address: Telnyx::BillingAddress::OrHash,
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
        ).returns(Telnyx::Models::EnterpriseUpdateResponse)
      end
      def update(
        # The enterprise id. Lowercase UUID.
        enterprise_id,
        billing_address: nil,
        billing_contact: nil,
        corporate_registration_number: nil,
        customer_reference: nil,
        doing_business_as: nil,
        dun_bradstreet_number: nil,
        fein: nil,
        industry: nil,
        # Updated state/province/country of incorporation. Optional on update.
        jurisdiction_of_incorporation: nil,
        # Legal name of the enterprise.
        legal_name: nil,
        number_of_employees: nil,
        organization_contact: nil,
        organization_legal_type: nil,
        organization_physical_address: nil,
        primary_business_domain_sic_code: nil,
        professional_license_number: nil,
        website: nil,
        request_options: {}
      )
      end

      # Return the enterprises you own, paginated. The default page size is 20; the
      # maximum is 250.
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
        # Filter by legal name (partial match).
        legal_name: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Default 10. Maximum 250; values above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an enterprise. Fails with `400` if the enterprise still has dependent
      # resources (e.g. active reputation settings or registered numbers); remove those
      # first. Returns `404` if the enterprise does not exist or does not belong to your
      # account.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # The enterprise id. Lowercase UUID.
        enterprise_id,
        request_options: {}
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
      # - `403` — Branded Calling Terms of Service not accepted.
      # - `404` — enterprise does not exist or does not belong to your account.
      #
      # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
      # for current pricing.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EnterpriseActivateBrandedCallingResponse)
      end
      def activate_branded_calling(
        # The enterprise id. Lowercase UUID.
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
