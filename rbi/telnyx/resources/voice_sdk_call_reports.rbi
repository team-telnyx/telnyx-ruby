# typed: strong

module Telnyx
  module Resources
    # Retrieve raw Voice SDK call report stats payloads for WebRTC call
    # troubleshooting.
    class VoiceSDKCallReports
      # Returns raw call report stats JSON payloads stored for the authenticated user
      # and `call_id`. The user is derived from Telnyx authentication, not from request
      # parameters.
      sig do
        params(
          call_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          T::Array[Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem]
        )
      end
      def retrieve(
        # Call identifier used to retrieve reports owned by the authenticated user.
        call_id,
        request_options: {}
      )
      end

      # Returns paginated raw call report stats JSON payloads stored for the
      # authenticated user. The user is derived from Telnyx authentication, not from
      # request parameters.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceSDKCallReportListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::VoiceSDKCallReportListResponse
          ]
        )
      end
      def list(
        page_number: nil,
        page_size: nil,
        # Set the order of the results by creation date. `asc` and `created_at` sort
        # oldest reports first; `desc` and `-created_at` sort newest reports first. If not
        # given, results are sorted by creation date in descending order.
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
