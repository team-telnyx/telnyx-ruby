# typed: strong

module Telnyx
  module Resources
    class PhoneNumberBlocks
      class Jobs
        # Retrieves a phone number blocks job
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumberBlocks::JobRetrieveResponse)
        end
        def retrieve(
          # Identifies the Phone Number Blocks Job.
          id,
          request_options: {}
        )
        end

        # Lists the phone number blocks jobs
        sig do
          params(
            filter: Telnyx::PhoneNumberBlocks::JobListParams::Filter::OrHash,
            page: Telnyx::PhoneNumberBlocks::JobListParams::Page::OrHash,
            sort: Telnyx::PhoneNumberBlocks::JobListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[Telnyx::PhoneNumberBlocks::Job]
          )
        end
        def list(
          # Consolidated filter parameter (deepObject style). Originally: filter[type],
          # filter[status]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sort: nil,
          request_options: {}
        )
        end

        # Creates a new background job to delete all the phone numbers associated with the
        # given block. We will only consider the phone number block as deleted after all
        # phone numbers associated with it are removed, so multiple executions of this job
        # may be necessary in case some of the phone numbers present errors during the
        # deletion process.
        sig do
          params(
            phone_number_block_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockResponse
          )
        end
        def delete_phone_number_block(
          phone_number_block_id:,
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
