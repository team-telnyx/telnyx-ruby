# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Read messages from the Telnyx vetting team and reply with clarifying
      # information.
      # @return [Telnyx::Resources::Dir::Comments]
      attr_reader :comments

      # Phone numbers are submitted to Telnyx for vetting in batches. Batches group all
      # numbers added in a single request under the same Letter of Authorization.
      # @return [Telnyx::Resources::Dir::PhoneNumberBatches]
      attr_reader :phone_number_batches

      # Associate phone numbers with a verified DIR so calls from those numbers carry
      # the DIR's display identity.
      # @return [Telnyx::Resources::Dir::PhoneNumbers]
      attr_reader :phone_numbers

      # Returns a single DIR by id. The enterprise is resolved server-side from the DIR
      # id. Returns `404` if the DIR does not exist or is not yours.
      #
      # @overload retrieve(dir_id, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DirRetrieveResponse]
      #
      # @see Telnyx::Models::DirRetrieveParams
      def retrieve(dir_id, params = {})
        @client.request(
          method: :get,
          path: ["dir/%1$s", dir_id],
          model: Telnyx::Models::DirRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DirUpdateParams} for more details.
      #
      # Edit a DIR. DIRs in `draft`, `rejected`, `unsuccessful`, or `suspended` can be
      # edited freely: PATCH is a pure edit, `status` is never changed, and you re-vet
      # by calling `POST /v2/dir/{dir_id}/submit` explicitly. A `verified` DIR can also
      # be edited in place: a PATCH that changes any value returns the DIR to `draft`
      # and branded delivery stops until you re-submit and the DIR is approved again,
      # while a PATCH that changes nothing (an empty body or values identical to the
      # current ones) leaves the DIR `verified`, so idempotent retries are safe. DIRs in
      # any other status (`submitted`, `in_review`, `expired`, `infringement_claimed`,
      # `permanently_rejected`) cannot be edited.
      #
      # @overload update(dir_id, authorizer_email: nil, authorizer_name: nil, call_reasons: nil, certify_brand_is_accurate: nil, certify_ip_ownership: nil, certify_no_shaft_content: nil, display_name: nil, documents: nil, logo_url: nil, reselling: nil, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement no
      #
      # @param authorizer_name [String] Name of the person at your enterprise authorizing this DIR. Must be a real indiv
      #
      # @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
      #
      # @param certify_brand_is_accurate [Boolean] Certification that the DIR information is accurate. Must be `true` for the DIR t
      #
      # @param certify_ip_ownership [Boolean] Certification of ownership of any logos/trademarks shown. Must be `true` for the
      #
      # @param certify_no_shaft_content [Boolean] Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol, F
      #
      # @param display_name [String] Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      # @param documents [Array<Telnyx::Models::DirUpdateParams::Document>] Additional supporting documents to attach. Append-only: existing documents are n
      #
      # @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      # @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DirUpdateResponse]
      #
      # @see Telnyx::Models::DirUpdateParams
      def update(dir_id, params = {})
        parsed, options = Telnyx::DirUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["dir/%1$s", dir_id],
          body: parsed,
          model: Telnyx::Models::DirUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DirListParams} for more details.
      #
      # Returns every DIR (Display Identity Record) you own, across all of your
      # enterprises, as a single list. Pagination is JSON:API style (`page[number]`,
      # `page[size]`, max 250). Supports `filter[]` query params:
      # `filter[enterprise_id]`, `filter[status]`, `filter[display_name][contains]`,
      # `filter[call_reason][contains]`, plus the renewal-window filters
      # `filter[expiring_at][gte]` / `filter[expiring_at][lte]`. Sortable by
      # `created_at`, `updated_at`, `display_name`, `status` (prefix `-` for descending;
      # default `-created_at`).
      #
      # @overload list(filter_call_reason_contains: nil, filter_display_name_contains: nil, filter_enterprise_id: nil, filter_expiring_at_gte: nil, filter_expiring_at_lte: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_call_reason_contains [String] Case-insensitive partial match on call reason.
      #
      # @param filter_display_name_contains [String] Case-insensitive partial match on display name.
      #
      # @param filter_enterprise_id [String] Filter by enterprise ID.
      #
      # @param filter_expiring_at_gte [Time] Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp. Pai
      #
      # @param filter_expiring_at_lte [Time] Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
      #
      # @param filter_status [Symbol, Telnyx::Models::DirListParams::FilterStatus] Filter by DIR status.
      #
      # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
      #
      # @param sort [Symbol, Telnyx::Models::DirListParams::Sort] Sort field. Allowed values: `created_at`, `updated_at`, `display_name`, `status`
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::DirListResponse>]
      #
      # @see Telnyx::Models::DirListParams
      def list(params = {})
        parsed, options = Telnyx::DirListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "dir",
          query: query.transform_keys(
            filter_call_reason_contains: "filter[call_reason][contains]",
            filter_display_name_contains: "filter[display_name][contains]",
            filter_enterprise_id: "filter[enterprise_id]",
            filter_expiring_at_gte: "filter[expiring_at][gte]",
            filter_expiring_at_lte: "filter[expiring_at][lte]",
            filter_status: "filter[status]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::DirListResponse,
          options: options
        )
      end

      # Delete a DIR. Failure modes: `400` if a child phone number is in a non-deletable
      # status, `409` if the DIR has an unresolved infringement claim, `404` if the DIR
      # is not yours.
      #
      # @overload delete(dir_id, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::DirDeleteParams
      def delete(dir_id, params = {})
        @client.request(
          method: :delete,
          path: ["dir/%1$s", dir_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DirCreateLoaParams} for more details.
      #
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
      #
      # @overload create_loa(dir_id, phone_numbers:, agent: nil, signature: nil, request_options: {})
      #
      # @param dir_id [String] The DIR id.
      #
      # @param phone_numbers [Array<String>] Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by 10
      #
      # @param agent [Telnyx::Models::DirCreateLoaParams::Agent] Third-party reseller / partner managing the enterprise's phone numbers. Omit whe
      #
      # @param signature [Telnyx::Models::DirCreateLoaParams::Signature] Optional. When provided the rendered PDF embeds the signature image, printed nam
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::DirCreateLoaParams
      def create_loa(dir_id, params)
        parsed, options = Telnyx::DirCreateLoaParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["dir/%1$s/loa", dir_id],
          headers: {"accept" => "application/pdf"},
          body: parsed,
          model: StringIO,
          options: options
        )
      end

      # Reference list of `document_type` values accepted by
      # `DirCreateRequest.documents[].document_type` and the infringement-contest
      # endpoint. Each entry has a stable `short_name` (used in API calls) and a
      # customer-facing description.
      #
      # @overload list_document_types(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DirListDocumentTypesResponse]
      #
      # @see Telnyx::Models::DirListDocumentTypesParams
      def list_document_types(params = {})
        @client.request(
          method: :get,
          path: "dir/document_types",
          model: Telnyx::Models::DirListDocumentTypesResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DirListInfringementClaimsParams} for more details.
      #
      # Return the trademark or copyright claims filed against this DIR. Each claim's
      # `status` is `pending` (newly filed; DIR auto-suspended), `contested` (you have
      # submitted contest evidence; awaiting resolution), or `resolved` (final).
      # Resolution outcomes: `upheld` (claim accepted; DIR stays
      # suspended/permanently_rejected), `rejected` (claim dismissed; DIR restored to
      # `verified`), `modified` (partial outcome).
      #
      # @overload list_infringement_claims(dir_id, page_number: nil, page_size: nil, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::DirListInfringementClaimsResponse>]
      #
      # @see Telnyx::Models::DirListInfringementClaimsParams
      def list_infringement_claims(dir_id, params = {})
        parsed, options = Telnyx::DirListInfringementClaimsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["dir/%1$s/infringement_claims", dir_id],
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::DirListInfringementClaimsResponse,
          options: options
        )
      end

      # Submit a DIR for vetting. Sends the DIR back through the vetting cycle from any
      # non-terminal status. When re-submitting from `suspended` or `expired`, the DIR's
      # previous Branded Calling registration is torn down transactionally and its phone
      # numbers flip back to `submitted`. When re-submitting from `verified`, the
      # existing registration stays live throughout the new vetting cycle.
      #
      # Returns `400` from `submitted`/`in_review`/`permanently_rejected`. Returns `409`
      # if the DIR has an unresolved infringement claim.
      #
      # @overload submit(dir_id, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DirSubmitResponse]
      #
      # @see Telnyx::Models::DirSubmitParams
      def submit(dir_id, params = {})
        @client.request(
          method: :post,
          path: ["dir/%1$s/submit", dir_id],
          model: Telnyx::Models::DirSubmitResponse,
          options: params[:request_options]
        )
      end

      # Push a fix for a DIR that is `suspended` with an open infringement claim back
      # into vetting. `POST /dir/{dir_id}/submit` is blocked while a claim is open, so
      # this is the customer-callable path to update the DIR's content and re-certify
      # before Telnyx adjudicates the claim. All four certification booleans must be
      # `true`. Optional content fields (`display_name`, `logo_url`, `call_reasons`,
      # `documents`) update the DIR; documents are append-only.
      #
      # @overload update_infringement(dir_id, certify_brand_is_accurate:, certify_ip_ownership:, certify_no_infringement:, certify_no_shaft_content:, infringement_resolution_notes:, call_reasons: nil, display_name: nil, documents: nil, logo_url: nil, request_options: {})
      #
      # @param dir_id [String] The DIR id. Lowercase UUID.
      #
      # @param certify_brand_is_accurate [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyBrandIsAccurate] Must be `true`.
      #
      # @param certify_ip_ownership [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyIPOwnership] Must be `true`.
      #
      # @param certify_no_infringement [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoInfringement] Must be `true`.
      #
      # @param certify_no_shaft_content [Boolean, Telnyx::Models::DirUpdateInfringementParams::CertifyNoShaftContent] Must be `true`.
      #
      # @param infringement_resolution_notes [String] Explanation of how the infringement concern was addressed.
      #
      # @param call_reasons [Array<String>, nil]
      #
      # @param display_name [String, nil]
      #
      # @param documents [Array<Telnyx::Models::DirUpdateInfringementParams::Document>, nil] Append-only supporting documents.
      #
      # @param logo_url [String, nil] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DirUpdateInfringementResponse]
      #
      # @see Telnyx::Models::DirUpdateInfringementParams
      def update_infringement(dir_id, params)
        parsed, options = Telnyx::DirUpdateInfringementParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["dir/%1$s/infringement_update", dir_id],
          body: parsed,
          model: Telnyx::Models::DirUpdateInfringementResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @comments = Telnyx::Resources::Dir::Comments.new(client: client)
        @phone_number_batches = Telnyx::Resources::Dir::PhoneNumberBatches.new(client: client)
        @phone_numbers = Telnyx::Resources::Dir::PhoneNumbers.new(client: client)
      end
    end
  end
end
