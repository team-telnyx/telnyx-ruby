# typed: strong

module Telnyx
  module Resources
    class Reputation
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      class Numbers
        # Convenience alias for
        # `GET /v2/enterprises/{enterprise_id}/reputation/numbers/{phone_number}`.
        sig do
          params(
            phone_number: String,
            fresh: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Reputation::NumberRetrieveResponse)
        end
        def retrieve(
          # Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
          # URL-encoded as `%2B` (e.g. `%2B19493253498`).
          phone_number,
          # When true, fetches fresh reputation data (incurs API cost). When false
          # (default), returns cached data.
          fresh: nil,
          request_options: {}
        )
        end

        # Convenience alias for `GET /v2/enterprises/{enterprise_id}/reputation/numbers`
        # that returns numbers across every enterprise you own. Useful when you don't want
        # to look up the enterprise id first.
        sig do
          params(
            filter_enterprise_id: String,
            filter_phone_number_contains: String,
            filter_phone_number_eq: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Reputation::NumberListResponse
            ]
          )
        end
        def list(
          # Filter by enterprise ID.
          filter_enterprise_id: nil,
          # Partial match on phone number. Must contain at least 5 digits.
          filter_phone_number_contains: nil,
          # Exact phone-number match (E.164).
          filter_phone_number_eq: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          request_options: {}
        )
        end

        # Convenience alias for
        # `DELETE /v2/enterprises/{enterprise_id}/reputation/numbers/{phone_number}`.
        sig do
          params(
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Phone number in E.164 format (`+1NPANXXXXXX` for US/CA). The leading `+` MUST be
          # URL-encoded as `%2B` (e.g. `%2B19493253498`).
          phone_number,
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
