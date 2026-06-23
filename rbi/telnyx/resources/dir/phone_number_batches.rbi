# typed: strong

module Telnyx
  module Resources
    class Dir
      # Phone numbers are submitted to Telnyx for vetting in batches. Batches group all
      # numbers added in a single request under the same Letter of Authorization.
      class PhoneNumberBatches
        # Get a single phone-number batch by id. The enterprise is resolved server-side
        # from the DIR id.
        sig do
          params(
            batch_id: String,
            dir_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse)
        end
        def retrieve(
          # The batch id (lowercase UUID).
          batch_id,
          # The DIR id. Lowercase UUID.
          dir_id:,
          request_options: {}
        )
        end

        # List the phone-number batches submitted under a DIR. The enterprise is resolved
        # server-side from the DIR id.
        sig do
          params(
            dir_id: String,
            filter_status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Dir::PhoneNumberBatch
            ]
          )
        end
        def list(
          # The DIR id. Lowercase UUID.
          dir_id,
          # Restrict to batches whose aggregate status equals this value.
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
