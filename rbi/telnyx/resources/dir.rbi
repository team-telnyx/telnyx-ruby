# typed: strong

module Telnyx
  module Resources
    class Dir
      # Read messages from the Telnyx vetting team and reply with clarifying
      # information.
      sig { returns(Telnyx::Resources::Dir::Comments) }
      attr_reader :comments

      # Phone numbers are submitted to Telnyx for vetting in batches. Batches group all
      # numbers added in a single request under the same Letter of Authorization.
      sig { returns(Telnyx::Resources::Dir::PhoneNumberBatches) }
      attr_reader :phone_number_batches

      # Associate phone numbers with a verified DIR so calls from those numbers carry
      # the DIR's display identity.
      sig { returns(Telnyx::Resources::Dir::PhoneNumbers) }
      attr_reader :phone_numbers

      # Submit and manage the two business references and one financial reference that
      # vouch for a DIR. References are contacted to confirm the business identity
      # during vetting.
      sig { returns(Telnyx::Resources::Dir::References) }
      attr_reader :references

      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed; the email must be verified before references can be submitted.
      sig { returns(Telnyx::Resources::Dir::VerifyEmail) }
      attr_reader :verify_email

      # Returns a single DIR by id. The enterprise is resolved server-side from the DIR
      # id. Returns `404` if the DIR does not exist or is not yours.
      sig do
        params(
          dir_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::DirWrapped)
      end
      def retrieve(
        # The DIR id. Lowercase UUID.
        dir_id,
        request_options: {}
      )
      end

      # Edit a DIR. DIRs in `draft`, `rejected`, `unsuccessful`, or `suspended` can be
      # edited freely: PATCH is a pure edit, `status` is never changed, and you re-vet
      # by calling `POST /v2/dir/{dir_id}/submit` explicitly. A `verified` DIR can also
      # be edited in place: a PATCH that changes any value returns the DIR to `draft`;
      # the currently approved identity keeps displaying, and the edited content goes
      # live only after you re-submit and the DIR is approved again. A PATCH that
      # changes nothing (an empty body or values identical to the current ones) leaves
      # the DIR `verified`, so idempotent retries are safe. Changing only
      # `bpo_authorizations` or `webhook_url` is the exception: the DIR stays
      # `verified`. Each BPO authorization is reviewed on its own instead. DIRs in any
      # other status (`submitted`, `in_review`, `expired`, `infringement_claimed`,
      # `permanently_rejected`) cannot be edited.
      sig do
        params(
          dir_id: String,
          authorizer_email: String,
          authorizer_name: String,
          bpo_authorizations: T::Array[Telnyx::BpoAuthorizationInput::OrHash],
          call_reasons: T::Array[String],
          certify_brand_is_accurate: T::Boolean,
          certify_ip_ownership: T::Boolean,
          certify_no_shaft_content: T::Boolean,
          display_name: String,
          documents: T::Array[Telnyx::Document::OrHash],
          logo_url: String,
          reselling: T::Boolean,
          webhook_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::DirWrapped)
      end
      def update(
        # The DIR id. Lowercase UUID.
        dir_id,
        # Contact email of the authorizer. Telnyx may send verification or infringement
        # notices here.
        authorizer_email: nil,
        # Name of the person at your enterprise authorizing this DIR. Must be a real
        # individual.
        authorizer_name: nil,
        # Optional. Replace this DIR's authorized BPO (Business Process Outsourcer)
        # accounts with these, each with its signed Letter of Authorization. The supplied
        # list replaces the current one: a BPO left out has its authorization removed, and
        # a new BPO (or a changed Letter of Authorization) is created `pending` admin
        # review. Send an empty list to clear all authorizations; omit the field to leave
        # them unchanged. Editing this list does not re-vet the DIR. Maximum 10.
        bpo_authorizations: nil,
        # 1–10 reasons your business calls customers. Validate phrasing against
        # `POST /call_reasons/validate`.
        call_reasons: nil,
        # Certification that the DIR information is accurate. Must be `true` for the DIR
        # to be submitted for vetting.
        certify_brand_is_accurate: nil,
        # Certification of ownership of any logos/trademarks shown. Must be `true` for the
        # DIR to be submitted for vetting.
        certify_ip_ownership: nil,
        # Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol,
        # Firearms, Tobacco) where prohibited. Must be `true` for the DIR to be submitted
        # for vetting.
        certify_no_shaft_content: nil,
        # Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
        display_name: nil,
        # Additional supporting documents to attach. Append-only: existing documents are
        # never removed or replaced, and an empty or omitted list is a no-op. Each
        # `document_id` may appear at most once on a DIR.
        documents: nil,
        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        logo_url: nil,
        # Set to true if your organization places calls on behalf of other enterprises
        # (BPO/reseller). Updating this triggers re-vetting on next submit.
        reselling: nil,
        # Optional `https://` URL that receives webhook notifications when this DIR's
        # compliance review completes. Send `null` to clear. Changing only this field on a
        # `verified` DIR does not re-vet it. Maximum 2048 characters.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Returns every DIR (Display Identity Record) you own, across all of your
      # enterprises, as a single list. Pagination is JSON:API style (`page[number]`,
      # `page[size]`, max 250). Supports `filter[]` query params:
      # `filter[enterprise_id]`, `filter[status]`, `filter[display_name][contains]`,
      # `filter[call_reason][contains]`, plus the renewal-window filters
      # `filter[expiring_at][gte]` / `filter[expiring_at][lte]`. Sortable by
      # `created_at`, `updated_at`, `display_name`, `status` (prefix `-` for descending;
      # default `-created_at`).
      sig do
        params(
          filter_call_reason_contains: String,
          filter_display_name_contains: String,
          filter_enterprise_id: String,
          filter_expiring_at_gte: Time,
          filter_expiring_at_lte: Time,
          filter_status: Telnyx::DirStatus::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::DirListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::DirAPI])
      end
      def list(
        # Case-insensitive partial match on call reason.
        filter_call_reason_contains: nil,
        # Case-insensitive partial match on display name.
        filter_display_name_contains: nil,
        # Filter by enterprise ID.
        filter_enterprise_id: nil,
        # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        # Pairs with the `[lte]` variant to build renewal-window dashboards.
        filter_expiring_at_gte: nil,
        # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        filter_expiring_at_lte: nil,
        # Filter by DIR status.
        filter_status: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Maximum 250; values above are clamped to 250.
        page_size: nil,
        # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
        # `status`. Prefix with `-` for descending. Default `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      # Request deletion of a DIR. This does not remove the DIR on this call: it records
      # the request, moves the DIR to `delete_requested`, and Telnyx completes the
      # removal (de-registration and cleanup) shortly after. A verified DIR keeps
      # serving its branded identity, and keeps billing, until the removal is executed.
      # Failure modes: `400` if a child phone number is still attached or the DIR is
      # `in_review` (wait for the review to finish), `409` if the DIR has an unresolved
      # infringement claim, `404` if the DIR is not yours.
      sig do
        params(
          dir_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DirDeleteResponse)
      end
      def delete(
        # The DIR id. Lowercase UUID.
        dir_id,
        request_options: {}
      )
      end

      # The Letter of Authorization in which a Brand Owner authorizes an approved BPO
      # (Business Process Outsourcer) to place branded calls that display this DIR on
      # the owner's behalf. Both parties are read from the caller's account: the Brand
      # Owner is the enterprise that owns the DIR, and the BPO is `bpo_enterprise_id`.
      # No business identity is accepted in the body.
      #
      # When `signature` is omitted the PDF is returned unsigned so the Brand Owner can
      # sign it externally and the BPO can upload it via the Documents API. When
      # `signature` is present the PDF embeds the supplied image, printed name, and
      # signed-at date.
      #
      # Returns `application/pdf`.
      sig do
        params(
          dir_id: String,
          bpo_enterprise_id: String,
          signature: Telnyx::SignaturePayload::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def bpo_loa(
        # The DIR id.
        dir_id,
        # The approved BPO enterprise the Brand Owner is authorizing. Must be a BPO
        # account on the caller's organization that has already been approved.
        bpo_enterprise_id:,
        # Optional. When provided the rendered PDF embeds the signature image, printed
        # name, and signed-at date. When absent the PDF is returned unsigned so the Brand
        # Owner can sign externally and the BPO can upload it via the Documents API.
        signature: nil,
        request_options: {}
      )
      end

      # Reference list of `document_type` values accepted by
      # `DirCreateRequest.documents[].document_type` and the infringement-contest
      # endpoint. Each entry has a stable `short_name` (used in API calls) and a
      # customer-facing description.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::DirListDocumentTypesResponse
        )
      end
      def list_document_types(request_options: {})
      end

      # Return the trademark or copyright claims filed against this DIR. Each claim's
      # `status` is `pending` (newly filed; DIR auto-suspended), `contested` (you have
      # submitted contest evidence; awaiting resolution), or `resolved` (final).
      # Resolution outcomes: `upheld` (claim accepted; DIR stays
      # suspended/permanently_rejected), `rejected` (claim dismissed; DIR restored to
      # `verified`), `modified` (partial outcome).
      sig do
        params(
          dir_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::InfringementClaim]
        )
      end
      def list_infringement_claims(
        # The DIR id. Lowercase UUID.
        dir_id,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Maximum 250; values above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Generate a pre-filled Letter of Authorization (LOA) PDF for a DIR. Enterprise
      # identity (legal name, DBA, address, contact, website, tax id) and the DIR
      # display name are read server-side; the caller supplies the telephone numbers to
      # authorize, an optional Authorized Agent block, and an optional drawn signature.
      #
      # When `signature` is omitted the PDF is returned unsigned so the customer can
      # sign it externally and upload it via the Documents API. When `signature` is
      # present the PDF embeds the supplied image, printed name, and signed-at date.
      #
      # Returns `application/pdf`.
      sig do
        params(
          dir_id: String,
          phone_numbers: T::Array[String],
          agent: Telnyx::Enterprises::Reputation::AgentInput::OrHash,
          signature: Telnyx::SignaturePayload::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def new_loa(
        # The DIR id.
        dir_id,
        # Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by
        # 10-15 digits). Max 15 per request.
        phone_numbers:,
        # Third-party reseller / partner managing the enterprise's phone numbers. Omit
        # when the enterprise works directly with Telnyx.
        agent: nil,
        # Optional. When provided the rendered PDF embeds the signature image, printed
        # name, and signed-at date. When absent the PDF is returned unsigned so the
        # customer can sign externally and upload it via the Documents API.
        signature: nil,
        request_options: {}
      )
      end

      # List the BPO (Business Process Outsourcer) accounts a Brand Owner has authorized
      # on this DIR, together with the review state of each authorization.
      #
      # Authorizations are supplied as the `bpo_authorizations` array when creating or
      # updating a DIR, and each one is reviewed on its own. Only an `approved`
      # authorization adds that BPO to this DIR's authorized callers in the branded
      # calling registry; `pending` and `rejected` authorizations do not. Each entry
      # includes the `loa_document_id` you submitted: because `bpo_authorizations`
      # replaces the whole list on every DIR update, send each entry you want to keep
      # back with its `loa_document_id` unchanged, and it keeps its review state. A
      # rejected entry carries a `rejection_reason`. Returns an empty list when the DIR
      # has authorized no BPOs.
      sig do
        params(
          dir_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DirRetrieveBpoAuthorizationsResponse)
      end
      def retrieve_bpo_authorizations(
        # The DIR id. Lowercase UUID.
        dir_id,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Maximum 250; values above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Submit a DIR for vetting. Sends the DIR back through the vetting cycle from any
      # non-terminal status. When re-submitting from `suspended` or `expired`, the DIR's
      # previous Branded Calling registration is torn down transactionally and its phone
      # numbers flip back to `submitted`. When re-submitting from `verified`, the
      # existing registration stays live throughout the new vetting cycle.
      #
      # Returns `400` from `submitted`/`in_review`/`permanently_rejected`. Returns `400`
      # if the DIR's business and financial references have not been submitted. Returns
      # `409` if the DIR has an unresolved infringement claim.
      sig do
        params(
          dir_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::DirWrapped)
      end
      def submit(
        # The DIR id. Lowercase UUID.
        dir_id,
        request_options: {}
      )
      end

      # Push a fix for a DIR that is `suspended` with an open infringement claim back
      # into vetting. `POST /dir/{dir_id}/submit` is blocked while a claim is open, so
      # this is the customer-callable path to update the DIR's content and re-certify
      # before Telnyx adjudicates the claim. All four certification booleans must be
      # `true`. Optional content fields (`display_name`, `logo_url`, `call_reasons`,
      # `documents`) update the DIR; documents are append-only.
      sig do
        params(
          dir_id: String,
          certify_brand_is_accurate:
            Telnyx::DirUpdateInfringementParams::CertifyBrandIsAccurate::OrBoolean,
          certify_ip_ownership:
            Telnyx::DirUpdateInfringementParams::CertifyIPOwnership::OrBoolean,
          certify_no_infringement:
            Telnyx::DirUpdateInfringementParams::CertifyNoInfringement::OrBoolean,
          certify_no_shaft_content:
            Telnyx::DirUpdateInfringementParams::CertifyNoShaftContent::OrBoolean,
          infringement_resolution_notes: String,
          call_reasons: T.nilable(T::Array[String]),
          display_name: T.nilable(String),
          documents: T.nilable(T::Array[Telnyx::Document::OrHash]),
          logo_url: T.nilable(String),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::DirWrapped)
      end
      def update_infringement(
        # The DIR id. Lowercase UUID.
        dir_id,
        # Must be `true`.
        certify_brand_is_accurate:,
        # Must be `true`.
        certify_ip_ownership:,
        # Check to certify that the brand no longer infringes anyone else's trademark or
        # intellectual property.
        certify_no_infringement:,
        # Must be `true`.
        certify_no_shaft_content:,
        # Explanation of how the infringement concern was addressed.
        infringement_resolution_notes:,
        call_reasons: nil,
        # The business name shown to call recipients, 1 to 35 characters, no emoji, not
        # blank.
        display_name: nil,
        # Append-only supporting documents to attach while resolving the claim (e.g.
        # authorization or licensing proof).
        documents: nil,
        # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        logo_url: nil,
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
