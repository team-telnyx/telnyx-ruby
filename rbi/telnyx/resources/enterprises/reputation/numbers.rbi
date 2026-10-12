# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Reputation
        # Phone-number reputation monitoring (spam-score lookup and tracking).
        class Numbers
          # Retrieve one registered number with its latest reputation snapshot. The
          # `phone_number` path parameter is in E.164 format and must be URL-encoded (e.g.
          # `%2B19493253498`).
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              fresh: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::ReputationPhoneNumberWithReputation
            )
          end
          def retrieve(
            # Path param: Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading
            # `+` MUST be URL-encoded as `%2B` (e.g. `%2B19493253498`).
            phone_number,
            # Path param: The enterprise id. Lowercase UUID.
            enterprise_id:,
            # Query param: When true, fetches fresh reputation data (incurs API cost). When
            # false (default), returns cached data.
            fresh: nil,
            request_options: {}
          )
          end

          # Paginated list of phone numbers registered for reputation monitoring under this
          # enterprise. The response includes the latest reputation snapshot per number
          # where one has been collected.
          sig do
            params(
              enterprise_id: String,
              filter_ownership_status:
                Telnyx::Enterprises::Reputation::ReputationOwnershipStatus::OrSymbol,
              filter_phone_number_contains: String,
              filter_phone_number_eq: String,
              filter_source:
                Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber
              ]
            )
          end
          def list(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Only numbers with this ownership status. `removed` lists the numbers that were
            # removed, each with its `removal_reason` and `removed_at`; removed numbers are
            # not returned otherwise.
            filter_ownership_status: nil,
            # Partial match on phone number. Must contain at least 5 digits.
            filter_phone_number_contains: nil,
            # Exact phone-number match (E.164).
            filter_phone_number_eq: nil,
            # Only numbers with this source.
            filter_source: nil,
            # 1-based page number. Out-of-range values return an empty page with correct meta.
            page_number: nil,
            # Items per page. Default 10. Maximum 250; values above are clamped to 250.
            page_size: nil,
            request_options: {}
          )
          end

          # Add up to 100 phone numbers to reputation monitoring on this enterprise. Each
          # must be in E.164 format (`+1NPANXXXXXX` for US/CA). A number in your Telnyx
          # phone-number inventory is accepted as `source: telnyx`; a number that is not is
          # treated as hosted with another provider and must meet the requirements below.
          #
          # **Prerequisite**: reputation must already be enabled on this enterprise (see
          # `POST .../reputation`).
          #
          # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
          # for current pricing.
          #
          # A phone number that is not in your Telnyx inventory is treated as a number
          # hosted with another provider (`source: external`). It must be a US local number,
          # and the enterprise's ownership proof must be approved first
          # (`POST /enterprises/{enterprise_id}/reputation/external_verification`);
          # otherwise the request fails with a 400 whose `detail` contains
          # `external_verification_required`. Ownership of such numbers is checked every
          # day.
          sig do
            params(
              enterprise_id: String,
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::ReputationPhoneNumberList
            )
          end
          def associate(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # 1–100 phone numbers in E.164 format with a leading `+`.
            phone_numbers:,
            request_options: {}
          )
          end

          # Stop tracking the reputation of this phone number. The number itself remains in
          # your inventory; only the reputation registration is removed.
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def disassociate(
            # Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
            # URL-encoded as `%2B` (e.g. `%2B19493253498`).
            phone_number,
            # The enterprise id. Lowercase UUID.
            enterprise_id:,
            request_options: {}
          )
          end

          # Answer an ownership question about a phone number hosted with another provider.
          #
          # Send `still_own: true` to confirm you still own a number whose
          # `ownership_status` is `pending_confirmation` or `flagged`; its status returns to
          # `verified` and, after a carrier change, the new carrier becomes the one on
          # record.
          #
          # Send `still_own: false` to report that you no longer own the number. It is
          # removed from Number Reputation immediately, whatever its current status, and the
          # response shows it with `ownership_status: removed`.
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              still_own: T::Boolean,
              evidence_document_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Enterprises::Reputation::ReputationPhoneNumberWithReputation
            )
          end
          def ownership_confirm(
            # Path param: Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading
            # `+` MUST be URL-encoded as `%2B` (e.g. `%2B19493253498`).
            phone_number,
            # Path param: The enterprise id. Lowercase UUID.
            enterprise_id:,
            # Body param: `true` confirms you still own the number. `false` reports that you
            # no longer own it and removes it from Number Reputation.
            still_own:,
            # Body param: Optional id of an uploaded document supporting the confirmation.
            evidence_document_id: nil,
            request_options: {}
          )
          end

          # Immediately refresh the stored reputation data for the listed numbers. This is
          # in addition to the periodic refresh determined by `check_frequency`. Up to 100
          # numbers per call. The response carries the kicked-off jobs; the actual refresh
          # runs asynchronously.
          #
          # **Pricing:** Forcing a refresh performs live reputation lookups, which are
          # billable. See https://telnyx.com/pricing/numbers for current pricing.
          sig do
            params(
              enterprise_id: String,
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse
            )
          end
          def refresh(
            # The enterprise id. Lowercase UUID.
            enterprise_id,
            # Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
            # E.164 format. Reputation refreshes are subject to per-enterprise rate limits.
            phone_numbers:,
            request_options: {}
          )
          end

          # Get the ownership status of a phone number, when it was last checked, the
          # carrier recorded as its baseline, and the history of ownership events.
          sig do
            params(
              phone_number: String,
              enterprise_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Enterprises::Reputation::NumberRetrieveOwnershipResponse
            )
          end
          def retrieve_ownership(
            # Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
            # URL-encoded as `%2B` (e.g. `%2B19493253498`).
            phone_number,
            # The enterprise id. Lowercase UUID.
            enterprise_id:,
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
