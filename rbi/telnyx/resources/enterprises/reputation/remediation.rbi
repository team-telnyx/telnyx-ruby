# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Remediation
          # Submit a batch of phone numbers belonging to this enterprise for reputation
          # remediation. The request is accepted asynchronously: this endpoint returns `202`
          # with the persisted request id, then the request transitions through processing
          # states until completion. Use the GET endpoints to poll status and per-number
          # results.
          #
          # Each phone number must be in E.164 format and belong to this enterprise. A
          # number that already has an in-flight remediation request is rejected.
          sig do
            params(
              enterprise_id: String,
              call_purpose: String,
              phone_numbers: T::Array[String],
              contact_email: String,
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::RemediationRequestWrapped
            )
          end
          def create(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # How the numbers are used (free text).
            call_purpose:,
            # Phone numbers in E.164 format. Each must belong to this enterprise. Maximum
            # 2,000 per request.
            phone_numbers:,
            # Optional contact email for this remediation request.
            contact_email: nil,
            # Optional https:// URL for status notifications.
            webhook_url: nil,
            request_options: {}
          )
          end

          # Retrieve the full detail of a remediation request, including current status,
          # per-number results (once available), and submission metadata.
          sig do
            params(
              remediation_id: String,
              enterprise_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::RemediationRequestWrapped
            )
          end
          def retrieve(
            # The remediation request id. Lowercase UUID.
            remediation_id,
            # The enterprise id. Lowercase UUID.
            enterprise_id:,
            request_options: {}
          )
          end

          # Paginated list of remediation requests for this enterprise. List items omit
          # per-number results and webhook URLs to keep the response small; call GET by id
          # for full detail. Supports JSON:API pagination and optional filters on status and
          # created-at range.
          sig do
            params(
              enterprise_id: String,
              filter_created_at_gte: Time,
              filter_created_at_lte: Time,
              filter_status:
                Telnyx::Enterprises::Reputation::RemediationStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::Models::Enterprises::Reputation::RemediationListResponse
              ]
            )
          end
          def list(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Only requests created on or after this timestamp (ISO 8601).
            filter_created_at_gte: nil,
            # Only requests created on or before this timestamp (ISO 8601).
            filter_created_at_lte: nil,
            # Filter by customer-facing status.
            filter_status: nil,
            # 1-based page number. Out-of-range values return an empty page with correct meta.
            page_number: nil,
            # Items per page. Maximum 250; values above are clamped to 250.
            page_size: nil,
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
end
