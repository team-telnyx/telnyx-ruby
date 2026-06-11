# typed: strong

module Telnyx
  module Resources
    # Static reference values the API accepts: call reasons, document types, rejection
    # types.
    class CallReasons
      # Telnyx maintains a library of pre-vetted call-reason phrases (e.g. "Appointment
      # reminders", "Billing inquiries") that carry through DIR vetting smoothly. You
      # can use any string that fits your use case in `DirCreateRequest.call_reasons`,
      # but matching one of these reduces the chance the vetting team flags the phrasing
      # for clarification.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::CallReasonListResponse
          ]
        )
      end
      def list(
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Default `100` for this endpoint (the call-reason library is
        # small and most callers want the whole list in one call). Maximum 250; values
        # above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Check up to 10 candidate `call_reasons` strings against Telnyx's vetting
      # heuristics before sending them on a DIR create or update. The endpoint flags
      # strings that are likely to be rejected during vetting (too generic, banned
      # phrases, length issues, etc.) so you can fix them up front.
      sig do
        params(
          body: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallReasonValidateResponse)
      end
      def validate(
        # **Bare JSON array** of candidate call-reason strings (NOT an object - there is
        # no top-level `call_reasons` key on this endpoint). 1–10 strings, each ≤64
        # characters.
        body:,
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
