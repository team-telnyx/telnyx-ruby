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
              filter_phone_number_contains: String,
              filter_phone_number_eq: String,
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
            # Partial match on phone number. Must contain at least 5 digits.
            filter_phone_number_contains: nil,
            # Exact phone-number match (E.164).
            filter_phone_number_eq: nil,
            # 1-based page number. Out-of-range values return an empty page with correct meta.
            page_number: nil,
            # Items per page. Default 10. Maximum 250; values above are clamped to 250.
            page_size: nil,
            request_options: {}
          )
          end

          # Add up to 100 phone numbers to reputation monitoring on this enterprise. Each
          # must be in E.164 format (`+1NPANXXXXXX` for US/CA) and belong to your Telnyx
          # phone-number inventory.
          #
          # **Prerequisite**: reputation must already be enabled on this enterprise (see
          # `POST .../reputation`).
          #
          # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
          # for current pricing.
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

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
