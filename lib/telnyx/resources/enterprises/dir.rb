# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      # A Display Identity Record (DIR) is the verified calling identity (display name,
      # logo, call reasons) shown to recipients on outbound calls.
      class Dir
        # @return [Telnyx::Resources::Enterprises::Dir::Comments]
        attr_reader :comments

        # @return [Telnyx::Resources::Enterprises::Dir::PhoneNumberBatches]
        attr_reader :phone_number_batches

        # @return [Telnyx::Resources::Enterprises::Dir::PhoneNumbers]
        attr_reader :phone_numbers

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Enterprises::DirCreateParams} for more details.
        #
        # Create a new DIR under the given enterprise. The DIR starts in `draft` status;
        # it must be submitted (`POST .../submit`) and approved by Telnyx before any phone
        # number can be attached.
        #
        # **Field rules**
        #
        # - `display_name`: 1–35 characters, no emoji or whitespace-only strings; this is
        #   the name shown to recipients.
        # - `call_reasons`: 1–10 strings, each ≤64 characters; describe why your business
        #   calls customers (e.g. 'Appointment reminders', 'Billing inquiries'). Validate
        #   the wording against `POST /call_reasons/validate`.
        # - `logo_url`: HTTPS URL (max 128 chars) to a 256×256 BMP (max 1 MB). The image
        #   is downloaded and hashed at submission time.
        # - `documents`: up to 20 entries; each `document_id` must be obtained by
        #   uploading the file via the Telnyx Documents API first. Within one DIR a
        #   `document_id` may only appear once.
        # - `certify_brand_is_accurate`, `certify_no_shaft_content`,
        #   `certify_ip_ownership` MUST all be `true`.
        #
        # **Failure modes**
        #
        # - `422` — validation error; `errors[].source.pointer` names the offending field.
        # - `403` — Branded Calling not activated on this enterprise (see
        #   `POST /enterprises/{id}/branded_calling`).
        # - `404` — enterprise does not exist or does not belong to your account.
        #
        # @overload create(enterprise_id, authorizer_email:, authorizer_name:, certify_brand_is_accurate:, certify_ip_ownership:, certify_no_shaft_content:, display_name:, call_reasons: nil, documents: nil, logo_url: nil, reselling: nil, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement-no
        #
        # @param authorizer_name [String] Name of the person at your enterprise who is authorizing this DIR registration.
        #
        # @param certify_brand_is_accurate [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyBrandIsAccurate] Must be `true`.
        #
        # @param certify_ip_ownership [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyIPOwnership] Must be `true`. Confirms ownership of any logos/trademarks shown.
        #
        # @param certify_no_shaft_content [Boolean, Telnyx::Models::Enterprises::DirCreateParams::CertifyNoShaftContent] Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate, Alco
        #
        # @param display_name [String] Name shown to call recipients. No emoji; not whitespace-only.
        #
        # @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
        #
        # @param documents [Array<Telnyx::Models::Enterprises::DirCreateParams::Document>] Supporting documents. Each `document_id` may appear at most once on a DIR.
        #
        # @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
        #
        # @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::DirCreateResponse]
        #
        # @see Telnyx::Models::Enterprises::DirCreateParams
        def create(enterprise_id, params)
          parsed, options = Telnyx::Enterprises::DirCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["enterprises/%1$s/dir", enterprise_id],
            body: parsed,
            model: Telnyx::Models::Enterprises::DirCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Enterprises::DirListParams} for more details.
        #
        # Return the DIRs (Display Identity Records) belonging to a single enterprise.
        # Pagination is JSON:API style (`page[number]`, `page[size]`, max 250). Supports
        # `filter[]` query params: `filter[status]`, `filter[display_name][contains]`,
        # `filter[call_reason][contains]`, plus the renewal-window filters
        # `filter[expiring_at][gte]` / `filter[expiring_at][lte]` and the convenience
        # `filter[expiring_within_days]` (mutually exclusive with the explicit gte/lte
        # form). Sortable by `created_at`, `updated_at`, `display_name`, `status`,
        # `submitted_at`, `verified_at`, `expiring_at` (prefix `-` for descending; default
        # `-created_at`).
        #
        # @overload list(enterprise_id, filter_call_reason_contains: nil, filter_display_name_contains: nil, filter_expiring_at_gte: nil, filter_expiring_at_lte: nil, filter_expiring_within_days: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param filter_call_reason_contains [String] Case-insensitive partial match on call reason.
        #
        # @param filter_display_name_contains [String] Case-insensitive partial match on display name.
        #
        # @param filter_expiring_at_gte [Time] Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        #
        # @param filter_expiring_at_lte [Time] Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        #
        # @param filter_expiring_within_days [Integer] Convenience: returns DIRs whose `expiring_at` falls within the next N days (1–36
        #
        # @param filter_status [Symbol, Telnyx::Models::Enterprises::DirListParams::FilterStatus] Filter by DIR status.
        #
        # @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        # @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        # @param sort [Symbol, Telnyx::Models::Enterprises::DirListParams::Sort] Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`, `subm
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Enterprises::DirListResponse>]
        #
        # @see Telnyx::Models::Enterprises::DirListParams
        def list(enterprise_id, params = {})
          parsed, options = Telnyx::Enterprises::DirListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["enterprises/%1$s/dir", enterprise_id],
            query: query.transform_keys(
              filter_call_reason_contains: "filter[call_reason][contains]",
              filter_display_name_contains: "filter[display_name][contains]",
              filter_expiring_at_gte: "filter[expiring_at][gte]",
              filter_expiring_at_lte: "filter[expiring_at][lte]",
              filter_expiring_within_days: "filter[expiring_within_days]",
              filter_status: "filter[status]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Enterprises::DirListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @comments = Telnyx::Resources::Enterprises::Dir::Comments.new(client: client)
          @phone_number_batches = Telnyx::Resources::Enterprises::Dir::PhoneNumberBatches.new(client: client)
          @phone_numbers = Telnyx::Resources::Enterprises::Dir::PhoneNumbers.new(client: client)
        end
      end
    end
  end
end
