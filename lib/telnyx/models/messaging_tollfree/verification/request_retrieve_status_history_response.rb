# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#retrieve_status_history
        class RequestRetrieveStatusHistoryResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute records
          #   The records yielded by this request
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record>]
          required :records,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record] }

          # @!attribute total_records
          #   The total amount of records for these query parameters
          #
          #   @return [Integer]
          required :total_records, Integer

          # @!method initialize(records:, total_records:)
          #   A paginated response
          #
          #   @param records [Array<Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record>] The records yielded by this request
          #
          #   @param total_records [Integer] The total amount of records for these query parameters

          class Record < Telnyx::Internal::Type::BaseModel
            # @!attribute updated_at
            #   The timestamp at which this status change occurred
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!attribute verification_status
            #   Tollfree verification status
            #
            #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus]
            required :verification_status,
                     enum: -> { Telnyx::MessagingTollfree::Verification::TfVerificationStatus },
                     api_name: :verificationStatus

            # @!attribute reason
            #   An explanation of why this request has its current status.
            #
            #   @return [String, nil]
            optional :reason, String, nil?: true

            # @!method initialize(updated_at:, verification_status:, reason: nil)
            #   A single entry in the verification request status history
            #
            #   @param updated_at [Time] The timestamp at which this status change occurred
            #
            #   @param verification_status [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus] Tollfree verification status
            #
            #   @param reason [String, nil] An explanation of why this request has its current status.
          end
        end
      end
    end
  end
end
