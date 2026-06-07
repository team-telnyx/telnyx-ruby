# typed: strong

module Telnyx
  module Resources
    class Enterprises
      # A Display Identity Record (DIR) is the verified calling identity (display name,
      # logo, call reasons) shown to recipients on outbound calls.
      class Dir
        sig { returns(Telnyx::Resources::Enterprises::Dir::Comments) }
        attr_reader :comments

        sig { returns(Telnyx::Resources::Enterprises::Dir::PhoneNumberBatches) }
        attr_reader :phone_number_batches

        sig { returns(Telnyx::Resources::Enterprises::Dir::PhoneNumbers) }
        attr_reader :phone_numbers

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
        sig do
          params(
            enterprise_id: String,
            authorizer_email: String,
            authorizer_name: String,
            certify_brand_is_accurate:
              Telnyx::Enterprises::DirCreateParams::CertifyBrandIsAccurate::OrBoolean,
            certify_ip_ownership:
              Telnyx::Enterprises::DirCreateParams::CertifyIPOwnership::OrBoolean,
            certify_no_shaft_content:
              Telnyx::Enterprises::DirCreateParams::CertifyNoShaftContent::OrBoolean,
            display_name: String,
            call_reasons: T::Array[String],
            documents:
              T::Array[Telnyx::Enterprises::DirCreateParams::Document::OrHash],
            logo_url: String,
            reselling: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Enterprises::DirCreateResponse)
        end
        def create(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          # Contact email of the authorizer. Telnyx may send verification or
          # infringement-notice email here; use a monitored mailbox.
          authorizer_email:,
          # Name of the person at your enterprise who is authorizing this DIR registration.
          # Must be a real individual (used for audit and trademark-claim contests).
          authorizer_name:,
          # Must be `true`.
          certify_brand_is_accurate:,
          # Must be `true`. Confirms ownership of any logos/trademarks shown.
          certify_ip_ownership:,
          # Must be `true`. Confirms this DIR is not used for SHAFT content (Sex, Hate,
          # Alcohol, Firearms, Tobacco) where prohibited.
          certify_no_shaft_content:,
          # Name shown to call recipients. No emoji; not whitespace-only.
          display_name:,
          # 1–10 reasons your business calls customers. Validate phrasing against
          # `POST /call_reasons/validate`.
          call_reasons: nil,
          # Supporting documents. Each `document_id` may appear at most once on a DIR.
          documents: nil,
          # Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
          logo_url: nil,
          # Set to true if your organization places calls on behalf of other enterprises
          # (BPO/reseller).
          reselling: nil,
          request_options: {}
        )
        end

        # Return the DIRs (Display Identity Records) belonging to a single enterprise.
        # Pagination is JSON:API style (`page[number]`, `page[size]`, max 250). Supports
        # `filter[]` query params: `filter[status]`, `filter[display_name][contains]`,
        # `filter[call_reason][contains]`, plus the renewal-window filters
        # `filter[expiring_at][gte]` / `filter[expiring_at][lte]` and the convenience
        # `filter[expiring_within_days]` (mutually exclusive with the explicit gte/lte
        # form). Sortable by `created_at`, `updated_at`, `display_name`, `status`,
        # `submitted_at`, `verified_at`, `expiring_at` (prefix `-` for descending; default
        # `-created_at`).
        sig do
          params(
            enterprise_id: String,
            filter_call_reason_contains: String,
            filter_display_name_contains: String,
            filter_expiring_at_gte: Time,
            filter_expiring_at_lte: Time,
            filter_expiring_within_days: Integer,
            filter_status:
              Telnyx::Enterprises::DirListParams::FilterStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::Enterprises::DirListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Enterprises::DirListResponse
            ]
          )
        end
        def list(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          # Case-insensitive partial match on call reason.
          filter_call_reason_contains: nil,
          # Case-insensitive partial match on display name.
          filter_display_name_contains: nil,
          # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
          filter_expiring_at_gte: nil,
          # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
          filter_expiring_at_lte: nil,
          # Convenience: returns DIRs whose `expiring_at` falls within the next N days
          # (1–365). Equivalent to setting `filter[expiring_at][gte]=<now>` +
          # `filter[expiring_at][lte]=<now+N>`. Mutually exclusive with the explicit
          # `[gte]`/`[lte]` filters — combining returns 400.
          filter_expiring_within_days: nil,
          # Filter by DIR status.
          filter_status: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
          # `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
          # Default `-created_at`.
          sort: nil,
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
end
