# typed: strong

module Telnyx
  module Resources
    class Dir
      # Associate phone numbers with a verified DIR so calls from those numbers carry
      # the DIR's display identity.
      class PhoneNumbers
        # List the phone numbers registered under a DIR. The enterprise is resolved
        # server-side from the DIR id.
        sig do
          params(
            dir_id: String,
            page_number: Integer,
            page_size: Integer,
            status: Telnyx::Dir::PhoneNumberListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Dir::PhoneNumberListResponse
            ]
          )
        end
        def list(
          # The DIR id. Lowercase UUID.
          dir_id,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Filter by phone-number status.
          status: nil,
          request_options: {}
        )
        end

        # Register phone numbers under a DIR. The enterprise is resolved server-side from
        # the DIR id. Same body, failure modes, and batch semantics whichever path form
        # you use.
        #
        # **Pricing:** This is a billable action. See https://telnyx.com/pricing/numbers
        # for current pricing.
        sig do
          params(
            dir_id: String,
            documents:
              T::Array[Telnyx::Dir::PhoneNumberAddParams::Document::OrHash],
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Dir::PhoneNumberAddResponse)
        end
        def add(
          # The DIR id. Lowercase UUID.
          dir_id,
          # Supporting documents covering this batch. At least one entry with
          # `document_type: letter_of_authorization` is required - the LOA authorises Telnyx
          # to register these numbers under the DIR. Each `document_id` must come from the
          # Telnyx Documents API. Additional document types (e.g. business registration) may
          # be included alongside the LOA.
          documents:,
          # 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
          # `1`.
          phone_numbers:,
          request_options: {}
        )
        end

        # Deregister phone numbers from a DIR. The enterprise is resolved server-side from
        # the DIR id. Returns a partial-success envelope.
        sig do
          params(
            dir_id: String,
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Dir::PhoneNumberRemoveResponse)
        end
        def remove(
          # The DIR id. Lowercase UUID.
          dir_id,
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
