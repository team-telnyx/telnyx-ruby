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

      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed; the email must be verified before references can be submitted.
      sig { returns(Telnyx::Resources::Enterprises::VerifyEmail) }
      attr_reader :verify_email

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
      sig do
        params(
          billing_address: Telnyx::PhysicalAddress::OrHash,
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
        ).returns(Telnyx::EnterprisePublicWrapped)
      end
      def create(
        billing_address:,
        billing_contact:,
        # ISO 3166-1 alpha-2 country code. Currently `US` and `CA` are supported.
        country_code:,
        # The trade name your business operates under if it is different from your legal
        # name, also called a Doing Business As (DBA) name. Leave blank if you only use
        # your legal name.
        doing_business_as:,
        # US Federal Employer Identification Number (`NN-NNNNNNN`) or Canadian equivalent.
        fein:,
        # The industry your business operates in. Choose the closest match from the list;
        # if your value is not accepted, pick the nearest category.
        industry:,
        # The state, province, or country where your business was legally incorporated,
        # for example Delaware.
        jurisdiction_of_incorporation:,
        # Your business's full registered legal name, exactly as it appears on your
        # incorporation or tax documents, 3 to 64 characters.
        legal_name:,
        # Approximate headcount range. Used for vetting heuristics; pick the bucket that
        # contains your current employee count.
        number_of_employees:,
        organization_contact:,
        # Legal-entity form. Pick the form that matches your incorporation documents:
        #
        # - `corporation` - C-corp or S-corp.
        # - `llc` - limited liability company.
        # - `partnership` - general/limited partnership.
        # - `nonprofit` - non-profit corporation, charitable trust, or
        #   501(c)(3)/equivalent.
        # - `other` - anything else (sole proprietorships, government bodies, DBAs, etc.).
        #   You may be asked for additional documents during vetting.
        organization_legal_type:,
        organization_physical_address:,
        # Organization category for vetting purposes:
        #
        # - `commercial` - for-profit business entities (LLC, corp, partnership, sole
        #   proprietorship). Most callers fall here.
        # - `government` - federal/state/local government bodies.
        # - `non_profit` - registered 501(c)(3)/equivalent (incl. educational
        #   institutions, charities, religious organisations).
        organization_type:,
        # Your business's public website address, including https://. Leave blank if your
        # business has no website.
        website:,
        # The official number your company received when it was legally registered or
        # incorporated (for example from your state or national business registry). It is
        # on your certificate of incorporation.
        corporate_registration_number: nil,
        # Your own label for this account. Enter any reference that helps you find it in
        # your records. Telnyx does not use it during vetting.
        customer_reference: nil,
        # Your optional 9-digit D-U-N-S Number issued by Dun & Bradstreet, a unique
        # identifier for your business. Leave blank if you do not have one.
        dun_bradstreet_number: nil,
        # The 4-digit Standard Industrial Classification code for your main line of
        # business, which tells us what industry you operate in. Look it up in the SIC
        # code directory if you are unsure.
        primary_business_domain_sic_code: nil,
        # If your business operates under a professional license (for example legal,
        # medical, or financial services), enter the license number issued by the
        # licensing authority. Leave blank if it does not apply.
        professional_license_number: nil,
        # `enterprise` for an organization registering its own DIRs (the default, and the
        # right choice when the calls display your own brand). `bpo` for a Business
        # Process Outsourcer: a call center that places calls on behalf of other
        # enterprises and displays their brand. A `bpo` enterprise describes the call
        # center itself and cannot own a DIR. Each client the call center calls for gets
        # its own `enterprise` in the same account, with the client's DIR under it; that
        # DIR is then linked to the `bpo` enterprise through `bpo_authorizations`. Fixed
        # at creation.
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
        ).returns(Telnyx::EnterprisePublicWrapped)
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
      #
      # For an approved BPO enterprise (`role_type` `bpo`), changing any identity field
      # (legal name, DBA, website, FEIN, industry, number of employees, physical
      # address, organization contact, D-U-N-S number, legal type, SIC code, corporate
      # registration number, professional license number, or jurisdiction of
      # incorporation) resets `bpo_verification_status` to `pending` for re-approval and
      # sets every DIR authorization for that BPO to `rejected`. After re-approval, link
      # it again with a newly signed LOA (a new `loa_document_id`); resending the old
      # one keeps the authorization `rejected`. Re-sending an unchanged value does not
      # reset anything.
      #
      # If Number Reputation is enabled on the enterprise, `legal_name`,
      # `doing_business_as`, `website`, `fein`, `industry`, `number_of_employees`,
      # `organization_physical_address`, `organization_contact`, and
      # `dun_bradstreet_number` cannot be changed: the request is rejected with `400`.
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
        ).returns(Telnyx::EnterprisePublicWrapped)
      end
      def update(
        # The enterprise id. Lowercase UUID.
        enterprise_id,
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

      # Return the enterprises you own, paginated. The default page size is 20; the
      # maximum is 250.
      sig do
        params(
          filter_legal_name_contains: String,
          filter_role_type:
            Telnyx::EnterpriseListParams::FilterRoleType::OrSymbol,
          legal_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::EnterprisePublic]
        )
      end
      def list(
        # Case-insensitive partial match on legal name.
        filter_legal_name_contains: nil,
        # Only return enterprises of this type: `bpo` for call-center (BPO) enterprises,
        # `enterprise` for normal enterprises. Omit to return both.
        filter_role_type: nil,
        # Filter by legal name (partial match).
        legal_name: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Default 10. Maximum 250; values above are clamped to 250.
        page_size: nil,
        request_options: {}
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
      # - `403` - Branded Calling Terms of Service not accepted.
      # - `404` - enterprise does not exist or does not belong to your account.
      #
      # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
      # for current pricing.
      sig do
        params(
          enterprise_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EnterprisePublicWrapped)
      end
      def branded_calling(
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
