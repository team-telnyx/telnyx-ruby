# typed: strong

module Telnyx
  module Resources
    class CustomerServiceRecords
      # Create a new customer service record for the provided phone number.
      sig do
        params(
          phone_number: String,
          additional_data:
            Telnyx::CustomerServiceRecordCreateParams::AdditionalData::OrHash,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CustomerServiceRecordCreateResponse)
      end
      def create(
        # A valid US phone number in E164 format.
        phone_number:,
        additional_data: nil,
        # Callback URL to receive webhook notifications.
        webhook_url: nil,
        request_options: {}
      )
      end

      # Get a specific customer service record.
      sig do
        params(
          customer_service_record_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CustomerServiceRecordRetrieveResponse)
      end
      def retrieve(
        # The ID of the customer service record
        customer_service_record_id,
        request_options: {}
      )
      end

      # List customer service records.
      sig do
        params(
          filter: Telnyx::CustomerServiceRecordListParams::Filter::OrHash,
          page: Telnyx::CustomerServiceRecordListParams::Page::OrHash,
          sort: Telnyx::CustomerServiceRecordListParams::Sort::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[Telnyx::CustomerServiceRecord]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
        # filter[status][in][], filter[created_at][lt], filter[created_at][gt]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sort: nil,
        request_options: {}
      )
      end

      # Verify the coverage for a list of phone numbers.
      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse
        )
      end
      def verify_phone_number_coverage(
        # The phone numbers list to be verified.
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
